module top(
    input btnU, //reset
    input btnC, //clock
    input [0]sw, //w input on the state machine
    output led[0:9] //0 is output of onehot, 1 is output of binary, one hot states, 7:9 binary state
);

one_hot my_one_hot(
    .w(sw[0]),
    .clk(btnB),
    .Y(led[0])
);

binary my_binary(
    .w(sw[0]),
    .clk(btnB),
    .Y(led[1])
);