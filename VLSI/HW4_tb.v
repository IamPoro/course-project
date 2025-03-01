`timescale 1 ns/1 ps

module hw4_tb;

reg CLK;
reg [5:0]WA;
reg [15:0]A_CPU;
reg WorC;
reg CEN;
reg [127:0]D;
wire [127:0]Q;
wire Hit;

hw4 U0(.CLK(CLK), .WA(WA), .A_CPU(A_CPU), .WorC(WorC), .CEN(CEN), .D(D), .Hit(Hit), .Q(Q));


initial begin
    CLK=1'b1; CEN=1'b1; WorC=1'b1; A_CPU=16'b0; WA=6'b0; D=128'b0;
    #20 CEN=1'b0; WorC=1'b0; A_CPU={4{4'b1010}}; WA=6'b101010; D={32{4'b1010}};
    #20 WorC=1'b1;
    #20 A_CPU={4{4'b0101}};
    #50
    $finish;
end

always #5 CLK = ~CLK;

initial begin
    $dumpfile("ram.fsdb");
    $dumpvars(0, hw4_tb);
end

endmodule