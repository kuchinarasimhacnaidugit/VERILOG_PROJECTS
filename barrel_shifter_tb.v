`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 18:49:32
// Design Name: 
// Module Name: barrel_shifter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module barrel_shifter_tb;
reg [3:0]x;
reg [1:0]s;
wire [3:0]y;
barrel_shifter b1(
    .y(y),
    .x(x),
    .s1(s[1]),
    .s0(s[0])
);
initial begin
$monitor("%d",y);
x=4'b0101;
s=2'b00;
#5 s=2'b01;
#5 s=2'b10;
#5 s=2'b11;
#100 $finish;
end
endmodule
