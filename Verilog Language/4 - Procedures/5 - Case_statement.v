// Statement
// Case statements are more convenient than if statements if there are a large number of cases. So, in this exercise,
// create a 6-to-1 multiplexer. When sel is between 0 and 5, choose the corresponding data input.
// Otherwise, output 0. The data inputs and outputs are all 4 bits wide.


// Solution
// we have use the default statement in the case statements.or else it will creat an bug

// synthesis verilog_input_version verilog_2001
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel) 
            4'b0000 :out = data0; 
            4'b0001 :out = data1;
            4'b0010 :out = data2;
            4'b0011 :out = data3;
            4'b0100 :out = data4;
            4'b0101 :out = data5;
            default :out = 4'b0000;
        endcase
    end

endmodule
