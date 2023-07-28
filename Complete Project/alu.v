module alu(
           input [3:0] A,B,  // ALU 8-bit Inputs                 
           input [3:0] ALU_Sel,// ALU Selection
           input clk,
           output [3:0] ALU_Out
    );
reg [3:0] ALU_Result;
assign ALU_Out = ALU_Result; // ALU out
always @(posedge clk)
begin
  case(ALU_Sel)
	  4'b0010: 
		  ALU_Result = A + B;
	  4'b0011: 
		  ALU_Result = A - B;
	  4'b0100: 
		  ALU_Result = ~A;
	  4'b0101: 
		  ALU_Result = ~B;
	  4'b0110: 
		  ALU_Result = A ^ B;
	  4'b0111: 
		  ALU_Result = A|B;
	  4'b1000:
		  ALU_Result = A & B;				 
	  default: ALU_Result = 4'b0000; 
  endcase
end

endmodule
