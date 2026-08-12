module traffic_light_tb;

reg clk;
reg reset;
reg emergency;

wire red;
wire yellow;
wire green;

traffic_light_controller uut(
    .clk(clk),
    .reset(reset),
    .emergency(emergency),
    .red(red),
    .yellow(yellow),
    .green(green)
);

always #5 clk = ~clk;

initial
begin

    clk = 0;
    reset = 1;
    emergency = 0;

    #20;
    reset = 0;

    #50;
    emergency = 1;

    #20;
    emergency = 0;

    #100;

    $finish;

end

initial begin
    $monitor(
      "Time=%0t Reset=%b Emergency=%b Red=%b Yellow=%b Green=%b",
      $time, reset, emergency, red, yellow, green
    );
end

endmodule
