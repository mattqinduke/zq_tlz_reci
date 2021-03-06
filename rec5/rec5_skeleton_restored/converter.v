module converter(
	input [7:0] dataIn,
	output [7:0] dataOut
);

	  // This always block is executed whenever a, b, c or sel changes in value
reg [7:0] data;
  always @ (dataIn) begin     
    case(dataIn)
      8'h1D    : data = 8'd87;     // If sel=0, output is a
      8'h1B    : data = 8'd83;
		8'h1C    : data = 8'd65;
		8'h23    : data = 8'd68;
      default  : data = 0;     // If sel is anything else, out is always 0
    endcase
  end
  
  assign dataOut = data;

endmodule