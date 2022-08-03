module det1011 (
    input   clk, rst, in,
    output  out
);
    parameter   IDLE    = 0,
                S1      = 1,
                S10     = 2,
                S101    = 3,
                S1011   = 4;
    reg [2:0] cur_state, next_state;
    assign out = cur_state == S1011 ? 1'b1 : 1'b0;

    always @ (posedge clk or negedge rst) begin
        if (!rst)
            cur_state <= IDLE;
        else
            cur_state <= next_state;
    end

    always @ (cur_state or in) begin
        case (cur_state)
            IDLE : begin
                if (in) next_state = S1;
                else    next_state = IDLE;
            end
            S1 : begin
                if (in) next_state = S1;
                else    next_state = S10;
            end
            S10 : begin
                if (in) next_state = S101;
                else    next_state = IDLE;
            end
            S101 : begin
                if (in) next_state = S1011;
                else    next_state = IDLE;
            end
            S1011 : begin
                next_state = IDLE;
            end
            default: begin
                next_state = IDLE;
            end
        endcase
    end
endmodule