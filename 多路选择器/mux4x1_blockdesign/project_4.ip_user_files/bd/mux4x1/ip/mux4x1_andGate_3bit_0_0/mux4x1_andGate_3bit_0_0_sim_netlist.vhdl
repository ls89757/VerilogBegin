-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr 26 00:56:46 2019
-- Host        : DESKTOP-A2GTVID running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/SCL_VERILOG/project_4/project_4.srcs/sources_1/bd/mux4x1/ip/mux4x1_andGate_3bit_0_0/mux4x1_andGate_3bit_0_0_sim_netlist.vhdl
-- Design      : mux4x1_andGate_3bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4x1_andGate_3bit_0_0_andGate_3bit is
  port (
    d : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mux4x1_andGate_3bit_0_0_andGate_3bit : entity is "andGate_3bit";
end mux4x1_andGate_3bit_0_0_andGate_3bit;

architecture STRUCTURE of mux4x1_andGate_3bit_0_0_andGate_3bit is
begin
\d[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => c(0),
      O => d(0)
    );
\d[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      I2 => c(1),
      O => d(1)
    );
\d[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => c(2),
      O => d(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux4x1_andGate_3bit_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c : in STD_LOGIC_VECTOR ( 2 downto 0 );
    d : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mux4x1_andGate_3bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mux4x1_andGate_3bit_0_0 : entity is "mux4x1_andGate_3bit_0_0,andGate_3bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mux4x1_andGate_3bit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mux4x1_andGate_3bit_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mux4x1_andGate_3bit_0_0 : entity is "andGate_3bit,Vivado 2018.3";
end mux4x1_andGate_3bit_0_0;

architecture STRUCTURE of mux4x1_andGate_3bit_0_0 is
begin
inst: entity work.mux4x1_andGate_3bit_0_0_andGate_3bit
     port map (
      a(2 downto 0) => a(2 downto 0),
      b(2 downto 0) => b(2 downto 0),
      c(2 downto 0) => c(2 downto 0),
      d(2 downto 0) => d(2 downto 0)
    );
end STRUCTURE;
