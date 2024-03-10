// Solution

// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
	
    // priority encoder will select the inputs based on priority.
    
    // For Example consider, input = 4'b1100, output will be 2'd2
    // In encoder we have 4 input device, if third device become active it will sent location of that device
    // to the encoder that is 0011 .
    // if their is 2 device multiply become active, we select it by using the priority encoder
    // consider their is 4 device input it sent 1001, here priority select the msb to the output
    // ie,something at 00 memory possition, ie at pos 0 become active.
	// here we having 4 bit input that means 16 combination, we have 4 device as input which can active at 16 ways, we want to select the device position most significant bit
    
	// Logic - 1
    always @(*) begin
        case(in)
            4'd0: pos=2'd0;
            4'd1: pos=2'd0;
            4'd2: pos=2'd1;
            4'd3: pos=2'd0;
            4'd4: pos=2'd2;
            4'd5: pos=2'd0;
            4'd6: pos=2'd1;
            4'd7: pos=2'd0;
            4'd8: pos=2'd3;
            4'd9: pos=2'd0;
            4'd10: pos=2'd1;
            4'd11: pos=2'd0;
            4'd12: pos=2'd2;
            4'd13: pos=2'd0;
            4'd14: pos=2'd1;
            4'd15: pos=2'd0;
        endcase
    end
	
	// Logic - 2
	always @(*) begin
        if (in[0]==1'b1)
            pos = 0;
        else if (in[1]==1'b1)
            pos = 1;
        else if (in[2]==1'b1)
            pos = 2;
        else if (in[3]==1'b1)
            pos = 3;
        else
            pos = 0;
    end
	
	// Logic - 3
	// using casez statement
	always @(*) begin
        // here we using the casez
        casez(in)
            // the order is strict in these case;
			// if order changes logic will break, we can prevent this order error by replacing zero with z that succeds the z, eg: zz10, z100
			// we can also replace the z with ?(not for making the error freeing)
            4'bzzz1: pos = 2'b00;
            4'bzz1z: pos = 2'b01;
            4'bz1zz: pos = 2'b10;
            4'b1zzz: pos = 2'b11;
            default: pos = 0;
        endcase
    end
    
    
endmodule
