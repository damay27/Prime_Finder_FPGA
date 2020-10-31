`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2020 06:16:13 PM
// Design Name: 
// Module Name: prime_finder_backend
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


module prime_finder_backend(
        input clk,
        input resetn,
        input enable,
        input [REG_WIDTH-1 : 0] start_number,
        input start_search,
        
        output [REG_WIDTH-1 : 0] prime_number,
        output done
    );
    
    parameter REG_WIDTH = 32;
    
    localparam IDLE = 0;
    localparam SEARCHING = 1;
    reg state = 0;
    
    reg start_check_reg = 0;
    reg [REG_WIDTH-1 : 0] number_increment_reg = 0;
    
    //Check when this module should start running
    reg start_search_stage_0_reg = 0;
    reg start_search_stage_1_reg = 0;
    reg start_search_stage_2_reg = 0;
    
    reg done_reg = 0;
    assign done = done_reg;
    
    reg [REG_WIDTH-1 : 0] prime_number_reg = 0;
    assign prime_number = prime_number_reg;
    
    
    wire is_prime_wire;
    wire done_checker_wire;
    
    //Detect when the prime checker is complete
    reg done_checker_state_0_reg = 0;
    reg done_checker_state_1_reg = 0;
    reg done_checker_state_2_reg = 0;
    
    ila_1 ila_1_inst (
        .clk(clk),
        .probe0 (start_number),
        .probe1 (start_search),
        .probe2 (done_reg),
        .probe3 (start_check_reg),
        .probe4 (number_increment_reg),
        .probe5 (state),
        .probe6 (done_checker_state_0_reg),
        .probe7 (done_checker_state_1_reg),
        .probe8 (done_checker_state_2_reg),
        .probe9 (start_search_stage_0_reg),
        .probe10 (start_search_stage_1_reg),
        .probe11 (start_search_stage_2_reg),
        .probe12 (is_prime_wire),
        .probe13 (done_checker_wire)
    );
    
    prime_checker #(
        .REG_WIDTH (REG_WIDTH)
    )
    prime_checker_inst (
        .clk (clk),
        .enable (enable),
        .resetn (resetn),
        .start_check (start_check_reg),
        .prime_candidate (number_increment_reg),
        
        .is_prime (is_prime_wire),
        .done (done_checker_wire)   
    );
    
    
    always @(posedge clk)
    begin
        start_search_stage_0_reg <= start_search;
        start_search_stage_1_reg <= start_search_stage_0_reg;
        start_search_stage_2_reg <= start_search_stage_1_reg;
        
        done_checker_state_0_reg <= done_checker_wire;
        done_checker_state_1_reg <= done_checker_state_0_reg;
        done_checker_state_2_reg <= done_checker_state_1_reg;
        
        if(resetn == 0)
        begin
            start_check_reg <= 0;
            number_increment_reg <= 0;
            done_reg <= 0;            
            prime_number_reg <= 0;
        end
        else
        begin
            if(enable == 1)
            begin
                    case(state)
                
                        IDLE:
                        begin
                            if(start_search_stage_1_reg == 1 && start_search_stage_2_reg == 0)
                            begin
                                if(start_number >= 2)
                                begin
                                    done_reg <= 0;
                                    number_increment_reg <= start_number + 1;
                                    start_check_reg <= 1; 
                                    state <= SEARCHING;
                                end
                                else
                                begin
                                    prime_number_reg <= 2;
                                    done_reg <= 1;
                                    state <= IDLE;
                                end
                            end
                        end

                        
                        SEARCHING:
                        begin
                            start_check_reg <= 0;
                            if(done_checker_state_1_reg == 1 && done_checker_state_2_reg == 0)
                            begin
                                //When the current number is prime
                               if(is_prime_wire == 1)
                               begin
                                    prime_number_reg <= number_increment_reg;
                                    done_reg <= 1;
                                    state <= IDLE;
                               end
                               //When the number is not prime
                               else
                               begin
                                    number_increment_reg <= number_increment_reg + 1;
                                    start_check_reg <= 1;
                                    state <= SEARCHING;
                               end 
                            end
                            
                        end
                
                    endcase
            end
        end
    end
    
endmodule
