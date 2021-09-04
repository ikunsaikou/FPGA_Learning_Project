
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
    //assign ÊÇ¸³Öµ¹Ø¼ü´Ê
    assign out = (sel == 1) ? a : b;
    
    
endmodule