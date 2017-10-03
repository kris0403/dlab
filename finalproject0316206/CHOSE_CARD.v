`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:03 01/08/2016 
// Design Name: 
// Module Name:    CHOSE_CARD 
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
module CHOSE_CARD(
    input [4:0] point,
    input new_clk,
    input north,
	 input rst,
    output reg [4:0] choose_1, //first choice of 16 cards
    output reg [4:0] choose_2,//second choice of 16 cards
	 output reg C2//the signal of having chosen two cards
    );
always @(posedge new_clk  or posedge north)begin
/*	if(rst)begin
		choose_1 <= 16;
	end*/
	if(north)begin
		if(choose_1==16)begin
			choose_1 <= point;
		end
		else begin
			choose_1 <= choose_1;
		end
	end
	else if(choose_2 == 16)begin
		choose_1 <= choose_1;
	end
	else begin
		choose_1 <= 16;
	end
end


always @(posedge new_clk  or posedge north)begin
/*	if(rst)begin
		choose_2 <= 16;
	end*/
	if(north)begin
		if(choose_2==16 && choose_1 <16)begin
			choose_2 <= point;
		end
		else begin
			choose_2 <= choose_2;
		end
	end
	else begin
		choose_2 <= 16;
	end
end

always @(posedge new_clk)begin
	/*if(rst) C2 <= 0;
	else */if(choose_1 <16 && choose_2 <16) C2 <= 1;
	else C2 <= 0;
end

















































































































/*
always @(posedge new_clk or posedge rst or posedge north)begin
	if(rst)begin
		choose_1 <=5'd16;// "16" means that there is no number chosen 
		choose_2 <=5'd16;
	end
	else if(north)begin
		if(choose_1 == 16)begin
			choose_1 <= point;
			choose_2 <= choose_2;
		end
		else if(choose_2 == 16)begin
			choose_1 <= choose_1;
			choose_2 <= point;
		end
	end
	else if(C2)begin // to start the next round
		choose_1 <= 16;
		choose_2 <= 16;
	end
	else begin
		choose_1 <= 16;
		choose_2 <= 16;
	end
end

always @(posedge new_clk or posedge rst)begin
	if(rst) C2 <= 0;
	else if((choose_1 < 16 && choose_1 >= 0) && (choose_2 < 16 && choose_2 >= 0))begin // there are two cards to be chosen
		C2 <= 1;
	end  
	else C2 <= 0;
end
*/
endmodule
