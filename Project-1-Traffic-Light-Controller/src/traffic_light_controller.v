module traffic_light_controller(
    input clk,
    input reset,
    input emergency,

    output reg red,
    output reg yellow,
    output reg green
);

reg [1:0] state;

parameter RED_STATE       = 2'b00;
parameter GREEN_STATE     = 2'b01;
parameter YELLOW_STATE    = 2'b10;
parameter EMERGENCY_STATE = 2'b11;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= RED_STATE;

    else if(emergency)
        state <= EMERGENCY_STATE;

    else
    begin
        case(state)

            RED_STATE:
                state <= GREEN_STATE;

            GREEN_STATE:
                state <= YELLOW_STATE;

            YELLOW_STATE:
                state <= RED_STATE;

            EMERGENCY_STATE:
                state <= RED_STATE;

            default:
                state <= RED_STATE;

        endcase
    end
end

always @(*)
begin
    red    = 0;
    yellow = 0;
    green  = 0;

    case(state)

        RED_STATE:
            red = 1;

        GREEN_STATE:
            green = 1;

        YELLOW_STATE:
            yellow = 1;

        EMERGENCY_STATE:
            green = 1;

    endcase
end

endmodule
