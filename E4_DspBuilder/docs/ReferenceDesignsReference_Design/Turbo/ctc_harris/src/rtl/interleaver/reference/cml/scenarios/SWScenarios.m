% File 3GPPScenarios
%
% This is a set of scenarios for the Coded Modulation Library.
%
% The simulations specified in this file are for the turbo code
% used by the 3GPP standard
%
% Last updated on July 4, 2006

% determine where your root directory is
load( 'CmlHome.mat' );

% determine where to store your files
base_name = '3GPP';
if ispc
    data_directory = strcat( cml_home, '\output\', base_name, '\' );
else
    data_directory = strcat( cml_home, '/output/', base_name, '/' );
end
if ~exist( data_directory, 'dir' )
    mkdir(data_directory);
end

% AWGN
record = 1;
sim_param(record).comment = '530 bits, SW-logMAP, 8/32';
sim_param(record).SNR = 0.0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 2;
sim_param(record).comment = '384 bits, SW-logMAP, 8/32';
sim_param(record).SNR = 0.0:0.25:2.0;
sim_param(record).framesize = 384;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'b-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 3;
sim_param(record).comment = '530 bits, SW-logMAP, 8/16';
sim_param(record).SNR = 0.0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 16;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 4;
sim_param(record).comment = '530 bits, SW-logMAP, 8/64';
sim_param(record).SNR = 0.0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 64;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 5;
sim_param(record).comment = '530 bits, SW-logMAP, 16/32';
sim_param(record).SNR = 0.0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 16;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 6;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 190 bits, log-MAP';
sim_param(record).SNR = 0:0.25:3.25;
sim_param(record).framesize = 190;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).max_iterations = 9;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'k-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-7; 
sim_param(record).max_frame_errors = 200*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 7;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 530 bits, max-log-MAP';
sim_param(record).SNR = 0:0.2:2.2;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 1;
sim_param(record).max_iterations = 10;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1000001*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 8;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 530 bits, constant-log-MAP';
sim_param(record).SNR = 0:0.2:2.2;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 2;
sim_param(record).max_iterations = 10;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'b-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 9;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 530 bits, log-MAP';
sim_param(record).SNR = 0:0.2:2.2;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).max_iterations = 10;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'k-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( '3gpp', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 10;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 640 bits, max-log-MAP';
sim_param(record).SNR = 0:0.2:2;
sim_param(record).framesize = 640;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 1;
sim_param(record).max_iterations = 10;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 11;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 640 bits, constant-log-MAP';
sim_param(record).SNR = 0:0.2:2;
sim_param(record).framesize = 640;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 2;
sim_param(record).max_iterations = 10;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'b-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 12;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 640 bits, log-MAP';
sim_param(record).SNR = 0:0.2:4;
sim_param(record).framesize = 640;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).max_iterations = 10;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'm-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-8; 
sim_param(record).max_frame_errors = 50*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 13;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 1060 bits, max-log-MAP';
sim_param(record).SNR = 0:0.15:1.8;
sim_param(record).framesize = 1060;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 1;
sim_param(record).max_iterations = 11;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 14;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 1060 bits, constant-log-MAP';
sim_param(record).SNR = 0:0.15:1.8;
sim_param(record).framesize = 1060;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 2;
sim_param(record).max_iterations = 11;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'b-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 15;
sim_param(record).comment = '3GPP-TC, BPSK, AWGN, 1060 bits, log-MAP';
sim_param(record).SNR = 0:0.15:1.8;
sim_param(record).framesize = 1060;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).max_iterations = 11;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'k-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).decoder_type ), '.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 16;
sim_param(record).comment = '5114 bits, SW-logMAP, 32/32';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 32;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'b-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 17;
sim_param(record).comment = '5114 bits, SW-logMAP, 16/32';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 16;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'g-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 18;
sim_param(record).comment = '5114 bits, SW-logMAP, 12/32';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 12;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'c-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 19;
sim_param(record).comment = '5114 bits, SW-logMAP, 4/32';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 4;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'm-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 20;
sim_param(record).comment = '5114 bits, SW-logMAP, 8/256';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 256;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'g-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 21;
sim_param(record).comment = '5114 bits, SW-logMAP, 8/128';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 128;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'c-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 22;
sim_param(record).comment = '5114 bits, SW-logMAP, 8/64';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 64;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'm-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 23;
sim_param(record).comment = '5114 bits, SW-logMAP, 8/16';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 16;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'y-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 24;
sim_param(record).comment = '5114 bits, SW-logMAP, 8/32';
sim_param(record).SNR = 0:0.1:1.0;
sim_param(record).framesize = 5114;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 11;
sim_param(record).plot_iterations = 8; %sim_param(record).max_iterations;
sim_param(record).linetype = 'r-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1
    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1
    1 1];
sim_param(record).pun_pattern2= [0 0
    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1
    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones(size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 102;
sim_param(record).comment = '530 bits, SW-logMAP, 8/32';
sim_param(record).SNR = 0.0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'k:';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 104;
sim_param(record).comment = '530 bits, SW-logMAP, 8/32';
sim_param(record).SNR = 0.0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'k-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 105;
sim_param(record).comment = '530 bits, SW-logMAP, 8/32 - 105';
sim_param(record).SNR = 0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 3;
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'k-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 106;
sim_param(record).comment = '530 bits, SW-S-maxlogMAP, 8/32 - 106';
sim_param(record).SNR = 0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 5; % Scaling max-logMAP
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'k:';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 107;
sim_param(record).comment = '530 bits, SW-maxlogMAP, 8/32 - 107';
sim_param(record).SNR = 0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 1; % max-logMAP
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'r:';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 108;
sim_param(record).comment = '530 bits, SW-S-maxlogMAP, 8/32 - 108';
sim_param(record).SNR = 0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 5; % Scaling max-logMAP
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'b:';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 1;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 109;
sim_param(record).comment = strcat('530 bits, SW-S-maxlogMAP, 8/32, 9 iter, ', int2str(record));
sim_param(record).SNR = 0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 5; % Scaling max-logMAP
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 9;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'b-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);

record = 110;
sim_param(record).comment = strcat('530 bits, SW-S-maxlogMAP, 8/32, ', int2str(record));
sim_param(record).SNR = 0:0.25:2.0;
sim_param(record).framesize = 530;
sim_param(record).channel = 'awgn';
sim_param(record).decoder_type = 5; % Scaling max-logMAP
sim_param(record).num_engines = 8;
sim_param(record).sldwin_size = 32;
sim_param(record).max_iterations = 8;
sim_param(record).plot_iterations = sim_param(record).max_iterations;
sim_param(record).linetype = 'b-';
sim_param(record).sim_type = 'coded';
sim_param(record).code_configuration = 1;
sim_param(record).SNR_type = 'Eb/No in dB';
sim_param(record).modulation = 'BPSK';
sim_param(record).mod_order = 2;
sim_param(record).bicm = 1;
sim_param(record).demod_type = 0; 
sim_param(record).legend = sim_param(record).comment;
sim_param(record).code_interleaver = ...
    strcat( 'CreateUmtsInterleaver(', int2str(sim_param(record).framesize ), ')' );
sim_param(record).g1 = [1 0 1 1;    1 1 0 1];
sim_param(record).g2 = sim_param(record).g1;
sim_param(record).nsc_flag1 = 0;
sim_param(record).nsc_flag2 = 0;
sim_param(record).pun_pattern1 = [1 1;    1 1];
sim_param(record).pun_pattern2= [0 0;    1 1 ];
sim_param(record).tail_pattern1 = [1 1 1;    1 1 1];
sim_param(record).tail_pattern2 = sim_param(record).tail_pattern1;
sim_param(record).filename = strcat( data_directory, ...
    strcat( 'sw', int2str(record), int2str(sim_param(record).framesize ), sim_param(record).channel, int2str( sim_param(record).num_engines ), int2str( sim_param(record).sldwin_size ),'.mat') );
sim_param(record).reset = 0;
sim_param(record).max_trials = 1e9*ones( size(sim_param(record).SNR) );
sim_param(record).minBER = 1e-6; 
sim_param(record).max_frame_errors = 40*ones( 1, length(sim_param(record).SNR) );
sim_param(record).save_rate = ceil(511400/sim_param(record).framesize);
