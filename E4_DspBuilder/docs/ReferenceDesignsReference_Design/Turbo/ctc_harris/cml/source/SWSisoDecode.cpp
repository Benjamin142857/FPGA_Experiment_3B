/* file: SWSisoDecode.c

   Description: Soft-in/soft-out decoding algorithm for a convolutional code

   The calling syntax is:

      [output_u, output_c] = SWSisoDecode(input_u, input_c, g_encoder, [code_type], [dec_type] )

      output_u = LLR of the data bits
	  output_c = LLR of the code bits

      Required inputs:
	  input_u = APP of the data bits
	  input_c = APP of the code bits
	  g_encoder = generator matrix for convolutional code
	              (If RSC, then feedback polynomial is first)
	  
	  Optional inputs:
	  code_type = 0 for RSC outer code (default)
	            = 1 for NSC outer code
	  dec_type = the decoder type:
			= 0 For linear approximation to log-MAP (DEFAULT)
			= 1 For max-log-MAP algorithm (i.e. max*(x,y) = max(x,y) )
			= 2 For Constant-log-MAP algorithm
			= 3 For log-MAP, correction factor from small nonuniform table and interpolation
			= 4 For log-MAP, correction factor uses C function calls (slow)  
   
   Copyright (C) 2005-2006, Matthew C. Valenti

   Last updated on Jan. 11, 2006

   Function SWSisoDecode is part of the Iterative Solutions 
   Coded Modulation Library. The Iterative Solutions Coded Modulation 
   Library is free software; you can redistribute it and/or modify it 
   under the terms of the GNU Lesser General Public License as published 
   by the Free Software Foundation; either version 2.1 of the License, 
   or (at your option) any later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
  
   You should have received a copy of the GNU Lesser General Public
   License along with this library; if not, write to the Free Software
   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

*/

#include "pSW_sisoDecoder.h"

extern "C" {
/* library of functions */
#include <mex.h>
#include "convolutional.h"

/* Input Arguments */
#define INPUT_U     prhs[0]
#define INPUT_C     prhs[1]
#define GENENCODER  prhs[2]
#define CODETYPE    prhs[3]
#define DECTYPE     prhs[4]
#define NUM_SUBBLK  prhs[5]
#define SUBBLK_SIZE prhs[6]
#define BETA        prhs[7]
#define ITER        prhs[8]

/* Output Arguments */
#define OUTPUT_U    plhs[0]
#define OUTPUT_C    plhs[1] 
#define OUTPUT_B    plhs[2] 

/* main function that interfaces with MATLAB */
void mexFunction(
				 int            nlhs,
				 mxArray       *plhs[],
				 int            nrhs,
				 const mxArray *prhs[] )
{
	double	*input_u, *input_c, *input_beta, *g_array; /* input arrays */
	double  *output_u_p, *output_c_p, *output_b_p; /* output arrays */
	int      DataLength, CodeLength, i, j, index;
	int      subs[] = {1,1};
	int     *g_encoder;
	int		 nn, KK, mm, max_states, code_type, dec_type, iteration;
	double   elm;
	float   *input_u_float, *input_c_float;
	double  *output_u_float, *output_c_float, *output_b_float;
	int     *out0, *out1, *state0, *state1;

	/* Variables used for implemente sliding/parrael windows */
	int     num_subblocks;  /* number of parallel windows*/
	int     subblock_size;  /* the size of parallel windows*/
	double  *beta;
	int     BetaLength;

	/* default values */
	code_type = 0;
	dec_type  = 0;
	num_subblocks = 0;

	/* Check for proper number of arguments */
	if (nrhs < 3 ) {
		mexErrMsgTxt("Usage: [output_u, output_c] = SWSisoDecode(input_u, input_c, g_encoder, code_type, decoder_type )");
	} else {
		/* first two inputs are the LLRs of the data and code bits */
		input_u = mxGetPr(INPUT_U);	
		input_c = mxGetPr(INPUT_C);

		/* third input specifies the code */
		g_array = mxGetPr(GENENCODER);
		nn = mxGetM(GENENCODER);
		KK = mxGetN(GENENCODER);
		mm = KK - 1;	
		max_states = 1 << mm;			/* 2^mm */
		
		DataLength = mxGetN(INPUT_U); /* number of data bits */
		CodeLength = mxGetN(INPUT_C); /* number of code bits */

		/* make sure these agree */
		if ( CodeLength != nn*(DataLength+mm) ) 
			mexErrMsgTxt( "SWSisoDecode: Length of input_u and input_c don't agree" );

		/* convert the inputs into float */			
		input_u_float = (float *)calloc( DataLength, sizeof(float) );
		for (i=0;i<DataLength;i++)
			input_u_float[i] = (float)input_u[i];
		
		input_c_float = (float *)calloc( CodeLength, sizeof(float) );
		for (i=0;i<CodeLength;i++)
			input_c_float[i] = (float)input_c[i];

		/* Convert code polynomial to binary */
		g_encoder = (int *)calloc(nn, sizeof(int) );

		for (i = 0;i<nn;i++) {
			subs[0] = i;
			for (j=0;j<KK;j++) {
				subs[1] = j;
				index = mxCalcSingleSubscript(GENENCODER, 2, subs);
				elm = g_array[index];
				if (elm != 0) {
//					g_encoder[i] = g_encoder[i] + (int) pow(2,(KK-j-1)); 
					g_encoder[i] = g_encoder[i] + (1 << (KK-j-1)); 
				}
			}
			/* mexPrintf("   g_encoder[%d] = %o\n", i, g_encoder[i] ); */
		}
	} 

	if (nrhs > 3 ) {
		/* 4th input (optional) is the type of code */
		code_type   = (int) *mxGetPr(CODETYPE);
	}
	
	if (nrhs > 4 ) {
		/* 5th input (optional) is the decoder type */
		dec_type  = (int) *mxGetPr(DECTYPE);
	}

	if (nrhs > 5 ) {
		/* 6th input is the num_subblockse */
		num_subblocks  = (int) *mxGetPr(NUM_SUBBLK);
	}

	if (nrhs > 6 ) {
		/* 7th input  is the subblock_size */
		subblock_size  = (int) *mxGetPr(SUBBLK_SIZE);
	}

	if (nrhs > 7 ) {
		/* 8th input is the beta values */
		input_beta  = mxGetPr(BETA);
		BetaLength = mxGetN(BETA);
	}

	if (nrhs > 8 ) {
		/* 9th input is the iteration */
		iteration  = (int) *mxGetPr(ITER) - 1;
	}

	if (nlhs  != 3 || nrhs < 8) {
		mexErrMsgTxt("Usage: [output_u, output_c, output_beta] = SWSisoDecode(input_u, input_c, g_encoder, code_type, decoder_type, num_subblocks, subblock_size, beta )" );
	} 

	/* the outputs */		
	OUTPUT_U = mxCreateDoubleMatrix(1, DataLength, mxREAL );
	output_u_p = mxGetPr(OUTPUT_U);	
	output_u_float = (double *)calloc( DataLength, sizeof(double) );
	
	OUTPUT_C = mxCreateDoubleMatrix(1, CodeLength, mxREAL );
	output_c_p = mxGetPr(OUTPUT_C);	
	output_c_float = (double *)calloc( CodeLength, sizeof(double) );

	OUTPUT_B = mxCreateDoubleMatrix(1, BetaLength, mxREAL );
	output_b_p = mxGetPr(OUTPUT_B);
	output_b_float = (double *)calloc( BetaLength, sizeof(double) );
	

	/* create appropriate transition matrices */
	out0 = (int *)calloc( max_states, sizeof(int) );
	out1 = (int *)calloc( max_states, sizeof(int) );
	state0 = (int *)calloc( max_states, sizeof(int) );
	state1 = (int *)calloc( max_states, sizeof(int) );
	beta = (double *)calloc( max_states*BetaLength, sizeof(double) );

	for (j=0;j<BetaLength;j++) {
		beta[j] = input_beta[j];
	}

	if ( code_type ) {
		nsc_transit( out0, state0, 0, g_encoder, KK, nn );
		nsc_transit( out1, state1, 1, g_encoder, KK, nn );
	} else {
		rsc_transit( out0, state0, 0, g_encoder, KK, nn );
		rsc_transit( out1, state1, 1, g_encoder, KK, nn );
	}

	/* Run the Sliding window SISO algorithm */
//	sliding_window_siso( output_u_float, output_c_float, out0, state0, out1, state1,
//		input_u_float, input_c_float, KK, nn, DataLength, dec_type, num_subblocks, subblock_size, beta );

	pSW_sisoDecoder siso ( output_u_float, output_c_float, output_b_float, out0, state0, out1, state1,
		input_u_float, input_c_float, KK, nn, DataLength, dec_type, num_subblocks, subblock_size, beta, iteration);

	siso.do_work();

	/* cast to outputs */
	for (j=0;j<DataLength;j++) {
		output_u_p[j] = output_u_float[j];
	}

	for (j=0;j<CodeLength;j++) {
		output_c_p[j] = output_c_float[j];
	}

	for (j=0;j<BetaLength;j++) {
		output_b_p[j] = output_b_float[j];
	}
	
		
	/* Clean up memory */
	free( out0 );
	free( out1 );
	if ( beta != NULL )
		free( beta );
	free( state0 );
	free( state1 );
	free( g_encoder );
	free( input_u_float );
	free( input_c_float );
	free( output_u_float );
	free( output_c_float );
	free( output_b_float );

	return;
}
} // end of extern "C"