// Notes       :
// Scalable Mux - Specification:
//   when sel_a = 1, out = in_a
//   when sel_a = 0, out = in_b
//   when sel_a = x, out = x


module scale_mux #(WIDTH = 1)
                  (output logic [WIDTH-1:0] out,
                   input  logic [WIDTH-1:0] in_a,
                   input  logic [WIDTH-1:0] in_b,
                   input  logic sel_a);

timeunit 1ns;
timeprecision 100ps;

always_comb
  unique case (sel_a)
    1'b1: out = in_a;
    1'b0: out = in_b;
    default: out = 'x;
  endcase

endmodule
