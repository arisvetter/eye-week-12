module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

   one_hot my_one_hot(
    .w(sw),
    .clk(btnB),
    .z(led[0]),
    .state(led[6:2]),
    .reset(btnU) 
    
);

    binary my_binary(
    .w(sw),
    .clk(btnB),
    .z(led[1]),
    .State(led[9:7]),
    .reset(btnU) 
   
);
endmodule