module DCIM (
    input clk,
    input rst_n,
    input in_valid,
    input [127:0] in_data1,
    input [127:0] in_data2,
    input [127:0] in_data3,
    input [127:0] in_data4, 

    output reg out_valid,
    output reg [12:0] O1,
    output reg [12:0] O2,
    output reg [12:0] O3,
    output reg [12:0] O4
);
reg [127:0] in_data1_dff, in_data2_dff, in_data3_dff, in_data4_dff;
always @(posedge clk) begin
    in_data1_dff <= in_data1;
    in_data2_dff <= in_data2;
    in_data3_dff <= in_data3;
    in_data4_dff <= in_data4;
end

reg in_valid_dff, in_valid_d2, in_valid_d3, in_valid_d4, in_valid_d5, in_valid_d6, in_valid_d7, in_valid_d8;
reg [1:0] cnt;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        in_valid_dff <= 1'b0;
        in_valid_d2 <= 1'b0;
        in_valid_d3 <= 1'b0;
        in_valid_d4 <= 1'b0;
        in_valid_d5 <= 1'b0;
        in_valid_d6 <= 1'b0;
        in_valid_d7 <= 1'b0;
        in_valid_d8 <= 1'b0;
    end
    else begin
        in_valid_dff <= in_valid;
        in_valid_d2 <= in_valid_dff;
        in_valid_d3 <= in_valid_d2;
        in_valid_d4 <= in_valid_d3;
        in_valid_d5 <= in_valid_d4;
        in_valid_d6 <= in_valid_d5;
        in_valid_d7 <= in_valid_d6;
        in_valid_d8 <= in_valid_d7;
    end
end

reg [4:0] sum1_1 [0:15], sum2_1 [0:15], sum3_1 [0:15], sum4_1 [0:15];
reg [5:0] sum1_2 [0:7], sum2_2 [0:7], sum3_2 [0:7], sum4_2 [0:7];
reg [6:0] sum1_3 [0:3], sum2_3 [0:3], sum3_3 [0:3], sum4_3 [0:3];
reg [7:0] sum1_4 [0:1], sum2_4 [0:1], sum3_4 [0:1], sum4_4 [0:1];
reg [8:0] sum1_5, sum2_5, sum3_5, sum4_5;

generate
    genvar i_1;
    for (i_1 = 0; i_1 < 16; i_1 = i_1 + 1) begin
        always @(posedge clk) begin
            sum1_1[i_1] <= in_data1_dff[127-i_1*8:124-i_1*8] + in_data1_dff[123-i_1*8:120-i_1*8];
            sum2_1[i_1] <= in_data2_dff[127-i_1*8:124-i_1*8] + in_data2_dff[123-i_1*8:120-i_1*8];
            sum3_1[i_1] <= in_data3_dff[127-i_1*8:124-i_1*8] + in_data3_dff[123-i_1*8:120-i_1*8];
            sum4_1[i_1] <= in_data4_dff[127-i_1*8:124-i_1*8] + in_data4_dff[123-i_1*8:120-i_1*8];
        end
    end
endgenerate

generate
    genvar i_2;
    for (i_2 = 0; i_2 < 8; i_2 = i_2 + 1) begin
        always @(posedge clk) begin
            sum1_2[i_2] <= sum1_1[i_2*2] + sum1_1[i_2*2+1];
            sum2_2[i_2] <= sum2_1[i_2*2] + sum2_1[i_2*2+1];
            sum3_2[i_2] <= sum3_1[i_2*2] + sum3_1[i_2*2+1];
            sum4_2[i_2] <= sum4_1[i_2*2] + sum4_1[i_2*2+1];
        end
    end
endgenerate

generate
    genvar i_3;
    for (i_3 = 0; i_3 < 4; i_3 = i_3 + 1) begin
        always @(posedge clk) begin
            sum1_3[i_3] <= sum1_2[i_3*2] + sum1_2[i_3*2+1];
            sum2_3[i_3] <= sum2_2[i_3*2] + sum2_2[i_3*2+1];
            sum3_3[i_3] <= sum3_2[i_3*2] + sum3_2[i_3*2+1];
            sum4_3[i_3] <= sum4_2[i_3*2] + sum4_2[i_3*2+1];
        end
    end
endgenerate

generate
    genvar i_4;
    for (i_4 = 0; i_4 < 2; i_4 = i_4 + 1) begin
        always @(posedge clk) begin
            sum1_4[i_4] <= sum1_3[i_4*2] + sum1_3[i_4*2+1];
            sum2_4[i_4] <= sum2_3[i_4*2] + sum2_3[i_4*2+1];
            sum3_4[i_4] <= sum3_3[i_4*2] + sum3_3[i_4*2+1];
            sum4_4[i_4] <= sum4_3[i_4*2] + sum4_3[i_4*2+1];
        end
    end
endgenerate

always @(posedge clk) begin
    sum1_5 <= sum1_4[0] + sum1_4[1];
    sum2_5 <= sum2_4[0] + sum2_4[1];
    sum3_5 <= sum3_4[0] + sum3_4[1];
    sum4_5 <= sum4_4[0] + sum4_4[1];
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cnt <= 2'd0;
    end
    else begin
        if (in_valid_d6) begin
            cnt <= cnt + 1;
        end
    end
end

reg [12:0] sum1, sum2, sum3, sum4;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        sum1 <= 13'b0;
        sum2 <= 13'b0;
        sum3 <= 13'b0;
        sum4 <= 13'b0;
    end
    else begin
        if (in_valid_d6) begin
            if (~|cnt) begin
                sum1 <= sum1_5;
                sum2 <= sum2_5;
                sum3 <= sum3_5;
                sum4 <= sum4_5;
            end else begin
                sum1 <= {sum1[11:0], 1'b0} + sum1_5;
                sum2 <= {sum2[11:0], 1'b0} + sum2_5;
                sum3 <= {sum3[11:0], 1'b0} + sum3_5;
                sum4 <= {sum4[11:0], 1'b0} + sum4_5;
            end
        end
    end
end

// =====================================
// output
// =====================================
// O1, O2, O3, O4
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        O1 <= 13'b0;
        O2 <= 13'b0;
        O3 <= 13'b0;
        O4 <= 13'b0;
    end
    else begin
        if (in_valid_d7 & ~|cnt) begin
            O1 <= sum1;
            O2 <= sum2;
            O3 <= sum3;
            O4 <= sum4;
        end 
        else begin
            O1 <= 13'b0;
            O2 <= 13'b0;
            O3 <= 13'b0;
            O4 <= 13'b0;
        end
    end
end

// out_valid
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        out_valid <= 1'b0;
    end
    else begin
        if (in_valid_d7 & ~|cnt) begin
            out_valid <= 1'b1;
        end
        else begin
            out_valid <= 1'b0;
        end
    end
end
    
endmodule