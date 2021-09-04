`timescale 1ns / 1ns //延迟和延迟精度到皮秒

module mux2_tb();

reg s_a;
reg s_b;
reg s_sel;

wire out;

 mux2 mux2_inst0( //前是模块名后是标签
    .a(s_a),
    .b(s_b),
    .sel(s_sel),
    .out(out)
);

initial begin

    s_a = 0; s_b = 0; s_sel = 0;
    #200;    
    s_a = 0; s_b = 0; s_sel = 1;
    #200;
    s_a = 0; s_b = 1; s_sel = 0;
    #200;    
    s_a = 0; s_b = 1; s_sel = 1;
    #200;
    s_a = 1; s_b = 0; s_sel = 0;
    #200;    
    s_a = 1; s_b = 0; s_sel = 1;
    #200;
    s_a = 1; s_b = 1; s_sel = 0;
    #200;    
    s_a = 1; s_b = 1; s_sel = 1;
    #200;
end

endmodule