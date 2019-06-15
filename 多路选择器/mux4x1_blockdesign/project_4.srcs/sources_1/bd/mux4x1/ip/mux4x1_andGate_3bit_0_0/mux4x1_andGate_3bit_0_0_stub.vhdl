-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr 26 00:56:46 2019
-- Host        : DESKTOP-A2GTVID running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/SCL_VERILOG/project_4/project_4.srcs/sources_1/bd/mux4x1/ip/mux4x1_andGate_3bit_0_0/mux4x1_andGate_3bit_0_0_stub.vhdl
-- Design      : mux4x1_andGate_3bit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1_andGate_3bit_0_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c : in STD_LOGIC_VECTOR ( 2 downto 0 );
    d : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end mux4x1_andGate_3bit_0_0;

architecture stub of mux4x1_andGate_3bit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[2:0],b[2:0],c[2:0],d[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "andGate_3bit,Vivado 2018.3";
begin
end;
