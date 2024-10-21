module adder(a, b, c, cout, s, );
	input a, b, c, ;
	output cout, s, ;
	V_GlobIn V_a (.a(0), .q(R_a_pre), );  //level: -2
	V_GlobIn V_b (.a(0), .q(R_b_pre), );  //level: -2
	V_GlobIn V_c (.a(0), .q(R_c_pre), );  //level: -2
	V_xinI V_xinI (.a(0), .q(V_xinI_post), );  //level: -2
	V_xinII V_xinII (.a(0), .q(V_xinII_post), );  //level: -2
	V_din V_din (.a(0), .q(V_din_post), );  //level: -2
	R_GlobIn R_a (.a(R_a_pre), .q(a), );  //level: -1
	R_GlobIn R_b (.a(R_b_pre), .q(b), );  //level: -1
	R_GlobIn R_c (.a(R_c_pre), .q(c), );  //level: -1
	R_xinI R_xinI (.a(V_xinI_post), .q(wr_acI_0), );  //level: -1
	R_xinII R_xinII (.a(V_xinII_post), .q(wr_acII_0), );  //level: -1
	R_din R_din (.a(V_din_post), .q(wr_dc_0), );  //level: -1
	and_bb n_05_  (.a(b), .b(a), .q(n_01_), .xin(wr_acI_0), .xout(wr_acI_1), .din(wr_dc_0), .dout(wr_dc_1), );  //level: 0
	or_bb n_06_  (.a(b), .b(a), .q(n_02_), .xin(wr_acI_1), .xout(wr_acI_2), .din(wr_dc_1), .dout(wr_dc_2), );  //level: 0
	bfr bfr_9 (.a(c), .q(w_bfr_9), .xin(wr_acI_2), .xout(wr_acI_3), .din(wr_dc_2), .dout(wr_dc_3), );  //level: 0
	bfr bfr_11 (.a(c), .q(w_bfr_11), .xin(wr_acI_3), .xout(wr_acI_4), .din(wr_dc_3), .dout(wr_dc_4), );  //level: 0
	or_bb n_07_  (.a(n_01_), .b(n_02_), .q(n_03_), .xin(wr_acII_0), .xout(wr_acII_1), .din(wr_dc_5), .dout(wr_dc_4), );  //level: 1
	bfr bfr_0 (.a(n_01_), .q(w_bfr_0), .xin(wr_acII_1), .xout(wr_acII_2), .din(wr_dc_6), .dout(wr_dc_5), );  //level: 1
	bfr bfr_10 (.a(w_bfr_9), .q(w_bfr_10), .xin(wr_acII_2), .xout(wr_acII_3), .din(wr_dc_7), .dout(wr_dc_6), );  //level: 1
	bfr bfr_12 (.a(w_bfr_11), .q(w_bfr_12), .xin(wr_acII_3), .xout(wr_acII_4), .din(wr_dc_8), .dout(wr_dc_7), );  //level: 1
	and_bi n_08_  (.a(w_bfr_10), .b(n_03_), .q(n_04_), .xin(wr_acI_5), .xout(wr_acI_4), .din(wr_dc_8), .dout(wr_dc_9), );  //level: 2
	or_bi n_09_  (.a(w_bfr_12), .b(n_03_), .q(n_00_), .xin(wr_acI_6), .xout(wr_acI_5), .din(wr_dc_9), .dout(wr_dc_10), );  //level: 2
	bfr bfr_1 (.a(w_bfr_0), .q(w_bfr_1), .xin(wr_acI_7), .xout(wr_acI_6), .din(wr_dc_10), .dout(wr_dc_11), );  //level: 2
	and_bi n_10_  (.a(n_00_), .b(n_04_), .q(s), .xin(wr_acII_5), .xout(wr_acII_4), .din(wr_dc_12), .dout(wr_dc_11), );  //level: 3
	or_bb n_11_  (.a(n_04_), .b(w_bfr_1), .q(n_12_), .xin(wr_acII_6), .xout(wr_acII_5), .din(wr_dc_13), .dout(wr_dc_12), );  //level: 3
	bfr bbbb_ (.a(n_12_), .q(cout), .xin(wr_acI_7), .xout(wr_acI_8), .din(wr_dc_13), .dout(wr_dc_14), );  //level: 4
	bfr bfr_2 (.a(s), .q(w_bfr_2), .xin(wr_acI_8), .xout(wr_acI_9), .din(wr_dc_14), .dout(wr_dc_15), );  //level: 4
	bfr bfr_3 (.a(w_bfr_2), .q(w_bfr_3), .xin(wr_acII_6), .xout(wr_acII_7), .din(wr_dc_16), .dout(wr_dc_15), );  //level: 5
	bfr bfr_6 (.a(cout), .q(w_bfr_6), .xin(wr_acII_7), .xout(wr_acII_8), .din(wr_dc_17), .dout(wr_dc_16), );  //level: 5
	bfr bfr_4 (.a(w_bfr_3), .q(w_bfr_4), .xin(wr_acI_10), .xout(wr_acI_9), .din(wr_dc_17), .dout(wr_dc_18), );  //level: 6
	bfr bfr_7 (.a(w_bfr_6), .q(w_bfr_7), .xin(wr_acI_11), .xout(wr_acI_10), .din(wr_dc_18), .dout(wr_dc_19), );  //level: 6
	bfr bfr_5 (.a(w_bfr_4), .q(w_bfr_5), .xin(wr_acII_9), .xout(wr_acII_8), .din(wr_dc_20), .dout(wr_dc_19), );  //level: 7
	bfr bfr_8 (.a(w_bfr_7), .q(w_bfr_8), .xin(wr_acII_10), .xout(wr_acII_9), .din(wr_dc_21), .dout(wr_dc_20), );  //level: 7
	GlobOut cout (.a(w_bfr_8), .q(tail), );  //level: 8
	GlobOut s (.a(w_bfr_5), .q(tail), );  //level: 8
endmodule