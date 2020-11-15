`timescale 1ns / 1ps

//This module checks if the given number is a prime number


module prime_checker(
        input clk,
        input enable,
        input resetn,
        input start_check,
        input [REG_WIDTH-1 : 0] prime_candidate,
        
        output is_prime,
        output done        
    );
    
    parameter REG_WIDTH = 32;
    
    reg start_check_state_0_reg = 0;
    reg start_check_state_1_reg = 0;
    reg start_check_state_2_reg = 0;
    
    reg [REG_WIDTH-1 : 0] prime_candidate_reg = 0;
    
    reg is_prime_reg = 0;
    assign is_prime = is_prime_reg;
    
    reg done_reg = 0;
    assign done = done_reg;
    
    localparam IDLE = 0;
    localparam CHECKING = 1;
    localparam IS_PRIME = 2;
    localparam NOT_PRIME = 3;
//    reg [1 : 0] state = IDLE;
    reg state = IDLE;
    
    reg start_operation_reg_mod = 0;
    reg [REG_WIDTH-1 : 0] denominator_reg_mod = 0;
    wire [REG_WIDTH-1 : 0] remainder_wire_mod;
    wire done_wire_mod;
    
    reg done_previous_state_0_reg = 0;
    reg done_previous_state_1_reg = 0;
    reg done_previous_state_2_reg = 0;
    
    ila_2 ila_2_inst (
        .clk (clk),
        .probe0 (done_wire_mod),
        .probe1 (start_check),
        .probe2 (start_operation_reg_mod),
        .probe3 (is_prime_reg),
        .probe4 (state),
        .probe5 (prime_reg_candidate),
        .probe6 (denominator_reg_mod), 
        .probe7 (remainder_wire_mod),
        .probe8 (prime_candidate),
        .probe9 (done_previous_state_0_reg),
        .probe10(done_previous_state_1_reg),
        .probe11 (done_previous_state_2_reg),
        .probe12 (start_check_state_0_reg), 
        .probe13 (start_check_state_1_reg),
        .probe14 (start_check_state_2_reg),
        .probe15 (done_reg)
    );
    
    //Modulus module and signals
    modulus #(
        .REG_WIDTH (REG_WIDTH)
    )
    modulus_inst(
        //Input
        .clk (clk),
        .enable (enable),
        .start_operation (start_operation_reg_mod),
        .resetn (resetn),
        .numerator (prime_candidate_reg),
        .denominator (denominator_reg_mod),
        
        //Output
        .remainder (remainder_wire_mod),
        .done (done_wire_mod)
    );
    
    
    always @ (posedge clk)
    begin
        
        start_check_state_0_reg <= start_check;
        start_check_state_1_reg <= start_check_state_0_reg;
        start_check_state_2_reg <= start_check_state_1_reg;
        
        done_previous_state_0_reg <= done_wire_mod;
        done_previous_state_1_reg <= done_previous_state_0_reg;
        done_previous_state_2_reg <= done_previous_state_1_reg;
        
        if(resetn == 0)
        begin
            state <= IDLE;
            prime_candidate_reg <= 0;
            is_prime_reg <= 0;
            done_reg <= 0;
            start_operation_reg_mod <= 0;
            denominator_reg_mod <= 0;
        end
        else
        begin
            if(enable == 1)
            begin
                case(state)
                    
                    IDLE:
                    begin
                                            
                        if(start_check_state_1_reg == 1 && start_check_state_2_reg == 0)
                        begin
                            if(prime_candidate >= 2)
                            begin
                                state <= CHECKING;
                                
                                //Setup and start the moduls module
                                prime_candidate_reg <= prime_candidate;
                                start_operation_reg_mod <= 1;
                                denominator_reg_mod <= 2;
                            end
                            //If the number is less than 2 then it can't be prime.
                            else
                            begin
                                state <= NOT_PRIME;
                                done_reg <= 0;
                                is_prime_reg <= 0;
                                start_operation_reg_mod <= 0;
                            end
                        end
                    end
                    
                    CHECKING:
                    begin
                        done_reg <= 0;
                        is_prime_reg <= 0;
                        start_operation_reg_mod <= 0;
                        //Check if the modulus module has finished
                        if(done_previous_state_1_reg == 1 && done_previous_state_2_reg == 0)
                        begin
                            //Was the number evenly divisible
                            if(remainder_wire_mod == 0)
                            begin
                                is_prime_reg <= 0;
                                done_reg <= 1;
                                state <= IDLE;
                            end
                            //Have we reached the number being checked
                            else if( (denominator_reg_mod + 1) == prime_candidate_reg)
                            begin
//                                state <= IS_PRIME;
                                is_prime_reg <= 1;
                                done_reg <= 1;
                                state <= IDLE;
                            end
                            //Keep checking
                            else
                            begin
                                denominator_reg_mod <= denominator_reg_mod + 1;
                                start_operation_reg_mod <= 1;
                                state <= CHECKING;
                            end
                        end
                        else
                        begin
                            state <= CHECKING;
                        end
                    end
                
//                    IS_PRIME:
//                    begin
//                        is_prime_reg <= 1;
//                        done_reg <= 1;
//                        state <= IDLE;
//                    end
                
//                    NOT_PRIME:
//                    begin
//                        is_prime_reg <= 0;
//                        done_reg <= 1;
//                        state <= IDLE;
//                    end
                    
                endcase
            end
        end
    end
endmodule
