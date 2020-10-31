`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 01:37:04 PM
// Design Name: 
// Module Name: prime_finder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module prime_finder_tb(

    );
    
    parameter ADDRESS_WIDTH = 32; 
    parameter DATA_WIDTH = 32;
    
    //Global Signals
    reg aclk = 0;
    reg aresetn = 1;
    
    //Read Address Channel    
    reg [ADDRESS_WIDTH-1 : 0] araddr = 0;
    reg arcache = 0;
    reg arprot = 0;
    reg arvalid = 0;
    wire arready;
    
    //Read Data Channel
    wire [DATA_WIDTH-1 : 0] rdata;
    wire rresp;
    wire rvalid;
    reg rready = 0;
    
    //Write Address Channel
    reg [ADDRESS_WIDTH-1 : 0] awaddr = 0;
    //reg awcache = 0;
    reg awprot = 0;
    reg awvalid = 0;
    wire awready;
    
    //Write Data Channel
    reg [DATA_WIDTH-1 : 0] wdata = 0;
    reg wvalid = 0;
    //reg wstrb = 0;
    wire wready;
    
    //Write Response Channel
    wire [1:0] bresp;
    wire bvalid;
    reg bready = 0;
    
    always #5 aclk = ~aclk;
    
    prime_finder
    #(
        .AXI_ADDR_REGION_START ('h4000_2000),
        .AXI_ADDR_REGION_END ('h4000_2012)
    )
    pf_inst
    (
        //Global Signals
        .aclk (aclk),
        .aresetn (aresetn),
        
        //Read Address Channel    
        .araddr (araddr),
        .arvalid (arvalid),
        .arready (arready),
        
        //Read Data Channel
        .rdata (rdata),
        .rresp (rresp),
        .rvalid (rvalid),
        .rready (rready),
        
        //Write Address Channel
        .awaddr (awaddr),
        .awvalid (awvalid),
        .awready (awready),
        
        //Write Data Channel
        .wdata (wdata),
        .wvalid (wvalid),
        .wready (wready),
        
        //Write Response Channel
        .bresp (bresp),
        .bvalid (bvalid),
        .bready (bready)
    );
    
    initial
    begin    
        
        //Write test register 1
        #10
        
        awvalid = 1;
        awaddr = 'h4000_2000;
        
        #10
        
        if(awready == 1)
        begin
            awvalid = 0;
            awaddr = 0;
        end
        wvalid = 1;
        wdata = 65;
        
        #10
        
        if(wready == 1)
        begin
            wvalid = 0;
            wdata = 0;
        end
        bready = 1;
        
        #10
        
        if(bvalid == 1)
        begin
            bready = 0;
        end
        
        #10
        
        //Write test reigster 2        
        awvalid = 1;
        awaddr = 'h4000_2004;
        
        #10
        
        if(awready == 1)
        begin
            awvalid = 0;
            awaddr = 0;
        end
        wvalid = 1;
        wdata = 100;
        
        #10
        
        if(wready == 1)
        begin
            wvalid = 0;
            wdata = 0;
        end
        bready = 1;
        
        #10
        
        if(bvalid == 1)
        begin
            bready = 0;
        end
        
        #10
        
        //Read test
        #10
        
        arvalid = 1;
        araddr = 'h4000_2008;
        
        #10
        
        rready = 1;
        
        #10
        
        if(rvalid == 1)
        begin
            rready = 0;
        end
        
        #10
        #10
        
        $finish;
    end
    
    
    
endmodule
