// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Mar 25 15:01:39 2025
// Host        : Shivam-Shukla running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Sem_6/AELD/Labs/Lab_6_Vivado/Lab_6_Vivado.srcs/sources_1/bd/design_1/ip/design_1_demo_find_0_0/design_1_demo_find_0_0_sim_netlist.v
// Design      : design_1_demo_find_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_demo_find_0_0,demo_find,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "demo_find,Vivado 2019.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_demo_find_0_0
   (ap_clk,
    ap_rst_n,
    val_r_TVALID,
    val_r_TREADY,
    val_r_TDATA,
    in_vec_TVALID,
    in_vec_TREADY,
    in_vec_TDATA,
    in_vec_TLAST,
    out_vec_TVALID,
    out_vec_TREADY,
    out_vec_TDATA,
    out_vec_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF val_r:in_vec:out_vec, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 val_r TVALID" *) input val_r_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 val_r TREADY" *) output val_r_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 val_r TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME val_r, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [7:0]val_r_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_vec TVALID" *) input in_vec_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_vec TREADY" *) output in_vec_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_vec TDATA" *) input [31:0]in_vec_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_vec TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_vec, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]in_vec_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_vec TVALID" *) output out_vec_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_vec TREADY" *) input out_vec_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_vec TDATA" *) output [31:0]out_vec_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_vec TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_vec, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output [0:0]out_vec_TLAST;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]in_vec_TDATA;
  wire [0:0]in_vec_TLAST;
  wire in_vec_TREADY;
  wire in_vec_TVALID;
  wire [31:0]out_vec_TDATA;
  wire [0:0]out_vec_TLAST;
  wire out_vec_TREADY;
  wire out_vec_TVALID;
  wire [7:0]val_r_TDATA;
  wire val_r_TREADY;
  wire val_r_TVALID;

  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state2 = "3'b010" *) 
  (* ap_ST_fsm_state3 = "3'b100" *) 
  design_1_demo_find_0_0_demo_find inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in_vec_TDATA(in_vec_TDATA),
        .in_vec_TLAST(in_vec_TLAST),
        .in_vec_TREADY(in_vec_TREADY),
        .in_vec_TVALID(in_vec_TVALID),
        .out_vec_TDATA(out_vec_TDATA),
        .out_vec_TLAST(out_vec_TLAST),
        .out_vec_TREADY(out_vec_TREADY),
        .out_vec_TVALID(out_vec_TVALID),
        .val_r_TDATA(val_r_TDATA),
        .val_r_TREADY(val_r_TREADY),
        .val_r_TVALID(val_r_TVALID));
endmodule

(* ORIG_REF_NAME = "demo_find" *) (* ap_ST_fsm_state1 = "3'b001" *) (* ap_ST_fsm_state2 = "3'b010" *) 
(* ap_ST_fsm_state3 = "3'b100" *) (* hls_module = "yes" *) 
module design_1_demo_find_0_0_demo_find
   (ap_clk,
    ap_rst_n,
    val_r_TDATA,
    val_r_TVALID,
    val_r_TREADY,
    in_vec_TDATA,
    in_vec_TVALID,
    in_vec_TREADY,
    in_vec_TLAST,
    out_vec_TDATA,
    out_vec_TVALID,
    out_vec_TREADY,
    out_vec_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [7:0]val_r_TDATA;
  input val_r_TVALID;
  output val_r_TREADY;
  input [31:0]in_vec_TDATA;
  input in_vec_TVALID;
  output in_vec_TREADY;
  input [0:0]in_vec_TLAST;
  output [31:0]out_vec_TDATA;
  output out_vec_TVALID;
  input out_vec_TREADY;
  output [0:0]out_vec_TLAST;

  wire \<const0> ;
  wire \ap_CS_fsm[1]_i_2_n_1 ;
  wire \ap_CS_fsm_reg_n_1_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire [2:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire i_0_reg_72;
  wire \i_0_reg_72_reg_n_1_[0] ;
  wire \i_0_reg_72_reg_n_1_[1] ;
  wire \i_0_reg_72_reg_n_1_[2] ;
  wire \i_0_reg_72_reg_n_1_[3] ;
  wire \i_0_reg_72_reg_n_1_[4] ;
  wire \i_0_reg_72_reg_n_1_[5] ;
  wire [5:0]i_fu_93_p2;
  wire [5:0]i_reg_128;
  wire i_reg_1280;
  wire \i_reg_128[5]_i_3_n_1 ;
  wire \i_reg_128[5]_i_4_n_1 ;
  wire [31:0]in_vec_TDATA;
  wire in_vec_TREADY;
  wire in_vec_TVALID;
  wire in_vec_V_data_V_0_ack_in;
  wire in_vec_V_data_V_0_load_A;
  wire in_vec_V_data_V_0_load_B;
  wire [31:0]in_vec_V_data_V_0_payload_A;
  wire [31:0]in_vec_V_data_V_0_payload_B;
  wire in_vec_V_data_V_0_sel;
  wire in_vec_V_data_V_0_sel_rd_i_1_n_1;
  wire in_vec_V_data_V_0_sel_wr;
  wire in_vec_V_data_V_0_sel_wr_i_1_n_1;
  wire [1:1]in_vec_V_data_V_0_state;
  wire \in_vec_V_data_V_0_state[0]_i_1_n_1 ;
  wire \in_vec_V_data_V_0_state[0]_i_2_n_1 ;
  wire \in_vec_V_data_V_0_state[1]_i_2_n_1 ;
  wire \in_vec_V_data_V_0_state[1]_i_3_n_1 ;
  wire \in_vec_V_data_V_0_state_reg_n_1_[0] ;
  wire [1:1]in_vec_V_last_V_0_state;
  wire \in_vec_V_last_V_0_state[0]_i_1_n_1 ;
  wire \in_vec_V_last_V_0_state_reg_n_1_[0] ;
  wire [0:0]\^out_vec_TDATA ;
  wire [0:0]out_vec_TLAST;
  wire out_vec_TREADY;
  wire out_vec_TVALID;
  wire out_vec_V_data_V_1_ack_in;
  wire [0:0]out_vec_V_data_V_1_payload_A;
  wire \out_vec_V_data_V_1_payload_A[0]_i_10_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_11_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_12_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_13_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_14_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_15_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_16_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_17_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_18_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_19_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_1_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_20_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_21_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_22_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_23_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_24_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_25_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_26_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_27_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_4_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_5_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_6_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_8_n_1 ;
  wire \out_vec_V_data_V_1_payload_A[0]_i_9_n_1 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_2_n_3 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_2_n_4 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_1 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_2 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_3 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_4 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_1 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_2 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_3 ;
  wire \out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_4 ;
  wire [0:0]out_vec_V_data_V_1_payload_B;
  wire \out_vec_V_data_V_1_payload_B[0]_i_1_n_1 ;
  wire out_vec_V_data_V_1_sel;
  wire out_vec_V_data_V_1_sel_rd_i_1_n_1;
  wire out_vec_V_data_V_1_sel_wr;
  wire out_vec_V_data_V_1_sel_wr017_out;
  wire out_vec_V_data_V_1_sel_wr_i_1_n_1;
  wire [1:1]out_vec_V_data_V_1_state;
  wire \out_vec_V_data_V_1_state[0]_i_1_n_1 ;
  wire \out_vec_V_data_V_1_state[0]_i_2_n_1 ;
  wire \out_vec_V_data_V_1_state_reg_n_1_[0] ;
  wire out_vec_V_last_V_1_ack_in;
  wire out_vec_V_last_V_1_payload_A;
  wire \out_vec_V_last_V_1_payload_A[0]_i_1_n_1 ;
  wire out_vec_V_last_V_1_payload_B;
  wire \out_vec_V_last_V_1_payload_B[0]_i_1_n_1 ;
  wire out_vec_V_last_V_1_sel;
  wire out_vec_V_last_V_1_sel_rd_i_1_n_1;
  wire out_vec_V_last_V_1_sel_wr;
  wire out_vec_V_last_V_1_sel_wr_i_1_n_1;
  wire out_vec_V_last_V_1_sel_wr_i_2_n_1;
  wire [1:1]out_vec_V_last_V_1_state;
  wire \out_vec_V_last_V_1_state[0]_i_1_n_1 ;
  wire \out_vec_V_last_V_1_state[0]_i_2_n_1 ;
  wire \out_vec_V_last_V_1_state[0]_i_3_n_1 ;
  wire \out_vec_V_last_V_1_state[0]_i_4_n_1 ;
  wire \out_vec_V_last_V_1_state[0]_i_5_n_1 ;
  wire p_41_in;
  wire [7:0]sext_ln7_fu_83_p1;
  wire [7:0]sext_ln7_reg_120;
  wire tmp_data_V_1_fu_108_p1;
  wire tmp_last_V_fu_113_p2;
  wire val_r_0_load_A;
  wire val_r_0_load_B;
  wire [7:0]val_r_0_payload_A;
  wire [7:0]val_r_0_payload_B;
  wire val_r_0_sel;
  wire val_r_0_sel_rd_i_1_n_1;
  wire val_r_0_sel_wr;
  wire val_r_0_sel_wr_i_1_n_1;
  wire [1:1]val_r_0_state;
  wire \val_r_0_state[0]_i_1_n_1 ;
  wire \val_r_0_state_reg_n_1_[0] ;
  wire [7:0]val_r_TDATA;
  wire val_r_TREADY;
  wire val_r_TVALID;
  wire [3:3]\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_7_O_UNCONNECTED ;

  assign out_vec_TDATA[31] = \<const0> ;
  assign out_vec_TDATA[30] = \<const0> ;
  assign out_vec_TDATA[29] = \<const0> ;
  assign out_vec_TDATA[28] = \<const0> ;
  assign out_vec_TDATA[27] = \<const0> ;
  assign out_vec_TDATA[26] = \<const0> ;
  assign out_vec_TDATA[25] = \<const0> ;
  assign out_vec_TDATA[24] = \<const0> ;
  assign out_vec_TDATA[23] = \<const0> ;
  assign out_vec_TDATA[22] = \<const0> ;
  assign out_vec_TDATA[21] = \<const0> ;
  assign out_vec_TDATA[20] = \<const0> ;
  assign out_vec_TDATA[19] = \<const0> ;
  assign out_vec_TDATA[18] = \<const0> ;
  assign out_vec_TDATA[17] = \<const0> ;
  assign out_vec_TDATA[16] = \<const0> ;
  assign out_vec_TDATA[15] = \<const0> ;
  assign out_vec_TDATA[14] = \<const0> ;
  assign out_vec_TDATA[13] = \<const0> ;
  assign out_vec_TDATA[12] = \<const0> ;
  assign out_vec_TDATA[11] = \<const0> ;
  assign out_vec_TDATA[10] = \<const0> ;
  assign out_vec_TDATA[9] = \<const0> ;
  assign out_vec_TDATA[8] = \<const0> ;
  assign out_vec_TDATA[7] = \<const0> ;
  assign out_vec_TDATA[6] = \<const0> ;
  assign out_vec_TDATA[5] = \<const0> ;
  assign out_vec_TDATA[4] = \<const0> ;
  assign out_vec_TDATA[3] = \<const0> ;
  assign out_vec_TDATA[2] = \<const0> ;
  assign out_vec_TDATA[1] = \<const0> ;
  assign out_vec_TDATA[0] = \^out_vec_TDATA [0];
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\val_r_0_state_reg_n_1_[0] ),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(\i_reg_128[5]_i_3_n_1 ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF088)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I1(ap_CS_fsm_state2),
        .I2(ap_CS_fsm_state3),
        .I3(out_vec_V_data_V_1_ack_in),
        .I4(\ap_CS_fsm[1]_i_2_n_1 ),
        .I5(p_41_in),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h77F7F7F700000000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\out_vec_V_last_V_1_state[0]_i_5_n_1 ),
        .I1(\out_vec_V_last_V_1_state[0]_i_3_n_1 ),
        .I2(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .I3(out_vec_V_data_V_1_ack_in),
        .I4(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .I5(ap_CS_fsm_state2),
        .O(\ap_CS_fsm[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(out_vec_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state3),
        .I2(out_vec_V_data_V_1_sel_wr017_out),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_1_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h0888)) 
    \i_0_reg_72[5]_i_1 
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(\val_r_0_state_reg_n_1_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(out_vec_V_data_V_1_ack_in),
        .O(i_0_reg_72));
  LUT2 #(
    .INIT(4'h8)) 
    \i_0_reg_72[5]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(out_vec_V_data_V_1_ack_in),
        .O(ap_NS_fsm1));
  FDRE \i_0_reg_72_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_128[0]),
        .Q(\i_0_reg_72_reg_n_1_[0] ),
        .R(i_0_reg_72));
  FDRE \i_0_reg_72_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_128[1]),
        .Q(\i_0_reg_72_reg_n_1_[1] ),
        .R(i_0_reg_72));
  FDRE \i_0_reg_72_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_128[2]),
        .Q(\i_0_reg_72_reg_n_1_[2] ),
        .R(i_0_reg_72));
  FDRE \i_0_reg_72_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_128[3]),
        .Q(\i_0_reg_72_reg_n_1_[3] ),
        .R(i_0_reg_72));
  FDRE \i_0_reg_72_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_128[4]),
        .Q(\i_0_reg_72_reg_n_1_[4] ),
        .R(i_0_reg_72));
  FDRE \i_0_reg_72_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_128[5]),
        .Q(\i_0_reg_72_reg_n_1_[5] ),
        .R(i_0_reg_72));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_128[0]_i_1 
       (.I0(\i_0_reg_72_reg_n_1_[0] ),
        .O(i_fu_93_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_128[1]_i_1 
       (.I0(\i_0_reg_72_reg_n_1_[0] ),
        .I1(\i_0_reg_72_reg_n_1_[1] ),
        .O(i_fu_93_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_reg_128[2]_i_1 
       (.I0(\i_0_reg_72_reg_n_1_[1] ),
        .I1(\i_0_reg_72_reg_n_1_[0] ),
        .I2(\i_0_reg_72_reg_n_1_[2] ),
        .O(i_fu_93_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_reg_128[3]_i_1 
       (.I0(\i_0_reg_72_reg_n_1_[2] ),
        .I1(\i_0_reg_72_reg_n_1_[0] ),
        .I2(\i_0_reg_72_reg_n_1_[1] ),
        .I3(\i_0_reg_72_reg_n_1_[3] ),
        .O(i_fu_93_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i_reg_128[4]_i_1 
       (.I0(\i_0_reg_72_reg_n_1_[3] ),
        .I1(\i_0_reg_72_reg_n_1_[1] ),
        .I2(\i_0_reg_72_reg_n_1_[0] ),
        .I3(\i_0_reg_72_reg_n_1_[2] ),
        .I4(\i_0_reg_72_reg_n_1_[4] ),
        .O(i_fu_93_p2[4]));
  LUT6 #(
    .INIT(64'hBBBBAAABABABAAAB)) 
    \i_reg_128[5]_i_1 
       (.I0(\i_reg_128[5]_i_3_n_1 ),
        .I1(\out_vec_V_last_V_1_state[0]_i_4_n_1 ),
        .I2(out_vec_TVALID),
        .I3(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I4(out_vec_TREADY),
        .I5(out_vec_V_last_V_1_ack_in),
        .O(i_reg_1280));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \i_reg_128[5]_i_2 
       (.I0(\i_0_reg_72_reg_n_1_[4] ),
        .I1(\i_0_reg_72_reg_n_1_[5] ),
        .I2(\i_0_reg_72_reg_n_1_[2] ),
        .I3(\i_0_reg_72_reg_n_1_[0] ),
        .I4(\i_0_reg_72_reg_n_1_[1] ),
        .I5(\i_0_reg_72_reg_n_1_[3] ),
        .O(i_fu_93_p2[5]));
  LUT3 #(
    .INIT(8'h40)) 
    \i_reg_128[5]_i_3 
       (.I0(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .I1(ap_CS_fsm_state2),
        .I2(\i_reg_128[5]_i_4_n_1 ),
        .O(\i_reg_128[5]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDD050D05)) 
    \i_reg_128[5]_i_4 
       (.I0(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I1(out_vec_V_data_V_1_ack_in),
        .I2(out_vec_TVALID),
        .I3(out_vec_TREADY),
        .I4(out_vec_V_last_V_1_ack_in),
        .O(\i_reg_128[5]_i_4_n_1 ));
  FDRE \i_reg_128_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_1280),
        .D(i_fu_93_p2[0]),
        .Q(i_reg_128[0]),
        .R(1'b0));
  FDRE \i_reg_128_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_1280),
        .D(i_fu_93_p2[1]),
        .Q(i_reg_128[1]),
        .R(1'b0));
  FDRE \i_reg_128_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_1280),
        .D(i_fu_93_p2[2]),
        .Q(i_reg_128[2]),
        .R(1'b0));
  FDRE \i_reg_128_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_1280),
        .D(i_fu_93_p2[3]),
        .Q(i_reg_128[3]),
        .R(1'b0));
  FDRE \i_reg_128_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_1280),
        .D(i_fu_93_p2[4]),
        .Q(i_reg_128[4]),
        .R(1'b0));
  FDRE \i_reg_128_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_1280),
        .D(i_fu_93_p2[5]),
        .Q(i_reg_128[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0D)) 
    \in_vec_V_data_V_0_payload_A[31]_i_1 
       (.I0(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .I1(in_vec_V_data_V_0_ack_in),
        .I2(in_vec_V_data_V_0_sel_wr),
        .O(in_vec_V_data_V_0_load_A));
  FDRE \in_vec_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[0]),
        .Q(in_vec_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[10]),
        .Q(in_vec_V_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[11]),
        .Q(in_vec_V_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[12]),
        .Q(in_vec_V_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[13]),
        .Q(in_vec_V_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[14]),
        .Q(in_vec_V_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[15]),
        .Q(in_vec_V_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[16]),
        .Q(in_vec_V_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[17]),
        .Q(in_vec_V_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[18]),
        .Q(in_vec_V_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[19]),
        .Q(in_vec_V_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[1]),
        .Q(in_vec_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[20]),
        .Q(in_vec_V_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[21]),
        .Q(in_vec_V_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[22]),
        .Q(in_vec_V_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[23]),
        .Q(in_vec_V_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[24]),
        .Q(in_vec_V_data_V_0_payload_A[24]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[25]),
        .Q(in_vec_V_data_V_0_payload_A[25]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[26]),
        .Q(in_vec_V_data_V_0_payload_A[26]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[27]),
        .Q(in_vec_V_data_V_0_payload_A[27]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[28]),
        .Q(in_vec_V_data_V_0_payload_A[28]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[29]),
        .Q(in_vec_V_data_V_0_payload_A[29]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[2]),
        .Q(in_vec_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[30]),
        .Q(in_vec_V_data_V_0_payload_A[30]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[31]),
        .Q(in_vec_V_data_V_0_payload_A[31]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[3]),
        .Q(in_vec_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[4]),
        .Q(in_vec_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[5]),
        .Q(in_vec_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[6]),
        .Q(in_vec_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[7]),
        .Q(in_vec_V_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[8]),
        .Q(in_vec_V_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_A),
        .D(in_vec_TDATA[9]),
        .Q(in_vec_V_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \in_vec_V_data_V_0_payload_B[31]_i_1 
       (.I0(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .I1(in_vec_V_data_V_0_ack_in),
        .I2(in_vec_V_data_V_0_sel_wr),
        .O(in_vec_V_data_V_0_load_B));
  FDRE \in_vec_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[0]),
        .Q(in_vec_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[10]),
        .Q(in_vec_V_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[11]),
        .Q(in_vec_V_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[12]),
        .Q(in_vec_V_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[13]),
        .Q(in_vec_V_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[14]),
        .Q(in_vec_V_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[15]),
        .Q(in_vec_V_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[16]),
        .Q(in_vec_V_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[17]),
        .Q(in_vec_V_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[18]),
        .Q(in_vec_V_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[19]),
        .Q(in_vec_V_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[1]),
        .Q(in_vec_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[20]),
        .Q(in_vec_V_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[21]),
        .Q(in_vec_V_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[22]),
        .Q(in_vec_V_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[23]),
        .Q(in_vec_V_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[24]),
        .Q(in_vec_V_data_V_0_payload_B[24]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[25]),
        .Q(in_vec_V_data_V_0_payload_B[25]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[26]),
        .Q(in_vec_V_data_V_0_payload_B[26]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[27]),
        .Q(in_vec_V_data_V_0_payload_B[27]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[28]),
        .Q(in_vec_V_data_V_0_payload_B[28]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[29]),
        .Q(in_vec_V_data_V_0_payload_B[29]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[2]),
        .Q(in_vec_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[30]),
        .Q(in_vec_V_data_V_0_payload_B[30]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[31]),
        .Q(in_vec_V_data_V_0_payload_B[31]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[3]),
        .Q(in_vec_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[4]),
        .Q(in_vec_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[5]),
        .Q(in_vec_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[6]),
        .Q(in_vec_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[7]),
        .Q(in_vec_V_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[8]),
        .Q(in_vec_V_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \in_vec_V_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(in_vec_V_data_V_0_load_B),
        .D(in_vec_TDATA[9]),
        .Q(in_vec_V_data_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    in_vec_V_data_V_0_sel_rd_i_1
       (.I0(out_vec_V_data_V_1_sel_wr017_out),
        .I1(in_vec_V_data_V_0_sel),
        .O(in_vec_V_data_V_0_sel_rd_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    in_vec_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in_vec_V_data_V_0_sel_rd_i_1_n_1),
        .Q(in_vec_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    in_vec_V_data_V_0_sel_wr_i_1
       (.I0(in_vec_V_data_V_0_ack_in),
        .I1(in_vec_TVALID),
        .I2(in_vec_V_data_V_0_sel_wr),
        .O(in_vec_V_data_V_0_sel_wr_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    in_vec_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in_vec_V_data_V_0_sel_wr_i_1_n_1),
        .Q(in_vec_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFB000088880000)) 
    \in_vec_V_data_V_0_state[0]_i_1 
       (.I0(in_vec_TVALID),
        .I1(in_vec_V_data_V_0_ack_in),
        .I2(\in_vec_V_data_V_0_state[1]_i_3_n_1 ),
        .I3(\in_vec_V_data_V_0_state[0]_i_2_n_1 ),
        .I4(ap_rst_n),
        .I5(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .O(\in_vec_V_data_V_0_state[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5F44FFFF)) 
    \in_vec_V_data_V_0_state[0]_i_2 
       (.I0(out_vec_TREADY),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I2(out_vec_V_last_V_1_ack_in),
        .I3(out_vec_TVALID),
        .I4(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .O(\in_vec_V_data_V_0_state[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h5D5D5D5DFF5D5D5D)) 
    \in_vec_V_data_V_0_state[1]_i_1 
       (.I0(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .I1(in_vec_V_data_V_0_ack_in),
        .I2(in_vec_TVALID),
        .I3(\in_vec_V_data_V_0_state[1]_i_2_n_1 ),
        .I4(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .I5(\in_vec_V_data_V_0_state[1]_i_3_n_1 ),
        .O(in_vec_V_data_V_0_state));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF151)) 
    \in_vec_V_data_V_0_state[1]_i_2 
       (.I0(out_vec_TVALID),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I2(out_vec_TREADY),
        .I3(out_vec_V_last_V_1_ack_in),
        .O(\in_vec_V_data_V_0_state[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \in_vec_V_data_V_0_state[1]_i_3 
       (.I0(out_vec_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .O(\in_vec_V_data_V_0_state[1]_i_3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_vec_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in_vec_V_data_V_0_state[0]_i_1_n_1 ),
        .Q(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_vec_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(in_vec_V_data_V_0_state),
        .Q(in_vec_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFF00F000E000F000)) 
    \in_vec_V_last_V_0_state[0]_i_1 
       (.I0(\out_vec_V_last_V_1_state[0]_i_4_n_1 ),
        .I1(\in_vec_V_data_V_0_state[0]_i_2_n_1 ),
        .I2(\in_vec_V_last_V_0_state_reg_n_1_[0] ),
        .I3(ap_rst_n),
        .I4(in_vec_TREADY),
        .I5(in_vec_TVALID),
        .O(\in_vec_V_last_V_0_state[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \in_vec_V_last_V_0_state[1]_i_1 
       (.I0(\in_vec_V_last_V_0_state_reg_n_1_[0] ),
        .I1(in_vec_TREADY),
        .I2(in_vec_TVALID),
        .I3(out_vec_V_data_V_1_sel_wr017_out),
        .O(in_vec_V_last_V_0_state));
  LUT6 #(
    .INIT(64'h5501110100000000)) 
    \in_vec_V_last_V_0_state[1]_i_2 
       (.I0(\out_vec_V_last_V_1_state[0]_i_4_n_1 ),
        .I1(out_vec_TVALID),
        .I2(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I3(out_vec_TREADY),
        .I4(out_vec_V_last_V_1_ack_in),
        .I5(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .O(out_vec_V_data_V_1_sel_wr017_out));
  FDRE #(
    .INIT(1'b0)) 
    \in_vec_V_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in_vec_V_last_V_0_state[0]_i_1_n_1 ),
        .Q(\in_vec_V_last_V_0_state_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_vec_V_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(in_vec_V_last_V_0_state),
        .Q(in_vec_TREADY),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_vec_TDATA[0]_INST_0 
       (.I0(out_vec_V_data_V_1_payload_B),
        .I1(out_vec_V_data_V_1_payload_A),
        .I2(out_vec_V_data_V_1_sel),
        .O(\^out_vec_TDATA ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_vec_TLAST[0]_INST_0 
       (.I0(out_vec_V_last_V_1_payload_B),
        .I1(out_vec_V_last_V_1_sel),
        .I2(out_vec_V_last_V_1_payload_A),
        .O(out_vec_TLAST));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \out_vec_V_data_V_1_payload_A[0]_i_1 
       (.I0(tmp_data_V_1_fu_108_p1),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I2(out_vec_V_data_V_1_ack_in),
        .I3(out_vec_V_data_V_1_sel_wr),
        .I4(out_vec_V_data_V_1_payload_A),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_10 
       (.I0(in_vec_V_data_V_0_payload_B[15]),
        .I1(in_vec_V_data_V_0_payload_A[15]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[7]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_20_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_11 
       (.I0(in_vec_V_data_V_0_payload_B[12]),
        .I1(in_vec_V_data_V_0_payload_A[12]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[7]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_21_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_12 
       (.I0(in_vec_V_data_V_0_payload_B[28]),
        .I1(in_vec_V_data_V_0_payload_A[28]),
        .I2(in_vec_V_data_V_0_payload_B[29]),
        .I3(in_vec_V_data_V_0_payload_A[29]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_13 
       (.I0(in_vec_V_data_V_0_payload_B[25]),
        .I1(in_vec_V_data_V_0_payload_A[25]),
        .I2(in_vec_V_data_V_0_payload_B[26]),
        .I3(in_vec_V_data_V_0_payload_A[26]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_13_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_14 
       (.I0(in_vec_V_data_V_0_payload_B[9]),
        .I1(in_vec_V_data_V_0_payload_A[9]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[7]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_22_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_14_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_15 
       (.I0(in_vec_V_data_V_0_payload_B[6]),
        .I1(in_vec_V_data_V_0_payload_A[6]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[6]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_23_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hAC53000000000000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_16 
       (.I0(in_vec_V_data_V_0_payload_B[3]),
        .I1(in_vec_V_data_V_0_payload_A[3]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[3]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_24_n_1 ),
        .I5(\out_vec_V_data_V_1_payload_A[0]_i_25_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hAC53000000000000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_17 
       (.I0(in_vec_V_data_V_0_payload_B[0]),
        .I1(in_vec_V_data_V_0_payload_A[0]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[0]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_26_n_1 ),
        .I5(\out_vec_V_data_V_1_payload_A[0]_i_27_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_18 
       (.I0(in_vec_V_data_V_0_payload_B[22]),
        .I1(in_vec_V_data_V_0_payload_A[22]),
        .I2(in_vec_V_data_V_0_payload_B[23]),
        .I3(in_vec_V_data_V_0_payload_A[23]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_19 
       (.I0(in_vec_V_data_V_0_payload_B[19]),
        .I1(in_vec_V_data_V_0_payload_A[19]),
        .I2(in_vec_V_data_V_0_payload_B[20]),
        .I3(in_vec_V_data_V_0_payload_A[20]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_20 
       (.I0(in_vec_V_data_V_0_payload_B[16]),
        .I1(in_vec_V_data_V_0_payload_A[16]),
        .I2(in_vec_V_data_V_0_payload_B[17]),
        .I3(in_vec_V_data_V_0_payload_A[17]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_20_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_21 
       (.I0(in_vec_V_data_V_0_payload_B[13]),
        .I1(in_vec_V_data_V_0_payload_A[13]),
        .I2(in_vec_V_data_V_0_payload_B[14]),
        .I3(in_vec_V_data_V_0_payload_A[14]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_22 
       (.I0(in_vec_V_data_V_0_payload_B[10]),
        .I1(in_vec_V_data_V_0_payload_A[10]),
        .I2(in_vec_V_data_V_0_payload_B[11]),
        .I3(in_vec_V_data_V_0_payload_A[11]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_22_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_23 
       (.I0(in_vec_V_data_V_0_payload_B[7]),
        .I1(in_vec_V_data_V_0_payload_A[7]),
        .I2(in_vec_V_data_V_0_payload_B[8]),
        .I3(in_vec_V_data_V_0_payload_A[8]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_23_n_1 ));
  LUT4 #(
    .INIT(16'hA965)) 
    \out_vec_V_data_V_1_payload_A[0]_i_24 
       (.I0(sext_ln7_reg_120[5]),
        .I1(in_vec_V_data_V_0_sel),
        .I2(in_vec_V_data_V_0_payload_A[5]),
        .I3(in_vec_V_data_V_0_payload_B[5]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_24_n_1 ));
  LUT4 #(
    .INIT(16'hA965)) 
    \out_vec_V_data_V_1_payload_A[0]_i_25 
       (.I0(sext_ln7_reg_120[4]),
        .I1(in_vec_V_data_V_0_sel),
        .I2(in_vec_V_data_V_0_payload_A[4]),
        .I3(in_vec_V_data_V_0_payload_B[4]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_25_n_1 ));
  LUT4 #(
    .INIT(16'hA965)) 
    \out_vec_V_data_V_1_payload_A[0]_i_26 
       (.I0(sext_ln7_reg_120[2]),
        .I1(in_vec_V_data_V_0_sel),
        .I2(in_vec_V_data_V_0_payload_A[2]),
        .I3(in_vec_V_data_V_0_payload_B[2]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_26_n_1 ));
  LUT4 #(
    .INIT(16'hA965)) 
    \out_vec_V_data_V_1_payload_A[0]_i_27 
       (.I0(sext_ln7_reg_120[1]),
        .I1(in_vec_V_data_V_0_sel),
        .I2(in_vec_V_data_V_0_payload_A[1]),
        .I3(in_vec_V_data_V_0_payload_B[1]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_27_n_1 ));
  LUT6 #(
    .INIT(64'hA0A0CC0005050033)) 
    \out_vec_V_data_V_1_payload_A[0]_i_4 
       (.I0(in_vec_V_data_V_0_payload_B[30]),
        .I1(in_vec_V_data_V_0_payload_A[30]),
        .I2(in_vec_V_data_V_0_payload_B[31]),
        .I3(in_vec_V_data_V_0_payload_A[31]),
        .I4(in_vec_V_data_V_0_sel),
        .I5(sext_ln7_reg_120[7]),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_5 
       (.I0(in_vec_V_data_V_0_payload_B[27]),
        .I1(in_vec_V_data_V_0_payload_A[27]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[7]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_12_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_5_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_6 
       (.I0(in_vec_V_data_V_0_payload_B[24]),
        .I1(in_vec_V_data_V_0_payload_A[24]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[7]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_13_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_8 
       (.I0(in_vec_V_data_V_0_payload_B[21]),
        .I1(in_vec_V_data_V_0_payload_A[21]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[7]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_18_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'hAC530000)) 
    \out_vec_V_data_V_1_payload_A[0]_i_9 
       (.I0(in_vec_V_data_V_0_payload_B[18]),
        .I1(in_vec_V_data_V_0_payload_A[18]),
        .I2(in_vec_V_data_V_0_sel),
        .I3(sext_ln7_reg_120[7]),
        .I4(\out_vec_V_data_V_1_payload_A[0]_i_19_n_1 ),
        .O(\out_vec_V_data_V_1_payload_A[0]_i_9_n_1 ));
  FDRE \out_vec_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_vec_V_data_V_1_payload_A[0]_i_1_n_1 ),
        .Q(out_vec_V_data_V_1_payload_A),
        .R(1'b0));
  CARRY4 \out_vec_V_data_V_1_payload_A_reg[0]_i_2 
       (.CI(\out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_1 ),
        .CO({\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_2_CO_UNCONNECTED [3],tmp_data_V_1_fu_108_p1,\out_vec_V_data_V_1_payload_A_reg[0]_i_2_n_3 ,\out_vec_V_data_V_1_payload_A_reg[0]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\out_vec_V_data_V_1_payload_A[0]_i_4_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_5_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_6_n_1 }));
  CARRY4 \out_vec_V_data_V_1_payload_A_reg[0]_i_3 
       (.CI(\out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_1 ),
        .CO({\out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_1 ,\out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_2 ,\out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_3 ,\out_vec_V_data_V_1_payload_A_reg[0]_i_3_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\out_vec_V_data_V_1_payload_A[0]_i_8_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_9_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_10_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_11_n_1 }));
  CARRY4 \out_vec_V_data_V_1_payload_A_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_1 ,\out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_2 ,\out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_3 ,\out_vec_V_data_V_1_payload_A_reg[0]_i_7_n_4 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out_vec_V_data_V_1_payload_A_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\out_vec_V_data_V_1_payload_A[0]_i_14_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_15_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_16_n_1 ,\out_vec_V_data_V_1_payload_A[0]_i_17_n_1 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \out_vec_V_data_V_1_payload_B[0]_i_1 
       (.I0(tmp_data_V_1_fu_108_p1),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I2(out_vec_V_data_V_1_ack_in),
        .I3(out_vec_V_data_V_1_sel_wr),
        .I4(out_vec_V_data_V_1_payload_B),
        .O(\out_vec_V_data_V_1_payload_B[0]_i_1_n_1 ));
  FDRE \out_vec_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_vec_V_data_V_1_payload_B[0]_i_1_n_1 ),
        .Q(out_vec_V_data_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    out_vec_V_data_V_1_sel_rd_i_1
       (.I0(out_vec_TREADY),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I2(out_vec_V_data_V_1_sel),
        .O(out_vec_V_data_V_1_sel_rd_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    out_vec_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_vec_V_data_V_1_sel_rd_i_1_n_1),
        .Q(out_vec_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h6)) 
    out_vec_V_data_V_1_sel_wr_i_1
       (.I0(out_vec_V_data_V_1_sel_wr017_out),
        .I1(out_vec_V_data_V_1_sel_wr),
        .O(out_vec_V_data_V_1_sel_wr_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    out_vec_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_vec_V_data_V_1_sel_wr_i_1_n_1),
        .Q(out_vec_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h77007700F7007700)) 
    \out_vec_V_data_V_1_state[0]_i_1 
       (.I0(\out_vec_V_last_V_1_state[0]_i_3_n_1 ),
        .I1(\out_vec_V_data_V_1_state[0]_i_2_n_1 ),
        .I2(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .I3(ap_rst_n),
        .I4(\out_vec_V_last_V_1_state[0]_i_5_n_1 ),
        .I5(\out_vec_V_last_V_1_state[0]_i_4_n_1 ),
        .O(\out_vec_V_data_V_1_state[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \out_vec_V_data_V_1_state[0]_i_2 
       (.I0(out_vec_V_data_V_1_ack_in),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .O(\out_vec_V_data_V_1_state[0]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \out_vec_V_data_V_1_state[1]_i_1 
       (.I0(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I1(out_vec_TREADY),
        .I2(out_vec_V_data_V_1_ack_in),
        .O(out_vec_V_data_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \out_vec_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_vec_V_data_V_1_state[0]_i_1_n_1 ),
        .Q(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_vec_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_vec_V_data_V_1_state),
        .Q(out_vec_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \out_vec_V_last_V_1_payload_A[0]_i_1 
       (.I0(tmp_last_V_fu_113_p2),
        .I1(out_vec_TVALID),
        .I2(out_vec_V_last_V_1_ack_in),
        .I3(out_vec_V_last_V_1_sel_wr),
        .I4(out_vec_V_last_V_1_payload_A),
        .O(\out_vec_V_last_V_1_payload_A[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \out_vec_V_last_V_1_payload_A[0]_i_2 
       (.I0(\i_0_reg_72_reg_n_1_[5] ),
        .I1(\i_0_reg_72_reg_n_1_[4] ),
        .I2(\i_0_reg_72_reg_n_1_[3] ),
        .I3(\i_0_reg_72_reg_n_1_[1] ),
        .I4(\i_0_reg_72_reg_n_1_[0] ),
        .I5(\i_0_reg_72_reg_n_1_[2] ),
        .O(tmp_last_V_fu_113_p2));
  FDRE \out_vec_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_vec_V_last_V_1_payload_A[0]_i_1_n_1 ),
        .Q(out_vec_V_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \out_vec_V_last_V_1_payload_B[0]_i_1 
       (.I0(tmp_last_V_fu_113_p2),
        .I1(out_vec_TVALID),
        .I2(out_vec_V_last_V_1_ack_in),
        .I3(out_vec_V_last_V_1_sel_wr),
        .I4(out_vec_V_last_V_1_payload_B),
        .O(\out_vec_V_last_V_1_payload_B[0]_i_1_n_1 ));
  FDRE \out_vec_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_vec_V_last_V_1_payload_B[0]_i_1_n_1 ),
        .Q(out_vec_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    out_vec_V_last_V_1_sel_rd_i_1
       (.I0(out_vec_TVALID),
        .I1(out_vec_TREADY),
        .I2(out_vec_V_last_V_1_sel),
        .O(out_vec_V_last_V_1_sel_rd_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    out_vec_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_vec_V_last_V_1_sel_rd_i_1_n_1),
        .Q(out_vec_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    out_vec_V_last_V_1_sel_wr_i_1
       (.I0(out_vec_V_last_V_1_sel_wr_i_2_n_1),
        .I1(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .I2(ap_CS_fsm_state2),
        .I3(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .I4(out_vec_V_data_V_1_ack_in),
        .I5(out_vec_V_last_V_1_sel_wr),
        .O(out_vec_V_last_V_1_sel_wr_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    out_vec_V_last_V_1_sel_wr_i_2
       (.I0(out_vec_TVALID),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .I2(out_vec_TREADY),
        .I3(out_vec_V_last_V_1_ack_in),
        .O(out_vec_V_last_V_1_sel_wr_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    out_vec_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_vec_V_last_V_1_sel_wr_i_1_n_1),
        .Q(out_vec_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0080FFFF00000000)) 
    \out_vec_V_last_V_1_state[0]_i_1 
       (.I0(\out_vec_V_last_V_1_state[0]_i_2_n_1 ),
        .I1(\out_vec_V_last_V_1_state[0]_i_3_n_1 ),
        .I2(out_vec_V_last_V_1_ack_in),
        .I3(\out_vec_V_last_V_1_state[0]_i_4_n_1 ),
        .I4(\out_vec_V_last_V_1_state[0]_i_5_n_1 ),
        .I5(ap_rst_n),
        .O(\out_vec_V_last_V_1_state[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \out_vec_V_last_V_1_state[0]_i_2 
       (.I0(\i_0_reg_72_reg_n_1_[4] ),
        .I1(\i_0_reg_72_reg_n_1_[5] ),
        .I2(\i_0_reg_72_reg_n_1_[2] ),
        .I3(\i_0_reg_72_reg_n_1_[3] ),
        .I4(\i_0_reg_72_reg_n_1_[1] ),
        .I5(\i_0_reg_72_reg_n_1_[0] ),
        .O(\out_vec_V_last_V_1_state[0]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \out_vec_V_last_V_1_state[0]_i_3 
       (.I0(out_vec_TREADY),
        .I1(\out_vec_V_data_V_1_state_reg_n_1_[0] ),
        .O(\out_vec_V_last_V_1_state[0]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \out_vec_V_last_V_1_state[0]_i_4 
       (.I0(out_vec_V_data_V_1_ack_in),
        .I1(\in_vec_V_data_V_0_state_reg_n_1_[0] ),
        .I2(ap_CS_fsm_state2),
        .O(\out_vec_V_last_V_1_state[0]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \out_vec_V_last_V_1_state[0]_i_5 
       (.I0(out_vec_TREADY),
        .I1(out_vec_V_last_V_1_ack_in),
        .I2(out_vec_TVALID),
        .O(\out_vec_V_last_V_1_state[0]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \out_vec_V_last_V_1_state[1]_i_1 
       (.I0(out_vec_TVALID),
        .I1(out_vec_V_last_V_1_ack_in),
        .I2(out_vec_TREADY),
        .O(out_vec_V_last_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \out_vec_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_vec_V_last_V_1_state[0]_i_1_n_1 ),
        .Q(out_vec_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_vec_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_vec_V_last_V_1_state),
        .Q(out_vec_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[0]_i_1 
       (.I0(val_r_0_payload_B[0]),
        .I1(val_r_0_payload_A[0]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[1]_i_1 
       (.I0(val_r_0_payload_B[1]),
        .I1(val_r_0_payload_A[1]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[2]_i_1 
       (.I0(val_r_0_payload_B[2]),
        .I1(val_r_0_payload_A[2]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[3]_i_1 
       (.I0(val_r_0_payload_B[3]),
        .I1(val_r_0_payload_A[3]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[4]_i_1 
       (.I0(val_r_0_payload_B[4]),
        .I1(val_r_0_payload_A[4]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[5]_i_1 
       (.I0(val_r_0_payload_B[5]),
        .I1(val_r_0_payload_A[5]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[6]_i_1 
       (.I0(val_r_0_payload_B[6]),
        .I1(val_r_0_payload_A[6]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sext_ln7_reg_120[7]_i_1 
       (.I0(\val_r_0_state_reg_n_1_[0] ),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .O(p_41_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sext_ln7_reg_120[7]_i_2 
       (.I0(val_r_0_payload_B[7]),
        .I1(val_r_0_payload_A[7]),
        .I2(val_r_0_sel),
        .O(sext_ln7_fu_83_p1[7]));
  FDRE \sext_ln7_reg_120_reg[0] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[0]),
        .Q(sext_ln7_reg_120[0]),
        .R(1'b0));
  FDRE \sext_ln7_reg_120_reg[1] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[1]),
        .Q(sext_ln7_reg_120[1]),
        .R(1'b0));
  FDRE \sext_ln7_reg_120_reg[2] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[2]),
        .Q(sext_ln7_reg_120[2]),
        .R(1'b0));
  FDRE \sext_ln7_reg_120_reg[3] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[3]),
        .Q(sext_ln7_reg_120[3]),
        .R(1'b0));
  FDRE \sext_ln7_reg_120_reg[4] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[4]),
        .Q(sext_ln7_reg_120[4]),
        .R(1'b0));
  FDRE \sext_ln7_reg_120_reg[5] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[5]),
        .Q(sext_ln7_reg_120[5]),
        .R(1'b0));
  FDRE \sext_ln7_reg_120_reg[6] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[6]),
        .Q(sext_ln7_reg_120[6]),
        .R(1'b0));
  FDRE \sext_ln7_reg_120_reg[7] 
       (.C(ap_clk),
        .CE(p_41_in),
        .D(sext_ln7_fu_83_p1[7]),
        .Q(sext_ln7_reg_120[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0D)) 
    \val_r_0_payload_A[7]_i_1 
       (.I0(\val_r_0_state_reg_n_1_[0] ),
        .I1(val_r_TREADY),
        .I2(val_r_0_sel_wr),
        .O(val_r_0_load_A));
  FDRE \val_r_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[0]),
        .Q(val_r_0_payload_A[0]),
        .R(1'b0));
  FDRE \val_r_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[1]),
        .Q(val_r_0_payload_A[1]),
        .R(1'b0));
  FDRE \val_r_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[2]),
        .Q(val_r_0_payload_A[2]),
        .R(1'b0));
  FDRE \val_r_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[3]),
        .Q(val_r_0_payload_A[3]),
        .R(1'b0));
  FDRE \val_r_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[4]),
        .Q(val_r_0_payload_A[4]),
        .R(1'b0));
  FDRE \val_r_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[5]),
        .Q(val_r_0_payload_A[5]),
        .R(1'b0));
  FDRE \val_r_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[6]),
        .Q(val_r_0_payload_A[6]),
        .R(1'b0));
  FDRE \val_r_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(val_r_0_load_A),
        .D(val_r_TDATA[7]),
        .Q(val_r_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \val_r_0_payload_B[7]_i_1 
       (.I0(\val_r_0_state_reg_n_1_[0] ),
        .I1(val_r_TREADY),
        .I2(val_r_0_sel_wr),
        .O(val_r_0_load_B));
  FDRE \val_r_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[0]),
        .Q(val_r_0_payload_B[0]),
        .R(1'b0));
  FDRE \val_r_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[1]),
        .Q(val_r_0_payload_B[1]),
        .R(1'b0));
  FDRE \val_r_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[2]),
        .Q(val_r_0_payload_B[2]),
        .R(1'b0));
  FDRE \val_r_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[3]),
        .Q(val_r_0_payload_B[3]),
        .R(1'b0));
  FDRE \val_r_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[4]),
        .Q(val_r_0_payload_B[4]),
        .R(1'b0));
  FDRE \val_r_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[5]),
        .Q(val_r_0_payload_B[5]),
        .R(1'b0));
  FDRE \val_r_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[6]),
        .Q(val_r_0_payload_B[6]),
        .R(1'b0));
  FDRE \val_r_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(val_r_0_load_B),
        .D(val_r_TDATA[7]),
        .Q(val_r_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    val_r_0_sel_rd_i_1
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(\val_r_0_state_reg_n_1_[0] ),
        .I2(val_r_0_sel),
        .O(val_r_0_sel_rd_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    val_r_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(val_r_0_sel_rd_i_1_n_1),
        .Q(val_r_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    val_r_0_sel_wr_i_1
       (.I0(val_r_TREADY),
        .I1(val_r_TVALID),
        .I2(val_r_0_sel_wr),
        .O(val_r_0_sel_wr_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    val_r_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(val_r_0_sel_wr_i_1_n_1),
        .Q(val_r_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF020A0A0)) 
    \val_r_0_state[0]_i_1 
       (.I0(\val_r_0_state_reg_n_1_[0] ),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(ap_rst_n),
        .I3(val_r_TVALID),
        .I4(val_r_TREADY),
        .O(\val_r_0_state[0]_i_1_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \val_r_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \val_r_0_state[1]_i_2 
       (.I0(\val_r_0_state_reg_n_1_[0] ),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(val_r_TVALID),
        .I3(val_r_TREADY),
        .O(val_r_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \val_r_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\val_r_0_state[0]_i_1_n_1 ),
        .Q(\val_r_0_state_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \val_r_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(val_r_0_state),
        .Q(val_r_TREADY),
        .R(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
