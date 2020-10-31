`timescale 1ns / 1ps

//The point of this module is to find the modulus of 2 numbers with out using division.
//This allows the module to be run at a higher clock speed that it would be if the
//division or modulus operators were used.
//Additionally, this method (using subtraction) should be supported on more platforms.

module modulus(
        input clk,
        input enable,
        input start_operation,
        input resetn,
        input [REG_WIDTH-1 : 0] numerator,
        input [REG_WIDTH-1 : 0] denominator,
        
        output [REG_WIDTH-1 : 0] remainder,
        output done
        
    );
    
    parameter REG_WIDTH = 32;
    
    //States
    localparam IDLE = 0;
    localparam SUBTRACT = 1;
    
    reg [REG_WIDTH-1 : 0] numerator_reg = 0;
    reg [REG_WIDTH-1 : 0] denominator_reg = 0;
    
    //Used for detecting synchronous rising edges
    reg start_operation_stage_0_reg = 0;
    reg start_operation_stage_1_reg = 0;
    reg start_operation_stage_2_reg = 0;
    
    //Output registers. These will hold there values from
    //the time that the operation ends to when the next
    //operation starts. When the next operation starts they are reset
    //to zero.
    reg [REG_WIDTH-1 : 0] remainder_reg = 0;
    assign remainder = remainder_reg;
    reg done_reg = 0;
    assign done = done_reg;
    
    reg state = IDLE;
        
    always @ (posedge clk)
    begin
        start_operation_stage_0_reg <= start_operation;
        start_operation_stage_1_reg <= start_operation_stage_0_reg;
        start_operation_stage_2_reg <= start_operation_stage_1_reg;
        
        //When in reset clear all of the registers
        if(resetn == 0)
        begin
            numerator_reg <= 0;
            denominator_reg <= 0;
            remainder_reg <= 0;
            state <= IDLE;
        end
        else
        begin
            //Check if the module is enabled
            if(enable == 1)
            begin
                case(state)
                
                    IDLE:
                    begin
                    
                        //Check if the start_operation signal has experiance a state change
                        //in the last clock cycle.
                        if(start_operation_stage_1_reg == 1 && start_operation_stage_2_reg == 0)
                        begin
                            //If so then capture the input values in the registers
                            //and move to the subtraction state
                            state <= SUBTRACT;
                            numerator_reg <= numerator;
                            denominator_reg <= denominator;
                            
                            //Also clear the output values
                            remainder_reg <= 0;
                            done_reg <= 0;
                        end
                        
                    end
                    
                    SUBTRACT:
                    begin
                    
                        numerator_reg <= numerator_reg - denominator_reg;
                        
                        //Once the numerator is less than the denominator then
                        //the process has completed and the numerator register will
                        //hold the remainder of the operation (numerator / denominator)
                        if( (numerator_reg - denominator_reg) < denominator_reg)
                        begin
                            state <= IDLE;
                            remainder_reg <= (numerator_reg - denominator_reg);
                            done_reg <= 1;
                        end
                        //If the remainder has not been found yet stay in this state.
                        else
                        begin
                            state <= SUBTRACT;
                        end
                    end
                    
                    default: state <= IDLE;
                endcase
                    
            end
        end
    end
endmodule
