
module mux2(
    a,
    b,
    sel,
    out
);
    input a;
    input b;
    input sel;
    output out;
    //assign �Ǹ�ֵ�ؼ���
    assign out = (sel == 1) ? a : b;
    
    
endmodule