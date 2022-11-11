`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2022 05:39:47 PM
// Design Name: 
// Module Name: mips_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: the module's variables:
//  input   logic 	 clk, reset,            
//	     output  logic[31:0] writedata, dataadr, 
//	     output  logic[31:0] pc, instr, readdata,           
//	     output  logic       memwrite);
//
// 
//////////////////////////////////////////////////////////////////////////////////


module mips_tb();

    logic[31:0] writedata, dataadr, pc, instr, readdata;
    logic clk, reset, memwrite;

    top dut(clk, reset, writedata, dataadr, pc, instr, readdata, memwrite);

    initial 
        begin
            clk = 0;
            reset = 1; #20ns;
            reset = 0; #20ns;
        end
  
   always 
        begin
            #10; clk = ~clk;
        end         
            
           
            
endmodule
