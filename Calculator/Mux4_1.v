module Mux4_1(E1, E2, E3, E4, S, sel);
input [3:0] E1, E2, E3, E4;
input [1:0] sel;
output [3:0] S;

assign S = sel[1] ? (sel [0] ? E4 : E3) : (sel [0] ? E2 : E1);

endmodule 