`timescale 1ns / 1ps


module mux4X1(input i0,i1,i2,i3,s1,s0,output y);
assign y=(((~s1)&(~s0)&i0)|((~s1)&s0&i1)|(s1&(~s0)&i2)|(s1&s0&i3));
endmodule
module barrel_shifter(output [3:0]y,input [3:0]x,input s1,s0);
mux4X1 m1(x[3],x[0],x[1],x[2],s1,s0,y[3]);
mux4X1 m2(x[2],x[3],x[0],x[1],s1,s0,y[2]);
mux4X1 m3(x[1],x[2],x[3],x[0],s1,s0,y[1]);
mux4X1 m4(x[0],x[1],x[2],x[3],s1,s0,y[0]);


endmodule
