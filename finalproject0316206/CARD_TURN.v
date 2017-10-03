`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:15 01/08/2016 
// Design Name: 
// Module Name:    CARD_FLAG 
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
module CARD_TURN(//// if choose two card (choose_1 , choose_2) = (i , j) then card_i = card_j =1 to make the two cards revealed,else card = 0
    input clk,
    input rst,
	 input [4:0] choose_1,
    input [4:0] choose_2,
    output reg card_0,
    output reg card_1,
    output reg card_2,
    output reg card_3,
    output reg card_4,
    output reg card_5,
    output reg card_6,
    output reg card_7,
    output reg card_8,
	 output reg card_9,
	 output reg card_10,
	 output reg card_11,
	 output reg card_12,
	 output reg card_13,
	 output reg card_14,
	 output reg card_15
    );

always @(posedge clk)begin
	if(rst)begin
		card_0 <= 0;			card_1 <= 0;			card_2 <= 0;			card_3 <= 0;
		card_4 <= 0;			card_5 <= 0;			card_6 <= 0;			card_7 <= 0;
		card_8 <= 0;			card_9 <= 0;			card_10 <= 0;			card_11 <= 0;
		card_12 <=0;			card_13 <= 0;			card_14 <= 0;			card_15 <= 0;
	end
	else begin
	case(choose_1)
		0:begin 
			case(choose_2)
				1: begin
					card_0 <= 1;				card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				2: begin
					card_0 <= 1;				card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;			card_15 <=  0;
				end
				14: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		1:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				2: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin	
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;			card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		2:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;			card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		3:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		4:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		5:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		6:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;				card_6 <= 1;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;				card_6 <= 1;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		7:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;				card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		8:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;				card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		9:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;				card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <= 1;				card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;				card_9 <= 1;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		10:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <= 1;				card_10 <= 1;				card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;		card_11 <=  0;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		11:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <= 1;				card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <= 1;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		12:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <= 1;				card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		13:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <= 1;				card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <= 1;				card_14 <=  0;		card_15 <=  0;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		14:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <= 1;				card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <=  0;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;				card_14 <= 1;		card_15 <=  0;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <= 1;				card_15 <=  0;
				end
				15: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
		15:begin
			case(choose_2)
				0: begin
					card_0 <= 1;				card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end	
				1: begin
					card_0 <=  0;			card_1 <= 1;				card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				2: begin
					card_0 <=  0;			card_1<=  0;			card_2 <= 1;				card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				3: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <= 1;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				4: begin	
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <= 1;				card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				5: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <= 1;				card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				6: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <= 1;				card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				7: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <= 1;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				8: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= 1;				card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				9: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <= 1;				card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				10: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <= 1;				card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				11: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  0;		card_11 <= 1;
					card_12<=  0;				card_13 <=  0;		card_14 <=  0;		card_15 <= 1;
				end
				12: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12 <= 1;				card_13 <=  0;				card_14 <=  0;		card_15 <= 1;
				end
				13: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <= 1;		card_14 <=  0;				card_15 <= 1;
				end
				14: begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;		card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <= card_8 ;		card_9 <=  0;			card_10 <=  card_10;		card_11 <=  0;
					card_12<=  0;				card_13 <=  0;		card_14 <= 1;		card_15 <= 1;
				end
				default:begin
					card_0 <=  0;			card_1<=  0;			card_2 <=  0;			card_3 <=  0;
					card_4 <=  0;			card_5 <=  0;			card_6 <=  0;			card_7 <=  0;
					card_8 <=  0;			card_9 <=  0;			card_10 <=  0;		card_11 <=  0;
					card_12<=  0;		card_13 <=  0;		card_14 <=  0;		card_15 <=  0;
				end
			endcase
		end
	
	endcase
	end
	
end



endmodule
