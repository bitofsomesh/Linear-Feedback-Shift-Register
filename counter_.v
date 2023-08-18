`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2022 10:17:48
// Design Name: 
// Module Name: counter_
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


module counter_(addr, clk, st, rst);
input clk, st;
output reg rst;
output reg [13:0] addr;

always@(posedge clk)
begin
if (st) addr<=addr+1;
else addr=1'b0;
end
always@(posedge clk)
begin
if (addr<12282) rst <= 1'b0;
else rst <= 1'b1;
end
endmodule
