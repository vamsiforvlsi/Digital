module inv_t();
wire y;
reg x;
inv uut(y,x);
initial begin

$dumpfile("inv.vcd");
$dumpvars(0,inv_t);


#10;
x=0;
#10;
x=1;
#10;
x=0;
end
endmodule
