module sinegen #(
    parameter WIDTH = 8
)(
    input logic [WIDTH-1:0] incr,
    input logic rst,
    input logic en,
    input logic clk,
    output logic [WIDTH-1:0] data1,
    output logic [WIDTH-1:0] data2
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
    .addr1(count+incr),
    .addr2(count),
    .data1(data1),
    .data2(data2)
);

endmodule
