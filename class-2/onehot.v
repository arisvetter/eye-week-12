module one_hot(
    input w,
    input clk,
    input reset,
    output z,
    output [5:0] state
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;

    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(Astate),
        .reset(reset) 
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .Q(Bstate),
        .reset(reset) 
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate),
        .reset(reset) 
    );

    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate),
        .reset(reset) 
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate),
        .reset(reset) 
    );

    assign z = Cstate | Estate;

    assign Anext = 0;
    assign Bnext = ~w & (Astate | Bstate | Dstate);
    assign Cnext = ~w & (Bstate | Cstate);
    assign Enext = (w & (Dstate | Estate));
    assign Dnext = (w & (Astate | Bstate | Cstate));
    assign state[0] = Astate;
    assign state[1] = Bstate;
    assign state[2] = Cstate;
    assign state[3] = Dstate;
    assign state[4] = Estate;
endmodule