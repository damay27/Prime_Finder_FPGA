`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2020 12:08:34 PM
// Design Name: 
// Module Name: memory_tb
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


module memory_tb(

    );
    
    parameter WORD_SIZE = 2;
    parameter MEMORY_SIZE = 8;
    parameter READ_REGION_SIZE = 2;
    
    reg clk = 0;
    reg resetn = 1;
    reg [(WORD_SIZE * 8) - 1 : 0] input_word = 0;
    reg [memory_inst.ADDRESS_SIZE-1 : 0] address = 0;
    reg write_valid = 0;
    reg enable = 0;
    reg [(READ_REGION_SIZE * WORD_SIZE * 8)-1 : 0] input_region = 0;
    
    wire [(WORD_SIZE * 8) - 1 : 0] output_word;
    wire [(MEMORY_SIZE * WORD_SIZE * 8)-1 : (READ_REGION_SIZE * WORD_SIZE * 8)] output_region;
    
    memory
    #(
        .WORD_SIZE (WORD_SIZE),
        .MEMORY_SIZE(MEMORY_SIZE),
        .READ_REGION_SIZE(READ_REGION_SIZE)
    )
    memory_inst
    (
        .clk (clk),
        .resetn (resetn),
        .input_word (input_word),
        .address (address),
        .write_valid (write_valid),
        .enable (enable),
        .output_word (output_word),
        .device_write_region (input_region),
        .device_read_region (output_region)
    );
    
//    reg [memory_inst.ADDR_SIZE-1 : 0] address = 0;
    integer i;
    
    
    always #5 clk = ~clk;
    
    initial
    begin
    
        //Write Data
        for(i = 0; address < MEMORY_SIZE - WORD_SIZE; i = i + 1)
        begin
            enable = 0;
            input_word = 255 + i;
            address = WORD_SIZE * i;
            write_valid = 1;
            #10;
            enable = 1;
            #10;
        end
        
        address = 0;
        
        //Read Data
        for(i = 0; address < MEMORY_SIZE - WORD_SIZE; i = i + 1)
        begin
            enable = 0;
            address = WORD_SIZE * i;
            write_valid = 0;
            #10;
            enable = 1;
            #10;
        end
        
        $finish;
        
        
    end
    
endmodule
