module ALU(opA, opB, Res, A_sup_B, A_inf_B, A_Egal_B, OVFL, ZERO, Neg, OpCode);
    input [3:0] opA, opB;
    input OpCode[2:0];
    output [3:0] Res;
    output A_Egal_B, A_inf_B, A_sup_B, OVFL, ZERO, Neg;

always @(opA, opB, OpCode)
begin
    case(OpCode)
    0 : Res = opA & opB; //And
    1 : Res = ~(opA & opB); //Nand
    2 : Res = opA | opB; //Or 
    3 : Res = ~(opA | opB); //Nor
    4 : Res = (opA ^ opB); //Xor    
    5 : Res = ~opA; //Not
    6 : Res = opA + opB; //Add
    7 : Res = opA - opB; //Sub
    endcase
end

endmodule
