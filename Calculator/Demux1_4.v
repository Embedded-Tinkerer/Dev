module Demux1_4(S, E, sel);
output reg [3:0]S = [S4, S3, S2, S1];
input [1:0] sel;
input [3:0] E;

always @(E, sel)
begin
    case(sel)
    0: begin 
        S[0] = E; S[3:1] = 0;
    end
    1: begin
        S[1] = E; S[0] = 0;
    end
    2: begin
        S[2] = E; S[1:0] = 0;
    end
    3: begin
        S[3] = E; S[2:0] = 0;
    end
    endcase
end

endmodule 