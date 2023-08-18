`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2022 10:43:13
// Design Name: 
// Module Name: mux_
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


module mux_(addr_out, select, addr, inter_addr);
input [13:0] addr;
input [13:0] inter_addr;
input select;
output [13:0] addr_out;

assign addr_out = ~select ? addr : inter_addr;

endmodule
