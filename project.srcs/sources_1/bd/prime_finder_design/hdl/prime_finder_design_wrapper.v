//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Thu Dec 31 16:54:29 2020
//Host        : DESKTOP-JPU69U7 running 64-bit major release  (build 9200)
//Command     : generate_target prime_finder_design_wrapper.bd
//Design      : prime_finder_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module prime_finder_design_wrapper
   (LED_A1,
    LED_A2,
    LED_A3,
    LED_A4,
    pci_reset,
    pcie_clkin_clk_n,
    pcie_clkin_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp);
  output [0:0]LED_A1;
  output [0:0]LED_A2;
  output [0:0]LED_A3;
  output [0:0]LED_A4;
  input pci_reset;
  input [0:0]pcie_clkin_clk_n;
  input [0:0]pcie_clkin_clk_p;
  input [3:0]pcie_mgt_rxn;
  input [3:0]pcie_mgt_rxp;
  output [3:0]pcie_mgt_txn;
  output [3:0]pcie_mgt_txp;

  wire [0:0]LED_A1;
  wire [0:0]LED_A2;
  wire [0:0]LED_A3;
  wire [0:0]LED_A4;
  wire pci_reset;
  wire [0:0]pcie_clkin_clk_n;
  wire [0:0]pcie_clkin_clk_p;
  wire [3:0]pcie_mgt_rxn;
  wire [3:0]pcie_mgt_rxp;
  wire [3:0]pcie_mgt_txn;
  wire [3:0]pcie_mgt_txp;

  prime_finder_design prime_finder_design_i
       (.LED_A1(LED_A1),
        .LED_A2(LED_A2),
        .LED_A3(LED_A3),
        .LED_A4(LED_A4),
        .pci_reset(pci_reset),
        .pcie_clkin_clk_n(pcie_clkin_clk_n),
        .pcie_clkin_clk_p(pcie_clkin_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp));
endmodule
