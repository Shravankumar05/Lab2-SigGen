module sinegen #(
    parameter WIDTH = 8
)(
    input logic [WIDTH-1:0] incr,
    input logic rst,
    input logic en,
    input logic clk,
    output logic [WIDTH-1:0] dout 
);


logic [WIDTH-1:0] count;

counter myCounter(
    .clk(clk),
    .rst(rst),
    .en(en),
    .count(count)
);

rom myRom(
    .clk(clk),
    .addr(count+incr),
    .dout(dout)
);

endmodule
