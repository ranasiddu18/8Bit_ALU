`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 21:48:50
// Design Name: 
// Module Name: ALU_8bit
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


module ALU_8bit(
    input signed [7:0] a,
    input  signed [7:0] b,
    input  [4:0] s,
    output reg CF,
    output reg signed [15:0] result,     // in procedural or under always@(*) outputs have to be mentioned as registers
    output reg ZF,          // here i mention inputs and outputs as signed numbers so their range is (-128 to 127) 
    output reg OF,
    output reg NF
    );
    always @(*)
    begin
 
    case(s)
     
    5'b00000: begin
    result=a+b;
    CF=result[8];
    OF = (a[7]==b[7]) && (result[7]!=a[7]);
     end                     // addition if carry is generated then CF goes high
     
      5'b00001: begin
      result=a-b;
      CF=a<b;
      OF = (a[7] != b[7]) && (result[7] != a[7]);
      end                                              //subtraction 
      
      5'b00010: begin 
      result=a*b; end       //multiplication  a*b result is 16 bit
      
      5'b00011: begin 
      if( b==0) begin
      result = 0; end          //division a%b, if b is 0 zero flag is 1, if a<b result = a
      else begin
      result=a/b; end end
      
      5'b00100: begin 
      if(b!=0) begin 
      result=a%b; end             // modulo division a%b, if b is 0 result is 0 and  zero flag is 1, if a<b result = a
      else begin 
      result=16'b0; end end
       
      5'b00101: begin 
      result=a&b; end      // bitwise AND operation
      
      5'b00110: begin     
      result=a|b; end       // bitwise OR operation
      
      5'b00111: begin 
      result=a^b; end     // bitwise XOR operation
      
      5'b01000: begin 
      result=~(a^b); end     // bitwise XNOR operation
      
      5'b01001: begin 
      result=~a; end        // bitwise not operation of a
      
      5'b01010: begin 
      result=~(a&b); end      // bitwise NAND operation
      
      5'b01011: begin 
      result=~(a|b); end   // bitwise NOR operation
      
      5'b01100: begin 
      result=(a&&b); end   // logical AND of a and b
      
      5'b01101: begin 
      result=(a||b); end  // logical OR of a and b
      
      5'b01110: begin 
      result=!a; end      // logical not of a 
      
      5'b01111: begin 
      result= a>>b ; end  // right shift by b units
      
      5'b10000: begin 
      result= a<<b; end    // left shift by b units
      
      5'b10001: begin 
      result=a>>>b; end   // arithematic right shift by b units
      
      5'b10010: begin 
      result=a<<<b; end    // arithematic left shift by b units 
      
      5'b10011: begin 
      result= {a[0],a[7:1]}; end    // right rotate
      
      5'b10100: begin 
      result={a[6:0],a[7]}; end    // left rotate 
      
      5'b10101: begin 
      result= a==b; end    // a equal to b
      
      5'b10110: begin 
      result= a!=b; end   // a not equal to b
      
      5'b10111: begin 
      result= a>b; end    // a greater than b
      
      5'b11000: begin    // a less than b
      result=a<b; end
      
      5'b11001: begin 
      result=a>=b; end  // a greater than or equal to b
      
      5'b11010: begin 
      result=a<=b; end     // a less than or equal to b
      
      default: begin
    result = 16'b0;
    CF = 1'b0;
    OF = 1'b0;
    ZF = 1'b0;
    NF = 1'b0; end 
    
      endcase
      
     ZF=result==16'b0; 
     NF=result[15];
    
    end
endmodule
