`timescale 1ns / 1ns //�ӳٺ��ӳپ��ȵ�Ƥ��

module mux2_tb();

reg s_a;
reg s_b;
reg s_sel;

wire out;

 mux2 mux2_inst0( //ǰ��ģ�������Ǳ�ǩ
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