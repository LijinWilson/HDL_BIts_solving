// Statement
// Create a one-bit wide, 2-to-1 multiplexer. When sel=0, choose a. When sel=1, choose b.

// Solution
module top_module( 
    input a, b, sel,
    output out ); 
    
    always @ * begin
        case (sel)
            1'b0 : out = a;
            1'b1 : out = b;
        endcase
    end

endmodule
