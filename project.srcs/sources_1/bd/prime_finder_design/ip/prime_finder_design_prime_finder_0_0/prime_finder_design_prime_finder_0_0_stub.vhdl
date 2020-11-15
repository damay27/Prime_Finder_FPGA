-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Nov  7 08:45:54 2020
-- Host        : DESKTOP-JPU69U7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Prime_Finder_FPGA/project.srcs/sources_1/bd/prime_finder_design/ip/prime_finder_design_prime_finder_0_0/prime_finder_design_prime_finder_0_0_stub.vhdl
-- Design      : prime_finder_design_prime_finder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prime_finder_design_prime_finder_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arvalid : in STD_LOGIC;
    arready : out STD_LOGIC;
    rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rresp : out STD_LOGIC;
    rvalid : out STD_LOGIC;
    rready : in STD_LOGIC;
    awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    awvalid : in STD_LOGIC;
    awready : out STD_LOGIC;
    wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wvalid : in STD_LOGIC;
    wready : out STD_LOGIC;
    bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bvalid : out STD_LOGIC;
    bready : in STD_LOGIC
  );

end prime_finder_design_prime_finder_0_0;

architecture stub of prime_finder_design_prime_finder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,araddr[31:0],arprot[2:0],arvalid,arready,rdata[31:0],rresp,rvalid,rready,awaddr[31:0],awprot[2:0],awvalid,awready,wdata[31:0],wstrb[7:0],wvalid,wready,bresp[1:0],bvalid,bready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "prime_finder,Vivado 2020.1";
begin
end;
