`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:17 02/18/2021 
// Design Name: 
// Module Name:    montacargas 
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
module montacarga(
output[1:0] salida,
output reg led_emergencia,
output reg led_puerta,
output[6:0] display,
//entradas de la maquina de estado y de los flip flop
input  [4:0] selector, 
input clk, reset,fc1,fc2,fc3,fc4,fc5,emergencia, puerta,
output tr
  ); 
	
reg[3:0]estado;

//definicion de estados

parameter piso1 = 4'b0000, 
			 piso2 = 4'b0001,
			 piso3 = 4'b0010,
			 piso4 = 4'b0011, 
			 piso5 = 4'b0100,
			 subir2 = 4'b0101,
			 subir3 = 4'b0110,
			 subir4 = 4'b0111,
			 subir5 = 4'b1000,
			 bajar1 = 4'b1001,
			 bajar2 = 4'b1010,
			 bajar3 = 4'b1011,
			 bajar4 = 4'b1100;
			 
//Parametrizacion de los pulsadores
			 
parameter p1 = 5'b10000,
			 p2 = 5'b01000,
			 p3 = 5'b00100,
			 p4 = 5'b00010,
			 p5 = 5'b00001;

//Lista sensible, colocamos nuestros disparadores de flancos.			

always@(posedge clk, negedge reset)

	if (reset == 0) 
	begin //Delimitacion de comportamiento
	estado <= piso1;
	end//Delimitacion de comportamiento
	else case(estado)

	 piso1:  begin  //Delimitacion de comportamiento nº1: BOTON DE EMERGENCIA.
				 if(~emergencia)
				  begin//Delimitacion de comportamiento nº2: PUERTA ABIERTA/CERRADA.
				   led_emergencia <= 1'b0;
				   if (~puerta)
				   begin //Delimitacion de comportamiento nº3: Movimiento del ascensor.
				     begin //Delimitacion de comportamiento nº4: Indicador led de la puerta.
				      led_puerta<=1'b0;
				     end 
						if(selector == p2) 
						estado <= subir2; 
						else if (selector == p3) 
						estado <= subir3;
						else if (selector == p4) 
						estado <= subir4;
						else if (selector == p5)
						estado <= subir5;
						else estado <= piso1;
				   end //Delimitacion de comportamiento nº3
				  else 
					begin //Delimitacion de comportamiento nº5
						if (puerta)
						led_puerta <=1'b1;
						else
						led_puerta<=1'b0;
					end
				end
				else 
				led_emergencia <= 1'b1;
			  end

 
piso2:	begin 
				if(~emergencia)
					begin 
					led_emergencia <= 1'b0;
						if (~puerta)
					begin
					begin
						led_puerta<=1'b0;
					end	
					if(selector == p3) 
					estado <= subir3; 
					else if (selector == p4) 
					estado <= subir4;
					else if (selector == p5) 
					estado <= subir5;
					else if (selector == p1) 
					estado <= bajar1;
					else estado <= piso2;
					end
				else
					begin
					if (puerta)
					led_puerta<=1'b1;
					else
					led_puerta<=1'b0;
					end
				end
				else 
				begin
				led_emergencia <=1'b1;
				if (~puerta)
				begin
				led_puerta<=1'b0;
				estado <= bajar1;
				end
				else 
				led_puerta<=1'b1;
				end
				end
			
piso3:	begin 
				if(~emergencia)
				begin 
					led_emergencia <= 1'b0;
						if (~puerta)
						begin
							begin
								led_puerta<=1'b0;
							end
						if(selector == p4) 
							estado <= subir4; 
						else if (selector == p5) 
							estado <= subir5;
						else if (selector == p2) 
							estado <= bajar2;
						else if (selector == p1) 
							estado <= bajar1;
						else estado <= piso3;
					end
					else 
					begin
						if (puerta)
							led_puerta<=1'b1;
						else
							led_puerta<=1'b0;
					end
				end
				else
				begin
					led_emergencia<=1'b1;
					if (~puerta)
						begin
							led_puerta<=1'b0;
							estado <= bajar1;
						end
					else 
						led_puerta<=1'b1;
				end
			end
			
piso4:  	begin	
				if(~emergencia)
				begin 
					led_emergencia<=1'b0;
						if (~puerta)
						begin
							begin
								led_puerta<=1'b0;
							end
						if(selector == p5)
							estado <= subir5; 
						else if (selector == p3) 
							estado <= bajar3;
						else if (selector == p2) 
							estado <= bajar2;
						else if (selector == p1) 
							estado <= bajar1;
						else estado <= piso4;
					end
				else
						begin
							if (puerta)
								led_puerta<=1'b1;
							else
								led_puerta<=1'b0;
						end
					end
				else 
					begin
						led_emergencia<=1'b1;
						if (~puerta)
							begin
								led_puerta<=1'b0;
								estado <= bajar1;
							end
						else 
							led_puerta<=1'b1;
					end
			end
		 
piso5:	begin 
				if(~emergencia)
				begin 
					led_emergencia<=1'b0;
						if (~puerta)
						begin
							begin
								led_puerta<=1'b0;
							end
						if(selector == p4)
							estado <= bajar4; 
						else if (selector == p3)
							estado <= bajar3;
						else if (selector == p2) 
							estado <= bajar2;
						else if (selector == p1) 
							estado <= bajar1;
						else estado <= piso5;
					end
				else
						begin
							if (puerta)
								led_puerta<=1'b1;
							else
								led_puerta<=1'b0;
						end
					end
					
				else 
					begin
						led_emergencia<=1'b1;
						if (~puerta)
							begin
								led_puerta<=1'b0;
								estado <= bajar1;
							end
						else 
							led_puerta<=1'b1;
					end
			end
		 
subir2:  begin		
				if (~puerta)
				begin 
					if(fc2) 
						estado <= piso2;
					else 
						estado <= subir2;
					if (emergencia)
						begin
							estado <= bajar1;
							led_emergencia<=1'b1;
						end
						led_puerta<=1'b0;
				end
				else 
				begin
						led_puerta<=1'b1;
				end
			end
		
subir3: 	begin 
				if (~puerta)
				begin 
					if(fc3) 
						estado <= piso3;
					else 
						estado <= subir3;
					if (emergencia)
						begin
							estado <= bajar1;
							led_emergencia<=1'b1;
						end
						led_puerta<=1'b0;
				end
				else 
				begin
						led_puerta<=1'b1;
				end
			end
	
subir4:  begin 
				if (~puerta)
				begin 
					if(fc4) 
						estado <= piso4;
					else 
						estado <= subir4;		
					if (emergencia)
						begin
							estado <= bajar1;
							led_emergencia<=1'b1;
						end
						led_puerta<=1'b0;
						
				end
					else 
				begin
						led_puerta<=1'b1;
				end 
			end
		
subir5:  begin 
				if (~puerta)
				begin 
					if(fc5) 
						estado <= piso5;
					else 
						estado <= subir5;
					if (emergencia)
						begin
							estado <= bajar1;
							led_emergencia<=1'b1;
						end
						led_puerta<=1'b0;
				end
				else 
				begin
						led_puerta<=1'b1;
					
				end
			end
	
bajar1:  begin	
				if (~puerta)
				begin
					if (emergencia)
					begin
						led_emergencia<=1'b1;
						estado <= piso1;
					end
					if(fc1) 
						estado <= piso1;
					else 
						estado <= bajar1;
						led_puerta<=1'b0;
						
				end
				else
					begin 
						led_puerta<=1'b1;
					end 
			end
	
bajar2: 	begin 
				if (~puerta)
				begin
					if (emergencia)
					begin
						led_emergencia<=1'b1;
						estado <= piso1;
					end
					if(fc2) 
						estado <= piso2;
					else 
						estado <= bajar2;
					led_puerta<=1'b0;
				end
				else
					begin 
						led_puerta<=1'b1;
					end
			end
			
bajar3:  begin 
				if (~puerta)
				begin
					if (emergencia)
					begin
						led_emergencia<=1'b1;
						estado <= piso1;
					end 
					if(fc3) 
						estado <= piso3;
					else 
						estado <= bajar3;
					led_puerta<=1'b0;
				end
			else
					begin 
						led_puerta<=1'b1;
					end
			end
			
bajar4: 	begin 
				if (~puerta)
				begin
					if (emergencia)
					begin
						led_emergencia<=1'b1;
						estado <= piso1;
					end 
					if(fc4) 
						estado <= piso4;
					else 
						estado <= bajar4;
						led_puerta<=1'b0;
				end
			else
					begin 
							led_puerta<=1'b1;
					end
			end
			
			default : begin  // Fault Recovery
               estado <= piso1;
            end  
		endcase
		



salidaMotores inst_motor(.estado(estado), .y_out(salida));

display inst_seg(.bcd(estado), .tr(tr), .salidas(display));

endmodule
