`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:49 02/18/2021 
// Design Name: 
// Module Name:    display 
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
module display(
	input [3:0] bcd, 
	output tr,
	output reg [6:0] salidas
    );
	 
	assign tr=1;
	
always@(bcd) begin

				case(bcd)
	
				4'b0000: salidas <= 7'b0110000;
				4'b0001: salidas <= 7'b1101101;
				4'b0010: salidas <= 7'b1111001;
				4'b0011: salidas <= 7'b0110011;
				4'b0100: salidas <= 7'b1011011;
				default: salidas <= 7'b0110111;
	
				endcase
				
			end
	
	endmodule
