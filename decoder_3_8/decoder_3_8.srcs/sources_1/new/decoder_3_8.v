module decoder_3_8(
    a,
    b,
    c,
    out
);

input a;
input b;
input c;
output reg[7:0] out;//端口方向是输出，类型是寄存器类型


always@(*) //always@(a,b,c) 关注abc always块中描述的信号赋值，被赋值对象必须定义为reg类型
    case({a,b,c})//{a,b,c}位拼接，将单独的一位信号变成三位独立的信号
        3'b000: out = 8'b0000_0001;//格式限定符 b二进制，d十进制，h十六进制
        3'b001: out = 8'b0000_0010;
        3'b010: out = 8'b0000_0100;
        3'b011: out = 8'b0000_1000;
        3'b100: out = 8'b0001_0000;
        3'b101: out = 8'b0010_0000;
        3'b110: out = 8'b0100_0000;
        3'b111: out = 8'b1000_0000;
        endcase


endmodule
