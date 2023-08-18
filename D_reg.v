`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2022 06:52:59
// Design Name: 
// Module Name: D_reg
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


module D_reg(Q,in,D,grnd,sel1,sel,clk);
input in,grnd,D,sel1,sel,clk;
output reg Q;
reg out1,out2;
always@(posedge clk)
begin
if(sel1) out1=in;
else out1=grnd;
end
always@(posedge clk)
begin
if(sel) out2=D;
else out2=out1;
end
always@(posedge clk)
begin
Q<=out2;
end
endmodule
