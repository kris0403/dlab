`timescale 1ns / 1ps
module CARD_ELIMINATE(
	input [4:0] choose_1,
	input [4:0] choose_2,
	input C2,
	input new_clk,
	input rst,
	input north,
	output reg e1, output reg e2, output reg e3, output reg e4,
	output reg e5, output reg e6, output reg e7, output reg e8,
	output reg e9, output reg e10,output reg e11,output reg e12,
	output reg e13,output reg e14,output reg e15,output reg e16
);

always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e1 <= 0;
		e11<= 0;
	end
	else if(C2)begin
		if((choose_1 == 0 && choose_2 == 10) || (choose_1 == 10 && choose_2 == 0))begin
			e1 <= 1;
			e11<= 1;
		end
		else begin
			e1 <= 0;
			e11<= 0;
		end
	end
	else begin
		e1 <= e1;
		e11<= e11;
	end
end
always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e2 <= 0;
		e3 <= 0;
	end
	else if(C2)begin
		if((choose_1 == 1 && choose_2 == 2) || (choose_1 == 2 && choose_2 == 1))begin
			e2 <= 1;
			e3 <= 1;
		end
		else begin
			e2 <= 0;
			e3 <= 0;
		end
	end
	else begin
		e2 <= e2;
		e3 <= e3;
	end
end
always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e4 <= 0;
		e6 <= 0;
	end
	else if(C2)begin
		if((choose_1 == 3 && choose_2 == 5) || (choose_1 == 5 && choose_2 == 3))begin
			e4 <= 1;
			e6 <= 1;
		end
		else begin
			e4 <= 0;
			e6 <= 0;
		end
	end
	else begin
		e4 <= e4;
		e6 <= e6;
	end
end
always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e5 <= 0;
		e16<= 0;
	end
	else if(C2)begin
		if((choose_1 == 4 && choose_2 == 15) || (choose_1 == 15 && choose_2 == 4))begin
			e5 <= 1;
			e16<= 1;
		end
		else begin
			e5 <= 0;
			e16<= 0;
		end
	end
	else begin
		e5 <= e5;
		e16<= e16;
	end
end
always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e7 <= 0;
		e9 <= 0;
	end
	else if(C2)begin
		if((choose_1 == 6 && choose_2 == 8) || (choose_1 == 6 && choose_2 == 8))begin
			e7 <= 1;
			e9 <= 1;
		end
		else begin
			e7 <= 0;
			e9 <= 0;
		end
	end
	else begin
		e7 <= e7;
		e9 <= e9;
	end
end
always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e8 <= 0;
		e14<= 0;
	end
	else if(C2)begin
		if((choose_1 == 7 && choose_2 == 13) || (choose_1 == 7 && choose_2 == 13))begin
			e8 <= 1;
			e14<= 1;
		end
		else begin
			e8 <= 0;
			e14<= 0;
		end
	end
	else begin
		e8 <= e8;
		e14<= e14;
	end
end
always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e10 <= 0;
		e12<= 0;
	end
	else if(C2)begin
		if((choose_1 == 9 && choose_2 == 11) || (choose_1 == 9 && choose_2 == 11))begin
			e10 <= 1;
			e12 <= 1;
		end
		else begin
			e10 <= 0;
			e12 <= 0;
		end
	end
	else begin
		e10 <= e10;
		e12 <= e12;
	end
end
always@(posedge new_clk or posedge rst)begin
	if(rst)begin
		e13 <= 0;
		e15 <= 0;
	end
	else if(C2)begin
		if((choose_1 == 12 && choose_2 == 14) || (choose_1 == 12 && choose_2 == 14))begin
			e13 <= 1;
			e15 <= 1;
		end
		else begin
			e13 <= 0;
			e15 <= 0;
		end
	end
	else begin
		e13 <= e13;
		e15 <= e15;
	end
end
endmodule
