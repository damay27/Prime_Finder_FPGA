`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2020 08:22:18 PM
// Design Name: 
// Module Name: modulus_tb
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


module modulus_tb(

    );
    
    reg clk = 0;
    reg enable = 0;
    reg start_operation = 0;
    reg resetn = 0;
    reg [31 : 0] numerator = 0;
    reg [31 : 0] denominator = 0;
        
    wire [31 : 0] remainder;
    wire done;
    
    always #5 clk = ~clk;
    
    modulus #(
        .REG_WIDTH (32)
    )
    modulus_inst (
        .clk (clk),
        .enable (enable),
        .start_operation (start_operation),
        .resetn (resetn),
        .numerator (numerator),
        .denominator (denominator),
        
        .remainder (remainder),
        .done (done)
    );
    
    initial
    begin
        
        #10
        resetn = 1;
        enable = 1;
        numerator = 21;
        denominator = 7;
        #10
        start_operation = 1;
        #10
        #10
        #10
        #10
        #10
        #10
        #10
        #10
        #10
        #10
        #10
        #10
        #10
        $finish;
    end
    
endmodule
