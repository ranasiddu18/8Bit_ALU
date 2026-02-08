`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2026 23:27:16
// Design Name: 
// Module Name: ALU8bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU8bit_tb();
reg signed [7:0] a;
reg signed [7:0] b;
reg [4:0]s;
wire signed [15:0] result;
wire CF,OF,NF,ZF;

ALU_8bit uut(a,b,s,CF,result,ZF,OF,NF);

initial
begin
 
 $display( "Simulation is started");
 $display("Time\t    a\t    b\t    s\t    result\t    CF\t   ZF\t   OF\t   NF\t");
 $display("__________________________________________________________________________");
 
 a=0;b=0;s=5'b00000;
 #10
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
  
  a=8'd127;b=8'd10;s=5'b00000; //0
 #10
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
 
  a=8'd12;b=-8'd10;s=5'b00001;  //1
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
  a=8'd125;b=-8'd10;s=5'b00010; //2
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
  a=-8'd65;b=8'd10;s=5'b00011;  //3
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
  a=8'd12;b=-8'd13;s=5'b00100; //4
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
  a=8'b01010101;b=8'b1100101;s=5'b00101; //5
  #10 
   $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b00110;  //6
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
 
   a=8'b01010101;b=8'b1100101;s=5'b00111;  //7
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b01000;  //8
  #10 
   $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b01001;  //9
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b01010;   //10
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b01011;   //11
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;s=5'b01100;   //12
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;s=5'b01101;  //13
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;s=5'b01110;  //14
  #10 
   $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=1'b1;s=5'b01111;  //15
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=1'b1;s=5'b10000;   //16
  #10 
   $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=1'b1;s=5'b10001;   //17
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=1'b1;s=5'b10010; //18
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;s=5'b10011;   //19
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;s=5'b10100;  //20
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);

 a=8'b01010101;b=8'b01010110;s=5'b10101;   //21
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b10110;   //22
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b10111;  //23
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b11000;
  #10                                        //24
     $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b11001;   //25
  #10 
  $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
  
   a=8'b01010101;b=8'b1100101;s=5'b11010;  //26
  #10 
 $strobe("%0t\t a=%d\t b=%d \t s=%d, result=%d\t  CF=%b\t ZF=%b\t OF=%b\t NF=%b ", $time,a, b, s, result,CF,ZF,OF,NF);
 #10 $finish;
 
 



end
endmodule
