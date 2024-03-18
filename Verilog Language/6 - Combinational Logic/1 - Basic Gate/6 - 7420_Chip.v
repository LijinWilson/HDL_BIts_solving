// SOlution
module top_module ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire nand1_out, nand2_out;
    nand(nand1_out, p1a, p1b, p1c, p1d);
    nand(nand2_out, p2a, p2b, p2c, p2d);
    
    assign p1y = nand1_out;
    assign p2y = nand2_out;


endmodule
