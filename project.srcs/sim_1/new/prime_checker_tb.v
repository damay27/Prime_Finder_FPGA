`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2020 05:38:52 PM
// Design Name: 
// Module Name: prime_checker_tb
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


module prime_checker_tb(

    );
    
    reg clk = 0;
    reg enable = 0;
    reg start_check = 0;
    reg resetn = 0;
    reg [31 : 0] prime_candidate = 0;
    wire is_prime;
    wire done;
    
    
    always #5 clk = ~clk;
    
    prime_checker #(
        .REG_WIDTH (32)
    )
    prime_checker(
        .clk (clk),
        .enable (enable),
        .start_check (start_check),
        .resetn(resetn),
        .prime_candidate (prime_candidate),
        .is_prime (is_prime),
        .done (done)
    );
    
    initial
    begin
        #10
        resetn = 1;
        enable = 1;
        prime_candidate = 5;
        start_check = 1;
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
        #10
        #10
        start_check = 0;
        #10
        prime_candidate = 13;
        start_check = 1;
        #100000
        start_check = 0;
        #10
        prime_candidate = 4;
        start_check = 1;
        #100000
        $finish;
        
    end
    
endmodule
