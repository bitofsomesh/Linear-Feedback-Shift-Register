`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2022 06:52:28
// Design Name: 
// Module Name: AGU
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


module lfsr_AGU(in,sel,sel1,clk,grnd,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,inter_add);
     input in,clk,sel,sel1,grnd;
     output Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14;
     output [13:0] inter_add;
     wire A,B,D;
     D_reg   Dreg1(.Q(Q1),.in(in),.sel(sel),.sel1(sel1),.D(D),.grnd(grnd),.clk(clk));
     D_reg   Dreg2(.Q(Q2),.in(in),.sel(sel),.sel1(sel1),.D(Q1),.grnd(grnd),.clk(clk));
     D_reg   Dreg3(.Q(Q3),.in(in),.sel(sel),.sel1(sel1),.D(Q2),.grnd(grnd),.clk(clk));
     D_reg   Dreg4(.Q(Q4),.in(in),.sel(sel),.sel1(sel1),.D(Q3),.grnd(grnd),.clk(clk));
     D_reg   Dreg5(.Q(Q5),.in(in),.sel(sel),.sel1(sel1),.D(Q4),.grnd(grnd),.clk(clk));
     D_reg   Dreg6(.Q(Q6),.in(in),.sel(sel),.sel1(sel1),.D(Q5),.grnd(grnd),.clk(clk));
     D_reg   Dreg7(.Q(Q7),.in(in),.sel(sel),.sel1(sel1),.D(Q6),.grnd(grnd),.clk(clk));
     D_reg   Dreg8(.Q(Q8),.in(in),.sel(sel),.sel1(sel1),.D(Q7),.grnd(grnd),.clk(clk));
     D_reg   Dreg9(.Q(Q9),.in(in),.sel(sel),.sel1(sel1),.D(Q8),.grnd(grnd),.clk(clk));
     D_reg   Dreg10(.Q(Q10),.in(in),.sel(sel),.sel1(sel1),.D(Q9),.grnd(grnd),.clk(clk));
     D_reg   Dreg11(.Q(Q11),.in(in),.sel(sel),.sel1(sel1),.D(Q10),.grnd(grnd),.clk(clk));
     D_reg   Dreg12(.Q(Q12),.in(in),.sel(sel),.sel1(sel1),.D(Q11),.grnd(grnd),.clk(clk));
     D_reg   Dreg13(.Q(Q13),.in(in),.sel(sel),.sel1(sel1),.D(Q12),.grnd(grnd),.clk(clk));
     D_reg   Dreg14(.Q(Q14),.in(in),.sel(sel),.sel1(sel1),.D(Q13),.grnd(grnd),.clk(clk));
     
     assign A=Q13^Q14;
     assign B=A^Q12;
     assign D=B^Q2;
     
      comp_unit cu1(.inter_add(inter_add),.Q1(Q1),.Q2(Q2),.Q3(Q3),.Q4(Q4),.Q5(Q5),.Q6(Q6),.Q7(Q7),.Q8(Q8),.Q9(Q9),.Q10(Q10),.Q11(Q11),.Q12(Q12),.Q13(Q13),.Q14(Q14));
endmodule
