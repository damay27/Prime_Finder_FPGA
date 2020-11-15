`timescale 1ns / 1ps

module prime_finder (
    //Global Signals
    input aclk,
    input aresetn,
    
    //Read Address Channel    
    input [ADDRESS_WIDTH-1 : 0] araddr,
    input [2:0] arprot,
    input arvalid,
    output arready,
    
    //Read Data Channel
    output [DATA_WIDTH-1 : 0] rdata,
    output rresp,
    output rvalid,
    input rready,
    
    //Write Address Channel
    input [ADDRESS_WIDTH-1 : 0] awaddr,
    input [2:0]awprot,
    input awvalid,
    output awready,
    
    //Write Data Channel
    input [DATA_WIDTH-1 : 0] wdata,
    input [7:0] wstrb,
    input wvalid,
    output wready,
    
    //Write Response Channel
    output [1:0] bresp,
    output bvalid,
    input bready
);   

    parameter DATA_WIDTH = 32;
    parameter ADDRESS_WIDTH = 32;
    parameter [ADDRESS_WIDTH-1 : 0] AXI_ADDR_REGION_START = 'h4000_0000;
    parameter [ADDRESS_WIDTH-1 : 0] AXI_ADDR_REGION_END = 'h4000_FFFF;
       
    //Write address
    reg [ADDRESS_WIDTH-1 : 0] w_address_reg = 0;
    reg w_address_ready_reg = 0;
    reg w_address_state = 0; //Tracks whether a valid address has been received
    
    //Write data
    reg w_data_ready_reg = 0;
    
    //Write response
    reg b_valid_reg = 0;
    reg b_resp_reg = 0;
    reg w_data_state = 0; //Tracks whether a valid data has been received
    
    //Read address
    reg [ADDRESS_WIDTH-1 : 0] r_address_reg = 0;
    reg r_address_ready_reg = 0;
    reg r_address_state = 0;
    
    //Read data
    reg [DATA_WIDTH-1 : 0] r_data_reg = 0;
    reg r_data_valid_reg = 0;
    
    //AXI device registers
    reg [DATA_WIDTH-1 : 0] start_flag_reg = 0; //Base address + 0
    reg [DATA_WIDTH-1 : 0] start_number_reg = 0; //Base addresss + 4
    reg [DATA_WIDTH-1 : 0] done_flag_reg = 0; //Base address + 8
    reg [DATA_WIDTH-1 : 0] result_prime_reg = 0; //Base address + 12
    reg [DATA_WIDTH-1 : 0] cycle_count_upper_reg = 0;
    reg [DATA_WIDTH-1 : 0] cycle_count_lower_reg = 0;
    
    reg [DATA_WIDTH-1 : 0] start_number_internal_reg = 0;
    
    wire [DATA_WIDTH-1 : 0] prime_number_wire;
    wire [(2*DATA_WIDTH)-1 : 0] cycle_count_wire;
    wire prime_found_wire;
    
    prime_finder_backend #(
        .REG_WIDTH (DATA_WIDTH)
    )
    prime_finder_backend_inst (
        .clk (aclk),
        .resetn (aresetn),
        .enable (1), //Figure out what to do with this
        .start_number (start_number_reg),
        .start_search (start_flag_reg[0]),
        
        .prime_number (prime_number_wire),
        .cycle_count (cycle_count_wire),
        .done (prime_found_wire)
    );
    
    ila_0 ila_inst(
        //Global Signals
        .clk (aclk),
        
        //Read Address Channel    
        .probe0 (araddr),
        .probe1 (arvalid),
        .probe2 (arready),
        
        //Read Data Channel
        .probe3 (rdata),
        .probe4 (rresp),
        .probe5 (rvalid),
        .probe6 (rready),
        
        //Write Address Channel
        .probe7 (awaddr),
        .probe8 (awvalid),
        .probe9 (awready),
        
        //Write Data Channel
        .probe10 (wdata),
        .probe11 (wvalid),
        .probe12 (wready),
        
        //Write Response Channel
        .probe13 (bresp),
        .probe14 (bvalid),
        .probe15 (bready),
        
        .probe16 (w_data_state),
        .probe17 (w_address_state),
        .probe18 (r_address_state),
        .probe19 (start_flag_reg),
        .probe20 (start_number_reg),
        .probe21 (done_flag_reg),
        .probe22 (result_prime_reg),
        .probe23 (prime_number_wire),
        .probe24 (prime_found_wire),
        .probe25 (cycle_count_wire)
    );

//ila_1 ila_inst( .clk (aclk), .probe0 (bready));

    
    
    ///////////////////////////////////////////////////////////////////////////
    //Concurent asignments
    ///////////////////////////////////////////////////////////////////////////
    //Write address
    assign awready = w_address_ready_reg;
    
    //Write data
    assign wready = w_data_ready_reg;
    
    //Write response
    assign bvalid = b_valid_reg;
    assign bresp = b_resp_reg;
    
    //Read address
    assign arready = r_address_ready_reg;
    
    //Read data
    assign rvalid = r_data_valid_reg;
    assign rdata = r_data_reg;
    ///////////////////////////////////////////////////////////////////////////
    
    always @ (posedge aclk)
    begin
        
        //Always update the axi registers with the values from the prime finder
        result_prime_reg <= prime_number_wire;
        done_flag_reg <= prime_found_wire;
        
        cycle_count_upper_reg <= cycle_count_wire[(2*DATA_WIDTH)-1 : DATA_WIDTH];
        cycle_count_lower_reg <= cycle_count_wire[DATA_WIDTH-1 : 0];
        
        if(aresetn == 1)
        begin
            //Write address channel handshake
            if(awvalid == 1) //Check if a valid address is set
            begin
                //Only respond if the write address is within our address region
                if(awaddr <= AXI_ADDR_REGION_END && awaddr >= AXI_ADDR_REGION_START)
                begin
                    w_address_reg <= awaddr; //Save the address to a register
                    w_address_ready_reg <= 1; //Set the ready register to 1
                    w_address_state <= 1; //Flag that an address was received
                end
            end
            else
            begin
                w_address_ready_reg <= 0;
            end
            
            //Write data channel
            if(wvalid == 1 && w_address_state)
            begin
                w_data_ready_reg <= 1; //Set the ready register to 1
                w_data_state <= 1; //Flag that data was received
                
                //Determine what register the data should go to
                if(w_address_reg == AXI_ADDR_REGION_START)
                begin
                    start_flag_reg <= wdata;
                end
                else if(w_address_reg == AXI_ADDR_REGION_START + 4)
                begin
                    start_number_reg <= wdata;
                end

            end
            else
            begin
                w_data_ready_reg <= 0;
            end
            //Write response channel
            //Check that both the address and data were received
            if((w_data_state == 1) && (w_address_state == 1))
            begin
                b_valid_reg <= 1;
                //If the receiver is ready send the response
                if(bready == 1)
                begin
                    b_resp_reg <= 'b00;
                    //Now that the transaction is done clear the state flags
                    w_data_state <= 0;
                    w_address_state <= 0;
                end
            end
            else
            begin
                b_valid_reg <= 0;
            end
            
            //Read address channel
            if(arvalid == 1)
            begin
                //Only respond if the address is within our addres region
                if(araddr <= AXI_ADDR_REGION_END && araddr >= AXI_ADDR_REGION_START)
                begin
                    r_address_reg <= araddr;
                    r_address_ready_reg <= 1;
                    r_address_state <= 1;
                end
            end
            else
            begin
                r_address_ready_reg <= 0;
            end
            
            //Ready data channel
            if(rready == 1 && r_address_state == 1)
            begin
                r_data_valid_reg <= 1;
                r_address_state <= 0;
                
                //Determine which register to read the data from
                if(r_address_reg == AXI_ADDR_REGION_START + 8)
                begin
                    r_data_reg <= done_flag_reg;
                end
                else if(r_address_reg == AXI_ADDR_REGION_START + 12)
                begin
                    r_data_reg <= result_prime_reg;
                end
                else if(r_address_reg == AXI_ADDR_REGION_START + 16) ////////////////////////////////////////////////////
                begin
                    r_data_reg <= cycle_count_upper_reg;
                end
                else if(r_address_reg == AXI_ADDR_REGION_START + 20) ////////////////////////////////////////////////////
                begin
                    r_data_reg <= cycle_count_lower_reg;
                end
                else
                begin
                    r_data_reg = 0;
                end
            end
            else
            begin
                r_data_valid_reg <= 0;
            end
            
            //prime computation code
            
            
        end
         
    end

endmodule