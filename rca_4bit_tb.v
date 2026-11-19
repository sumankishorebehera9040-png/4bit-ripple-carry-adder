module rca_4bit_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    rca_4bit uut(a, b, cin, sum, cout);

    initial begin
        $monitor("a=%d b=%d cin=%b | sum=%d cout=%b", a, b, cin, sum, cout);
        a = 4'd5; b = 4'd3; cin = 1'b0; #10;
        a = 4'd10; b = 4'd6; cin = 1'b0; #10;
        a = 4'd15; b = 4'd1; cin = 1'b0; #10;
        $finish;
    end
endmodule
