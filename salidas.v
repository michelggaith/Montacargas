`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:27 02/18/2021 
// Design Name: 
// Module Name:    salidas 
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
module salidaMotores(
	input [3:0] estado, 
	output reg [1:0] y_out
    );
parameter piso1 = 4'b0000, piso2 = 4'b0001, piso3 = 4'b0010, piso4 = 4'b0011, piso5 = 4'b0100,subir2 = 4'b0101, subir3 = 4'b0110;
parameter subir4 = 4'b0111, subir5 = 4'b1000, bajar1 = 4'b1001,bajar2 = 4'b1010, bajar3 = 4'b1011, bajar4 = 4'b1100;
parameter y1 = 2'b00, y2 = 2'b10, y3 = 2'b01;

always@(estado) 
	begin
	case(estado)
		piso1:   y_out<=y1; 
		piso2:   y_out<=y1; 
		piso3:   y_out<=y1; 
		piso4:   y_out<=y1; 
		piso5:   y_out<=y1; 
		subir2:  y_out<=y2; 
		subir3:  y_out<=y2; 
		subir4:  y_out<=y2; 
		subir5:  y_out<=y2; 
		bajar1:  y_out<=y3; 
		bajar2:  y_out<=y3; 
		bajar3:  y_out<=y3; 
		bajar4:  y_out<=y3; 
		default: y_out <= 2'b11;
	endcase
 	end
endmodule
