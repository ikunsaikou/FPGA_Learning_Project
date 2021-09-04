`timescale 1ns/1ns

module decoder_3_8_tb;

reg s_a;
reg s_b;
reg s_c;
wire [7:0]out;

decoder_3_8 decoder_3_8(
    .a(s_a),
    .b(s_b),
    .c(s_c),
    .out(out)
);

initial begin
    s_a = 0; s_b = 0; s_c = 0;
    #200;
    s_a = 0; s_b = 0; s_c = 1;
    #200;
    s_a = 0; s_b = 1; s_c = 0;
    #200;
    s_a = 0; s_b = 1; s_c = 1;
    #200;
    s_a = 1; s_b = 0; s_c = 0;
    #200;    
    s_a = 1; s_b = 0; s_c = 1;
    #200;
    s_a = 1; s_b = 1; s_c = 0;
    #200;
    s_a = 1; s_b = 1; s_c = 1;
    #200;
    $stop;
end

endmodule