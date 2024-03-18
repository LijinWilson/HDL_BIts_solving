// SOlution
module top_module (
    input in1,
    input in2,
    output out);
    
    // in Behavioral level
    // assign out = ~(in1 || in2);
    
    //  in gate level (verilog inbuilt function)
    // nor(output port, input ports...);
    
    nor(out, in1, in2);

endmodule
