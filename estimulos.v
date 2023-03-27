`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:34 02/18/2021
// Design Name:   montacarga
// Module Name:   C:/Xilinx/montacargas/estimulos.v
// Project Name:  montacargas
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: montacarga
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module estimulos;

	// Inputs
	reg [4:0] selector;
	reg clk;
	reg reset;
	reg fc1;
	reg fc2;
	reg fc3;
	reg fc4;
	reg fc5;
	reg emergencia;
	reg puerta;

	// Outputs
	wire [1:0] salida;
	wire led_emergencia;
	wire led_puerta;
	wire [6:0] display;
	wire tr;

	// Instantiate the Unit Under Test (UUT)
	montacarga uut (
		.salida(salida), 
		.led_emergencia(led_emergencia), 
		.led_puerta(led_puerta), 
		.display(display), 
		.selector(selector), 
		.clk(clk), 
		.reset(reset), 
		.fc1(fc1), 
		.fc2(fc2), 
		.fc3(fc3), 
		.fc4(fc4), 
		.fc5(fc5), 
		.emergencia(emergencia), 
		.puerta(puerta), 
		.tr(tr)
	);
	initial begin 
	clk=1'b0;
	forever #10 clk=~clk;
	end
	
	
	initial begin
		// Initialize Inputs
		selector = 0;
		clk = 0;
		reset = 0;
		fc1 = 0;
		fc2 = 0;
		fc3 = 0;
		fc4 = 0;
		fc5 = 0;
		emergencia = 0;
		puerta = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset=1'b1;
		
		// Transicion a piso 2  
		#20;
		selector=5'b01000;
		
		#20;
		selector=5'b00000;
		
		#20;
		fc2=1;
		
		#20;
		fc2=0;
		
		// Transicion a piso 3 ----180ns-----
		#20;
		selector=5'b00100;
		
		#20;
		selector=5'b00000;
		
		#20;
		fc3=1;
		
		#20;
		fc3=0;
		
		// Transicion a piso 4 ----260ns-----
		
		#20;
		selector=5'b00010;
		
		#20;
		selector=5'b00000;
		
		#20;
		fc4=1;
		
		#20;
		fc4=0;
		
		// Transicion a piso 5 ----320ns-----
		
		#20;
		selector=5'b00001;
		
		#20;
		selector=5'b00000;
		
		#20;
		fc5=1;
		
		#20;
		fc5=0;
		
		// Transicion a piso 1 ----400ns-----
		
		#20;
		selector=5'b10000;
		
		#20;
		selector=5'b00000;
		
		#20;
		fc1=1;
		
		#20;
		fc1=0;
		
		
		// CASO EMERGENCIA ----480ns-----
		
		#20;
		selector=5'b00100;
		
		#20;
		selector=5'b00000;
		emergencia=1'b1;
		
		#20
		emergencia=1'b0;
		
		#20;
		fc1=1;
		
		#20;
		fc1=0;
		
		// CASO PUERTA ABIERTA ----580ns-----
		
		#20;
		puerta=1'b1;
		
		
		#20;
		selector=5'b00100;
		
		#20;
		selector=5'b00000;
		
		
		//----640ns-----
		
		
	end
      
endmodule

