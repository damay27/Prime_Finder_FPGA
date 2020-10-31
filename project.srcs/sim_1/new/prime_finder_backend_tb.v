`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2020 01:08:42 PM
// Design Name: 
// Module Name: prime_finder_backend_tb
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


module prime_finder_backend_tb(

    );
    
    reg clk = 0;      
    reg resetn = 0;
    reg enable = 0;
    reg [31 : 0] start_number = 0;
    reg start_search = 0;
    
    wire [31 : 0] prime_number;
    wire done;
    
    prime_finder_backend #(
        .REG_WIDTH (32)
    )
    prime_finder_backend_inst(
        clk,
        resetn,
        enable,
        start_number,
        start_search,
        
        prime_number,
        done
    );
    
    always #5 clk = ~clk;
    
    initial
    begin
        resetn = 1;
        enable = 1;
        start_number = 0;
        start_search = 1;
        #100000
        $finish;
    end
    
endmodule
