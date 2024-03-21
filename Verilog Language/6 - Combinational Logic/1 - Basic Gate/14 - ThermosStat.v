// Solution
module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    
    // fan must be on if the heater or the ac is ON or user can directly ON the fan only;
    // AC must the On when both the too_hot and mode is true;
    // Heater must be ON, When too_cold is true and mode is false;
    assign aircon = too_hot && ~mode;
    assign heater = too_cold && mode;
    assign fan = fan_on || aircon || heater;
    

endmodule
