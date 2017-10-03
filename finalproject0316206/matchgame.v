`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:47 01/08/2016 
// Design Name: 
// Module Name:    matchgame 
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
module matchgame(
    input clk,
	 input BTN_NORTH,
    input BTN_SOUTH,
	 input BTN_EAST,
	 input BTN_WEST,
	 output reg VGA_RED,
	 output reg  VGA_GREEN,
	 output reg  VGA_BLUE,
    output VGA_HSYNC,
    output VGA_VSYNC
    );	
	 reg [34:0] counter;
	 reg [10:0] pixel_col,pixel_row;
	 
	 wire e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;
	 wire visible;
	 wire [10:0] x,y;
	 wire word1,word2,word3,word4,word5,word6,word7,word8,word9,word10,word11,word12,word13,word14,word15,word16;
	 wire [4:0] choose_1,choose_2,point;
	 wire card_1,card_2,card_3,card_4,card_5,card_6,card_7,card_8,card_9,card_10,card_11,card_12,card_13,card_14,card_15,card_16;
	 wire C2,new_clk;//C2the signal of having chosen two cards
 
	assign VGA_HSYNC = ~( (pixel_col >= 919) & (pixel_col < 1039) );
	assign VGA_VSYNC = ~( (pixel_row >= 659) & (pixel_row < 665) );
	assign visible = ( (pixel_col >= 104) & (pixel_col < 904) & (pixel_row >= 23) & (pixel_row < 623));
	assign y = pixel_row - 23;
	assign x = pixel_col - 104;
	
tuzki t1(clk,x,y,word1);			tuzki t2(clk,x-100,y,word2);			tuzki t3(clk,x-200,y,word3);			tuzki t4(clk,x-300,y,word4);
tuzki t5(clk,x,y-140,word5);		tuzki t6(clk,x-100,y-140,word6);		tuzki t7(clk,x-200,y-140,word7);		tuzki t8(clk,x-300,y-140,word8);	
tuzki t9(clk,x,y-280,word9);		tuzki t10(clk,x-100,y-280,word10);	tuzki t11(clk,x-200,y-280,word11);	tuzki t12(clk,x-300,y-280,word12);
tuzki t13(clk,x,y-420,word13);	tuzki t14(clk,x-100,y-420,word14);	tuzki t15(clk,x-200,y-420,word15);	tuzki t16(clk,x-300,y-420,word16);

CARD_ELIMINATE CE1(choose_1,choose_2,C2,new_clk,BTN_SOUTH,BTN_NORTH,e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16);

POINT poi(new_clk,BTN_SOUTH,BTN_EAST,BTN_WEST,choose_1,choose_2,point);// to indicate which card to be pointed 
NEW_CLOCK ne(clk,new_clk);
CHOSE_CARD chose_card(point,new_clk,BTN_NORTH,BTN_SOUTH,choose_1,choose_2,C2);//choose_1 && choose_2 first && second choice of 16 cards
//CHOSE_CARD chose_card(point,clk,BTN_NORTH,BTN_SOUTH,choose_1,choose_2,C2);//choose_1 && choose_2 first && second choice of 16 cards

CARD_TURN card_turn(clk,BTN_SOUTH,choose_1,choose_2,card_1,card_2,card_3,card_4,card_5,card_6,card_7,card_8,card_9,card_10,card_11,card_12,card_13,card_14,card_15,card_16);//// if choose two card (choose_1 , choose_2) = (i , j) then card_i = card_j =1 to make the two cards revealed,else card = 0



always @(posedge clk)begin
	if(BTN_SOUTH) pixel_col <= 0;
	else if(pixel_col == 1039) pixel_col <= 0;
	else pixel_col <= pixel_col + 1;
end
always @(posedge clk)begin
	if(BTN_SOUTH) pixel_row <= 0;
	else if(pixel_row == 665) pixel_row <= 0;
	else if(pixel_col == 1039) pixel_row <= pixel_row + 1;
	else pixel_row <= pixel_row;
end

always @(posedge clk)begin
if(visible)begin	
		if(x>=210 && x<=290 && y>=40 && y <=140)begin//1 card
			if(e1)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_1 == 1 || point == 0)begin//tuzki turn black mean where you are 
				if(C2)begin
					if((x-250)*(x-250) +  (y-90)*(y-90) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 0)begin
					if(word1 == 1)begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
					else if(word1 == 0)begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
				end//two card are not ensure
			end//point end
			else begin
				if(word1 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word1 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//1 card end	
		else if(x>=310 && x<=390 && y>=40 && y <=140)begin//2 card
			if(e2)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_2 == 1 || point == 1)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-350)*(x-350) +  (y-90)*(y-90) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 1)begin
				if(word2 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word2 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word2 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word2 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//2 card end
		else if(x>=410 && x<=490 && y>=40 && y <=140)begin//3 card
			if(e3)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_3 == 1 || point == 2)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-450)*(x-450) +  (y-90)*(y-90) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 2)begin
				if(word3 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word3 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word3 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word3 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//3 card end
		else if(x>=510 && x<=590 && y>=40 && y <=140)begin//4 card
			if(e4)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_4 == 1 || point == 3)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-550)*(x-550) +  (y-90)*(y-90) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 3)begin
				if(word4 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word4 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word4 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word4 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//4 card end	
		else if(x>=210 && x<=290 && y>=180 && y <=280)begin//5 card
			if(e5)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_5 == 1 || point == 4)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-250)*(x-250) +  (y-230)*(y-230) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 4)begin
				if(word5 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word5 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word5 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word5 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//5 card end
		else if(x>=310 && x<=390 && y>=180 && y <=280)begin//6 card
			if(e6)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_6 == 1 || point == 5)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-350)*(x-350) +  (y-230)*(y-230) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 5)begin
				if(word6 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word6 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word6 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word6 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//6 card end
		else if(x>=410 && x<=490 && y>=180 && y <=280)begin//7 card
			if(e7)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_7 == 1 || point == 6)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-450)*(x-450) +  (y-230)*(y-230) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 6)begin
				if(word7 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word7 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word7 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word7 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//7 card end
		else if(x>=510 && x<=590 && y>=180 && y <=280)begin//8 card
			if(e8)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_8 == 1 || point == 7)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-550)*(x-550) +  (y-230)*(y-230) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 7)begin
				if(word8 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word8 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word8 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word8 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//8 card end
		else if(x>=210 && x<=290 && y>=320 && y <=420)begin//9 card
			if(e9)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else	if(card_9 == 1 || point == 8)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-250)*(x-250) +  (y-370)*(y-370) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 8)begin
				if(word9 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word9 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word9 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word9 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//9 card end	
		else if(x>=310 && x<=390 && y>=320 && y <=420)begin//10 card
			if(e10)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_10 == 1 || point == 9)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-350)*(x-350) +  (y-370)*(y-370) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 9)begin
				if(word10 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word10 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word10 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word10 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//10 card end
		else if(x>=410 && x<=490 && y>=320 && y <=420)begin//11 card
			if(e11)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			
			else if(card_11 == 1 || point == 10)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-450)*(x-450) +  (y-370)*(y-370) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 1;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 10)begin
				if(word11 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word11 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word11 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word11 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//11 card end
		else if(x>=510 && x<=590 && y>=320 && y <=420)begin//12card
			if(e12)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_12 == 1 || point == 11)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-550)*(x-550) +  (y-370)*(y-370) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 11)begin
				if(word12 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word12 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word12 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word12 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//12 card end	
		else if(x>=210 && x<=290 && y>=460&& y <=560)begin//13 card
			if(e13)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_13 == 1 || point == 12)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-250)*(x-250) +  (y-510)*(y-510) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 12)begin
				if(word13 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word13 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word13 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word13 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//13 card end
		else if(x>=310 && x<=390 && y>=460&& y <=560)begin//14 card
			if(e14)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_14 == 1 || point == 13)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-350)*(x-350) +  (y-510)*(y-510) <= 625)begin
						VGA_RED <= 0;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 1;
					end
				end//two card ensure turn two card
				else if(point == 13)begin
				if(word14 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word14 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word14 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word14 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//14 card end
		else if(x>=410 && x<=490 && y>=460&& y <=560)begin//15 card
			if(e15)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_15 == 1 || point == 14)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-450)*(x-450) +  (y-510)*(y-510) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 1;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 14)begin
				if(word15 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word15 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word15 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word15 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//15 card end
		else if(x>=510 && x<=590 && y>=460&& y <=560)begin//16 card
			if(e16)begin
				VGA_RED   <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE  <= 1;
			end
			else if(card_16 == 1 || point == 15)begin//tuzki turn black mean where you are
				if(C2)begin
					if((x-550)*(x-550) +  (y-510)*(y-510) <= 625)begin
						VGA_RED <= 1;
						VGA_GREEN <= 1;
						VGA_BLUE <= 1;
					end
					else begin
						VGA_RED <= 0;
						VGA_GREEN <= 0;
						VGA_BLUE <= 0;
					end
				end//two card ensure turn two card
				else if(point == 15)begin
				if(word16 == 1)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else if(word16 == 0)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end//two card are not ensure
			end//point end
			else begin
				if(word16 == 1)begin
					VGA_RED <= 0;
					VGA_GREEN <= 0;
					VGA_BLUE <= 0;
				end
				else if(word16 == 0)begin
					VGA_RED <= 1;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
				else begin
					VGA_RED <= 0;
					VGA_GREEN <= 1;
					VGA_BLUE <= 1;
				end
			end
		end//16 card end
		
		else begin//blue sky
				VGA_RED <= 0;
				VGA_GREEN <= 1;
				VGA_BLUE <= 1;
		end//blue sky end
end//visible end
	
else begin
		VGA_RED <= 0;
		VGA_GREEN <= 0;
		VGA_BLUE <= 0;
end//unvisible end
end//always end

endmodule


