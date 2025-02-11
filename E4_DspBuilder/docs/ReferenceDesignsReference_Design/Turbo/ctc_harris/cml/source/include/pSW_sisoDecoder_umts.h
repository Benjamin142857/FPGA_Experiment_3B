/* File pSW_sisoDecoder_umts.h
   
   Description: General functions used to implement parallel sliding window SISO decoding.   

   Copyright (C) 2005-2006 Matthew C. Valenti

   Last updated on Mar. 14, 2006

   Function siso are part of the Iterative Solutions 
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
#ifndef INC_PSW_SISODECODER_UMTS_H
#define INC_PSW_SISODECODER_UMTS_H

#include <vector>
#include <fstream>

/* Class pSW_sisoDecoder_umts

  Description: Uses the (max)-log-MAP algorithm to perform soft-input, soft-output
  decoding of a convolutional code.

	Input parameters:
		out0[]		The output bits for each state if input is a 0 (generated by rsc_transit).
		state0[]	The next state if input is a 0 (generated by rsc_transit).
		out1[]		The output bits for each state if input is a 1 (generated by rsc_transit).
		state1[]	The next state if input is a 1 (generated by rsc_transit).
		input_c[]	The received signal in LLR-form. Must be in form r = 2*a*y/(sigma^2).
		input_u[]	The APP input.  This is the extrinsic output from the other decoder.
		KK			The constraint length of the convolutional code.
		nn      
		LL			The number of data bits.
		DecOpts		Decoder termination option = 0 for unterminated and = 1 for terminated.
		DecoderType	    = 0 Linear approximation to log-MAP correction function.
						= 1 For max-log-MAP algorithm (i.e. max*(x,y) = max(x,y) )
						= 2 For Constant-log-MAP algorithm
						= 3 For log-MAP, correction factor using piecewise linear approximation
						= 4 For log-MAP, correction factor uses C function calls
						= 5 Scaling max-log-MAP
		iteration         current number of half iteration

	Output parameters:
		output_c[]		The log-likelihood ratio of each data bit.
		output_u[]		The extrinsic information of each data bit.
  
*/

using namespace std;

static int iter = 0;

class pSW_sisoDecoder_umts
{
public:
	pSW_sisoDecoder_umts(double  *output_u,
				double  *output_c,
				double  *output_b,
				int    *out0, 
				int    *state0, 
				int    *out1, 
				int    *state1,
				float  *input_u,
				float  *input_c,
				int    KK,
				int    nn,
				int    LL,
				int	   DecoderType,
				int    num_engines,
				int    sldwin_size,
				double *alpha_beta,
				int	   iteration);

	~pSW_sisoDecoder_umts();
	void do_work();

protected:
	double max_star(double,double);

	void initialize_alpha_at_iteration_0();
	void initialize_beta_at_iteration_0();

	void initialize_alpha();
	void initialize_beta(int window_id);
	void update_beta_at_the_tail();

	void update_branch_metric(int k,int p);
	void compute_block_beta(int k, int p, int s);
	void compute_alpha_and_llr(int window_id);
	void compute_block_alpha(int k, int p);

	void compute_beta(int window_id);
	void update_block_beta(int k,int p, int s);
	void update_alpha_prime(int p);
	void normalize_beta(int p, int s);
	void update_alpha_beta_prev_for_next_iteration(int window_id);

	void compute_llr(int k, int p, int s);
	void compute_output(int k, int p);
	void do_window(int window_id);

private:
	pSW_sisoDecoder_umts() {} // disbale the constructor
	void dump_alpha_beta(int l);

private:
	double *output_u, *output_c, *output_b;
	int    *out0, *state0, *out1, *state1;
	float  *input_u, *input_c;
	int    nn, frame_size;
	int	   DecoderType;
	int    num_engines, sldwin_size;
	int	   iteration;

	int		num_windows, sub_frame_size, last_window_size;
	int		mm;			/* Memory of the RSC encoder. */
	int		max_states;	/* Number of states in the RSC encoder. */
	int		number_symbols; /* number of symbols */
	double *alpha_beta_prev;		/* Reverse trellis metrics for the entire trellis. */

	vector<int>		rev_out0, rev_state0, rev_out1, rev_state1;
	vector<vector<double> > metric_c;
	vector<vector<double> > beta;
	vector<vector<double> > alpha;
	vector<vector<double> > alpha_prime;
	vector<double> num_llr_u, den_llr_u;	/* Temporary variable used to compute LLR. */
	vector<vector<double> > num_llr_c, den_llr_c; /* Temp variable for LLR of code bits */
	vector<double> delta_num, delta_den;

	// Variables for parallel sliding windows
//	int num_of_parallel_windows;

	bool debug;
	int window_id;

	ofstream fout_debug;  
};

#endif // INC_PSW_SISODECODER_UMTS_H