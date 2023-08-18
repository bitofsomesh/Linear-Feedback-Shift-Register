`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2022 06:56:52
// Design Name: 
// Module Name: LFSR_interleaver
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


module LFSR_interleaver(interleaved_data, st, clk, incoming_data, in, sel, sel1, cs, grnd);
input [31:0] incoming_data;
input clk, st;
input in, sel, sel1, grnd, cs;
output [31:0] interleaved_data;

wire rst;
wire [13:0] addr;
wire [13:0] inter_addr;
wire [13:0] addr_out;

    counter_  c1(.addr(addr), .clk(clk), .st(st), .rst(rst));
    lfsr_AGU  l1(.in(in), .sel(sel), .sel1(sel1), .clk(clk), .grnd(grnd), .inter_add(inter_addr));
    mux_      m1(.addr_out(addr_out), .select(rst), .addr(addr), .inter_addr(inter_addr));
    RAM_       r1(.addr(addr_out), .clk(clk), .incoming_data(incoming_data), .interleaved_data(interleaved_data), .rd(rst), .cs(cs));
endmodule
