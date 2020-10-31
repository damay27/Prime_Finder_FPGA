//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Fri Oct 30 07:31:09 2020
//Host        : DESKTOP-JPU69U7 running 64-bit major release  (build 9200)
//Command     : generate_target prime_finder_design.bd
//Design      : prime_finder_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "prime_finder_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=prime_finder_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "prime_finder_design.hwdef" *) 
module prime_finder_design
   (pci_reset,
    pcie_clkin_clk_n,
    pcie_clkin_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCI_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCI_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pci_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_clkin CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_clkin, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_clkin_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_clkin CLK_P" *) input [0:0]pcie_clkin_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [3:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [3:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [3:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [3:0]pcie_mgt_txp;

  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_pcie_0_M_AXI_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_pcie_0_M_AXI_ARBURST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_pcie_0_M_AXI_ARCACHE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_pcie_0_M_AXI_ARLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_ARLOCK;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_pcie_0_M_AXI_ARPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_ARREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_pcie_0_M_AXI_ARSIZE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_ARVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_pcie_0_M_AXI_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_pcie_0_M_AXI_AWBURST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_pcie_0_M_AXI_AWCACHE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_pcie_0_M_AXI_AWLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_AWLOCK;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_pcie_0_M_AXI_AWPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_AWREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_pcie_0_M_AXI_AWSIZE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_AWVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_BREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_pcie_0_M_AXI_BRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_BVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_pcie_0_M_AXI_RDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_RLAST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_RREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_pcie_0_M_AXI_RRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_RVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axi_pcie_0_M_AXI_WDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_WLAST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_WREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_pcie_0_M_AXI_WSTRB;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_pcie_0_M_AXI_WVALID;
  wire axi_pcie_0_axi_aclk_out;
  wire axi_pcie_0_axi_ctl_aclk_out;
  wire axi_pcie_0_mmcm_lock;
  wire [3:0]axi_pcie_0_pcie_7x_mgt_rxn;
  wire [3:0]axi_pcie_0_pcie_7x_mgt_rxp;
  wire [3:0]axi_pcie_0_pcie_7x_mgt_txn;
  wire [3:0]axi_pcie_0_pcie_7x_mgt_txp;
  wire [31:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [3:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire pci_reset_1;
  wire [0:0]pcie_clkin_1_CLK_N;
  wire [0:0]pcie_clkin_1_CLK_P;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]util_ds_buf_IBUF_OUT;
  wire [0:0]xlconstant_0_dout;

  assign axi_pcie_0_pcie_7x_mgt_rxn = pcie_mgt_rxn[3:0];
  assign axi_pcie_0_pcie_7x_mgt_rxp = pcie_mgt_rxp[3:0];
  assign pci_reset_1 = pci_reset;
  assign pcie_clkin_1_CLK_N = pcie_clkin_clk_n[0];
  assign pcie_clkin_1_CLK_P = pcie_clkin_clk_p[0];
  assign pcie_mgt_txn[3:0] = axi_pcie_0_pcie_7x_mgt_txn;
  assign pcie_mgt_txp[3:0] = axi_pcie_0_pcie_7x_mgt_txp;
  prime_finder_design_axi_interconnect_0_1 axi_interconnect_0
       (.ACLK(axi_pcie_0_axi_aclk_out),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(axi_pcie_0_axi_aclk_out),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(axi_pcie_0_axi_aclk_out),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(axi_pcie_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_pcie_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_pcie_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_pcie_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_pcie_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_pcie_0_M_AXI_ARPROT),
        .S00_AXI_arready(axi_pcie_0_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_pcie_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_pcie_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_pcie_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_pcie_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_pcie_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_pcie_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_pcie_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_pcie_0_M_AXI_AWPROT),
        .S00_AXI_awready(axi_pcie_0_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_pcie_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_pcie_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_pcie_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_pcie_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_pcie_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_pcie_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_pcie_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_pcie_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_pcie_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_pcie_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_pcie_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_pcie_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_pcie_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_pcie_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_pcie_0_M_AXI_WVALID));
  prime_finder_design_axi_pcie_0_1 axi_pcie_0
       (.INTX_MSI_Request(xlconstant_0_dout),
        .MSI_Vector_Num({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .REFCLK(util_ds_buf_IBUF_OUT),
        .axi_aclk_out(axi_pcie_0_axi_aclk_out),
        .axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .axi_ctl_aclk_out(axi_pcie_0_axi_ctl_aclk_out),
        .m_axi_araddr(axi_pcie_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_pcie_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_pcie_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_pcie_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_pcie_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_pcie_0_M_AXI_ARPROT),
        .m_axi_arready(axi_pcie_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_pcie_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_pcie_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_pcie_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_pcie_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_pcie_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_pcie_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_pcie_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_pcie_0_M_AXI_AWPROT),
        .m_axi_awready(axi_pcie_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_pcie_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_pcie_0_M_AXI_AWVALID),
        .m_axi_bready(axi_pcie_0_M_AXI_BREADY),
        .m_axi_bresp(axi_pcie_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_pcie_0_M_AXI_BVALID),
        .m_axi_rdata(axi_pcie_0_M_AXI_RDATA),
        .m_axi_rlast(axi_pcie_0_M_AXI_RLAST),
        .m_axi_rready(axi_pcie_0_M_AXI_RREADY),
        .m_axi_rresp(axi_pcie_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_pcie_0_M_AXI_RVALID),
        .m_axi_wdata(axi_pcie_0_M_AXI_WDATA),
        .m_axi_wlast(axi_pcie_0_M_AXI_WLAST),
        .m_axi_wready(axi_pcie_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_pcie_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_pcie_0_M_AXI_WVALID),
        .mmcm_lock(axi_pcie_0_mmcm_lock),
        .pci_exp_rxn(axi_pcie_0_pcie_7x_mgt_rxn),
        .pci_exp_rxp(axi_pcie_0_pcie_7x_mgt_rxp),
        .pci_exp_txn(axi_pcie_0_pcie_7x_mgt_txn),
        .pci_exp_txp(axi_pcie_0_pcie_7x_mgt_txp),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b1,1'b1}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b1,1'b1}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_ctl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_arvalid(1'b0),
        .s_axi_ctl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_awvalid(1'b0),
        .s_axi_ctl_bready(1'b0),
        .s_axi_ctl_rready(1'b0),
        .s_axi_ctl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_ctl_wvalid(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(1'b0));
  prime_finder_design_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp({axi_protocol_convert_0_M_AXI_RRESP,axi_protocol_convert_0_M_AXI_RRESP}),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  prime_finder_design_prime_finder_0_0 prime_finder_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .bready(axi_protocol_convert_0_M_AXI_BREADY),
        .bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .rready(axi_protocol_convert_0_M_AXI_RREADY),
        .rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .wready(axi_protocol_convert_0_M_AXI_WREADY),
        .wstrb({1'b1,1'b1,1'b1,1'b1,axi_protocol_convert_0_M_AXI_WSTRB}),
        .wvalid(axi_protocol_convert_0_M_AXI_WVALID));
  prime_finder_design_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(pci_reset_1),
        .dcm_locked(axi_pcie_0_mmcm_lock),
        .ext_reset_in(xlconstant_0_dout),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(axi_pcie_0_axi_ctl_aclk_out));
  prime_finder_design_util_ds_buf_1 util_ds_buf
       (.IBUF_DS_N(pcie_clkin_1_CLK_N),
        .IBUF_DS_P(pcie_clkin_1_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
  prime_finder_design_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module prime_finder_design_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [7:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARQOS;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARSIZE;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWQOS;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWSIZE;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire s00_couplers_to_axi_interconnect_0_RLAST;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire s00_couplers_to_axi_interconnect_0_WLAST;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arregion[3:0] = s00_couplers_to_axi_interconnect_0_ARREGION;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awregion[3:0] = s00_couplers_to_axi_interconnect_0_AWREGION;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_1TW7EKZ s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(s00_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(s00_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1TW7EKZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_s00_couplers_ARADDR;
  wire [1:0]auto_ds_to_s00_couplers_ARBURST;
  wire [3:0]auto_ds_to_s00_couplers_ARCACHE;
  wire [7:0]auto_ds_to_s00_couplers_ARLEN;
  wire [0:0]auto_ds_to_s00_couplers_ARLOCK;
  wire [2:0]auto_ds_to_s00_couplers_ARPROT;
  wire [3:0]auto_ds_to_s00_couplers_ARQOS;
  wire auto_ds_to_s00_couplers_ARREADY;
  wire [3:0]auto_ds_to_s00_couplers_ARREGION;
  wire [2:0]auto_ds_to_s00_couplers_ARSIZE;
  wire auto_ds_to_s00_couplers_ARVALID;
  wire [31:0]auto_ds_to_s00_couplers_AWADDR;
  wire [1:0]auto_ds_to_s00_couplers_AWBURST;
  wire [3:0]auto_ds_to_s00_couplers_AWCACHE;
  wire [7:0]auto_ds_to_s00_couplers_AWLEN;
  wire [0:0]auto_ds_to_s00_couplers_AWLOCK;
  wire [2:0]auto_ds_to_s00_couplers_AWPROT;
  wire [3:0]auto_ds_to_s00_couplers_AWQOS;
  wire auto_ds_to_s00_couplers_AWREADY;
  wire [3:0]auto_ds_to_s00_couplers_AWREGION;
  wire [2:0]auto_ds_to_s00_couplers_AWSIZE;
  wire auto_ds_to_s00_couplers_AWVALID;
  wire auto_ds_to_s00_couplers_BREADY;
  wire [1:0]auto_ds_to_s00_couplers_BRESP;
  wire auto_ds_to_s00_couplers_BVALID;
  wire [31:0]auto_ds_to_s00_couplers_RDATA;
  wire auto_ds_to_s00_couplers_RLAST;
  wire auto_ds_to_s00_couplers_RREADY;
  wire [1:0]auto_ds_to_s00_couplers_RRESP;
  wire auto_ds_to_s00_couplers_RVALID;
  wire [31:0]auto_ds_to_s00_couplers_WDATA;
  wire auto_ds_to_s00_couplers_WLAST;
  wire auto_ds_to_s00_couplers_WREADY;
  wire [3:0]auto_ds_to_s00_couplers_WSTRB;
  wire auto_ds_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [31:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [63:0]s00_couplers_to_auto_ds_RDATA;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [63:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [7:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[31:0] = auto_ds_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_ds_to_s00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_ds_to_s00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_ds_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_ds_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_ds_to_s00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_ds_to_s00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_ds_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  prime_finder_design_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_ds_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_ds_to_s00_couplers_ARREADY),
        .m_axi_arregion(auto_ds_to_s00_couplers_ARREGION),
        .m_axi_arsize(auto_ds_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_ds_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_ds_to_s00_couplers_AWREADY),
        .m_axi_awregion(auto_ds_to_s00_couplers_AWREGION),
        .m_axi_awsize(auto_ds_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_s00_couplers_RLAST),
        .m_axi_rready(auto_ds_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_s00_couplers_WLAST),
        .m_axi_wready(auto_ds_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
endmodule
