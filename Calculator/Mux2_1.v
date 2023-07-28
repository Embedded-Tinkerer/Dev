module Mux2_1(E1, E2, S, Sel);
input [3:0] E1, E2;
input Sel;
output [1:0] S;

assign S = sel[1] ? E2 : E1;
endmodule 