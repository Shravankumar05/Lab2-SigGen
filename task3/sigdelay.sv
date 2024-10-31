module sigdelay #(
    parameter ADDRESS_WIDTH = 8,
    DATA_WIDTH = 8
)(
    input logic [DATA_WIDTH-1:0] input_signal,
    input logic [DATA_WIDTH-1:0] offset,
    input logic rd,
    input logic wr,
    output logic [DATA_WIDTH-1:0]
)