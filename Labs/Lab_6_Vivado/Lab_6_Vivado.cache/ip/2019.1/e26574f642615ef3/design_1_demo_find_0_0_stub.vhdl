-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Mar 25 15:01:38 2025
-- Host        : Shivam-Shukla running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_demo_find_0_0_stub.vhdl
-- Design      : design_1_demo_find_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    val_r_TVALID : in STD_LOGIC;
    val_r_TREADY : out STD_LOGIC;
    val_r_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_vec_TVALID : in STD_LOGIC;
    in_vec_TREADY : out STD_LOGIC;
    in_vec_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_vec_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_vec_TVALID : out STD_LOGIC;
    out_vec_TREADY : in STD_LOGIC;
    out_vec_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_vec_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,val_r_TVALID,val_r_TREADY,val_r_TDATA[7:0],in_vec_TVALID,in_vec_TREADY,in_vec_TDATA[31:0],in_vec_TLAST[0:0],out_vec_TVALID,out_vec_TREADY,out_vec_TDATA[31:0],out_vec_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "demo_find,Vivado 2019.1";
begin
end;
