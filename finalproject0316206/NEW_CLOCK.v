`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:09 01/08/2016 
// Design Name: 
// Module Name:    NEW_CLOCK 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module NEW_CLOCK(
    input clk,
    output reg new_clk
    );
reg [26:0] count;

always@(posedge clk)begin
	if(count < 25000000) count <= count +1;
	else count <= 0;
end

always@ (posedge clk)begin
	if(count == 0) new_clk <= ~new_clk;
	else  new_clk <= new_clk;
end


endmodule
