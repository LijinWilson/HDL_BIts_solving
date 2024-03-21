// Statement

// A heating/cooling thermostat controls both a heater (during winter) and an air conditioner (during summer).
// Implement a circuit that will turn on and off the heater, air conditioning, and blower fan as appropriate.

// The thermostat can be in one of two modes: heating (mode = 1) and cooling (mode = 0). In heating mode,
// turn the heater on when it is too cold (too_cold = 1) but do not use the air conditioner. In cooling mode, turn the air conditioner
// on when it is too hot (too_hot = 1), but do not turn on the heater. When the heater or air conditioner are on, also turn on the fan to
// circulate the air. In addition, the user can also request the fan to turn on (fan_on = 1), even if the heater and air conditioner are off.

// Try to use only assign statements, to see whether you can translate a problem description into a collection of logic gates.

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
