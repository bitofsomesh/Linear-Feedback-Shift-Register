`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2022 09:36:20
// Design Name: 
// Module Name: RAM_
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


module RAM_(addr, clk, incoming_data, interleaved_data, cs, rd);
input [13:0] addr;
input clk, rd, cs;
input [31:0] incoming_data;
output [31:0] interleaved_data;
//output [31:0] interleaved_data;

reg [31:0] mem [12283:0];
reg [31:0] d_out;

assign interleaved_data = (~cs && rd) ? d_out : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;

always@(posedge clk)
begin
if(~cs && ~rd) mem[addr] <= incoming_data;
end
always@(posedge clk)
begin
if(~cs && rd) d_out <= mem[addr]; 
end
endmodule
