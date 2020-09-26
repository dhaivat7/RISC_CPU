module register (
// SystemVerilog: logic data type
                output logic [7:0] out,
                input  logic [7:0] data ,
                input        clk  ,
                input        enable  ,
                input        rst_
                );
// SystemVerilog: time unit and time precision declaration
timeunit 1ns;
timeprecision 100ps;

// SystemVerilog: always_ff - sequential behavior intent specification
always_ff @(posedge clk, negedge rst_)
    if (!rst_)
      out <= 0;
    else if (enable)
      out <= data;

endmodule
