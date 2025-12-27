-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Apr  5 23:38:04 2025
-- Host        : Shivam-Shukla running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Sem_6/AELD/Labs/Lab_7_Vivado/Lab_7_Vivado.srcs/sources_1/bd/design_1/ip/design_1_matrixmul_1_0_2/design_1_matrixmul_1_0_2_stub.vhdl
-- Design      : design_1_matrixmul_1_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_matrixmul_1_0_2 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in_A_TVALID : in STD_LOGIC;
    in_A_TREADY : out STD_LOGIC;
    in_A_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_A_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_C_TVALID : out STD_LOGIC;
    out_C_TREADY : in STD_LOGIC;
    out_C_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_C_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_matrixmul_1_0_2;

architecture stub of design_1_matrixmul_1_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,in_A_TVALID,in_A_TREADY,in_A_TDATA[31:0],in_A_TLAST[0:0],out_C_TVALID,out_C_TREADY,out_C_TDATA[31:0],out_C_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "matrixmul_1,Vivado 2019.1";
begin
end;
