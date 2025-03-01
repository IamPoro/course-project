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

reg in_valid_dff, in_valid_dff_2;
reg [1:0] cnt;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        in_valid_dff <= 1'b0;
        in_valid_dff_2 <= 1'b0;
    end
    else begin
        in_valid_dff <= in_valid;
        in_valid_dff_2 <= in_valid_dff;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cnt <= 2'b0;
    end
    else begin
        if (in_valid_dff) begin
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
        if (in_valid_dff) begin
            if (~|cnt) begin
                sum1 <= (((((in_data1_dff[127:124] + in_data1_dff[123:120]) + (in_data1_dff[119:116] + in_data1_dff[115:112])) + ((in_data1_dff[111:108] + in_data1_dff[107:104]) + (in_data1_dff[103:100] + in_data1_dff[99:96]))) + (((in_data1_dff[95:92] + in_data1_dff[91:88]) + (in_data1_dff[87:84] + in_data1_dff[83:80])) + ((in_data1_dff[79:76] + in_data1_dff[75:72]) + (in_data1_dff[71:68] + in_data1_dff[67:64])))) + ((((in_data1_dff[63:60] + in_data1_dff[59:56]) + (in_data1_dff[55:52] + in_data1_dff[51:48])) + ((in_data1_dff[47:44] + in_data1_dff[43:40]) + (in_data1_dff[39:36] + in_data1_dff[35:32]))) + (((in_data1_dff[31:28] + in_data1_dff[27:24]) + (in_data1_dff[23:20] + in_data1_dff[19:16])) + ((in_data1_dff[15:12] + in_data1_dff[11:8]) + (in_data1_dff[7:4] + in_data1_dff[3:0])))));
                sum2 <= (((((in_data2_dff[127:124] + in_data2_dff[123:120]) + (in_data2_dff[119:116] + in_data2_dff[115:112])) + ((in_data2_dff[111:108] + in_data2_dff[107:104]) + (in_data2_dff[103:100] + in_data2_dff[99:96]))) + (((in_data2_dff[95:92] + in_data2_dff[91:88]) + (in_data2_dff[87:84] + in_data2_dff[83:80])) + ((in_data2_dff[79:76] + in_data2_dff[75:72]) + (in_data2_dff[71:68] + in_data2_dff[67:64])))) + ((((in_data2_dff[63:60] + in_data2_dff[59:56]) + (in_data2_dff[55:52] + in_data2_dff[51:48])) + ((in_data2_dff[47:44] + in_data2_dff[43:40]) + (in_data2_dff[39:36] + in_data2_dff[35:32]))) + (((in_data2_dff[31:28] + in_data2_dff[27:24]) + (in_data2_dff[23:20] + in_data2_dff[19:16])) + ((in_data2_dff[15:12] + in_data2_dff[11:8]) + (in_data2_dff[7:4] + in_data2_dff[3:0])))));
                sum3 <= (((((in_data3_dff[127:124] + in_data3_dff[123:120]) + (in_data3_dff[119:116] + in_data3_dff[115:112])) + ((in_data3_dff[111:108] + in_data3_dff[107:104]) + (in_data3_dff[103:100] + in_data3_dff[99:96]))) + (((in_data3_dff[95:92] + in_data3_dff[91:88]) + (in_data3_dff[87:84] + in_data3_dff[83:80])) + ((in_data3_dff[79:76] + in_data3_dff[75:72]) + (in_data3_dff[71:68] + in_data3_dff[67:64])))) + ((((in_data3_dff[63:60] + in_data3_dff[59:56]) + (in_data3_dff[55:52] + in_data3_dff[51:48])) + ((in_data3_dff[47:44] + in_data3_dff[43:40]) + (in_data3_dff[39:36] + in_data3_dff[35:32]))) + (((in_data3_dff[31:28] + in_data3_dff[27:24]) + (in_data3_dff[23:20] + in_data3_dff[19:16])) + ((in_data3_dff[15:12] + in_data3_dff[11:8]) + (in_data3_dff[7:4] + in_data3_dff[3:0])))));
                sum4 <= (((((in_data4_dff[127:124] + in_data4_dff[123:120]) + (in_data4_dff[119:116] + in_data4_dff[115:112])) + ((in_data4_dff[111:108] + in_data4_dff[107:104]) + (in_data4_dff[103:100] + in_data4_dff[99:96]))) + (((in_data4_dff[95:92] + in_data4_dff[91:88]) + (in_data4_dff[87:84] + in_data4_dff[83:80])) + ((in_data4_dff[79:76] + in_data4_dff[75:72]) + (in_data4_dff[71:68] + in_data4_dff[67:64])))) + ((((in_data4_dff[63:60] + in_data4_dff[59:56]) + (in_data4_dff[55:52] + in_data4_dff[51:48])) + ((in_data4_dff[47:44] + in_data4_dff[43:40]) + (in_data4_dff[39:36] + in_data4_dff[35:32]))) + (((in_data4_dff[31:28] + in_data4_dff[27:24]) + (in_data4_dff[23:20] + in_data4_dff[19:16])) + ((in_data4_dff[15:12] + in_data4_dff[11:8]) + (in_data4_dff[7:4] + in_data4_dff[3:0])))));
            end else begin
                sum1 <= (sum1 << 1) + (((((in_data1_dff[127:124] + in_data1_dff[123:120]) + (in_data1_dff[119:116] + in_data1_dff[115:112])) + ((in_data1_dff[111:108] + in_data1_dff[107:104]) + (in_data1_dff[103:100] + in_data1_dff[99:96]))) + (((in_data1_dff[95:92] + in_data1_dff[91:88]) + (in_data1_dff[87:84] + in_data1_dff[83:80])) + ((in_data1_dff[79:76] + in_data1_dff[75:72]) + (in_data1_dff[71:68] + in_data1_dff[67:64])))) + ((((in_data1_dff[63:60] + in_data1_dff[59:56]) + (in_data1_dff[55:52] + in_data1_dff[51:48])) + ((in_data1_dff[47:44] + in_data1_dff[43:40]) + (in_data1_dff[39:36] + in_data1_dff[35:32]))) + (((in_data1_dff[31:28] + in_data1_dff[27:24]) + (in_data1_dff[23:20] + in_data1_dff[19:16])) + ((in_data1_dff[15:12] + in_data1_dff[11:8]) + (in_data1_dff[7:4] + in_data1_dff[3:0])))));
                sum2 <= (sum2 << 1) + (((((in_data2_dff[127:124] + in_data2_dff[123:120]) + (in_data2_dff[119:116] + in_data2_dff[115:112])) + ((in_data2_dff[111:108] + in_data2_dff[107:104]) + (in_data2_dff[103:100] + in_data2_dff[99:96]))) + (((in_data2_dff[95:92] + in_data2_dff[91:88]) + (in_data2_dff[87:84] + in_data2_dff[83:80])) + ((in_data2_dff[79:76] + in_data2_dff[75:72]) + (in_data2_dff[71:68] + in_data2_dff[67:64])))) + ((((in_data2_dff[63:60] + in_data2_dff[59:56]) + (in_data2_dff[55:52] + in_data2_dff[51:48])) + ((in_data2_dff[47:44] + in_data2_dff[43:40]) + (in_data2_dff[39:36] + in_data2_dff[35:32]))) + (((in_data2_dff[31:28] + in_data2_dff[27:24]) + (in_data2_dff[23:20] + in_data2_dff[19:16])) + ((in_data2_dff[15:12] + in_data2_dff[11:8]) + (in_data2_dff[7:4] + in_data2_dff[3:0])))));
                sum3 <= (sum3 << 1) + (((((in_data3_dff[127:124] + in_data3_dff[123:120]) + (in_data3_dff[119:116] + in_data3_dff[115:112])) + ((in_data3_dff[111:108] + in_data3_dff[107:104]) + (in_data3_dff[103:100] + in_data3_dff[99:96]))) + (((in_data3_dff[95:92] + in_data3_dff[91:88]) + (in_data3_dff[87:84] + in_data3_dff[83:80])) + ((in_data3_dff[79:76] + in_data3_dff[75:72]) + (in_data3_dff[71:68] + in_data3_dff[67:64])))) + ((((in_data3_dff[63:60] + in_data3_dff[59:56]) + (in_data3_dff[55:52] + in_data3_dff[51:48])) + ((in_data3_dff[47:44] + in_data3_dff[43:40]) + (in_data3_dff[39:36] + in_data3_dff[35:32]))) + (((in_data3_dff[31:28] + in_data3_dff[27:24]) + (in_data3_dff[23:20] + in_data3_dff[19:16])) + ((in_data3_dff[15:12] + in_data3_dff[11:8]) + (in_data3_dff[7:4] + in_data3_dff[3:0])))));
                sum4 <= (sum4 << 1) + (((((in_data4_dff[127:124] + in_data4_dff[123:120]) + (in_data4_dff[119:116] + in_data4_dff[115:112])) + ((in_data4_dff[111:108] + in_data4_dff[107:104]) + (in_data4_dff[103:100] + in_data4_dff[99:96]))) + (((in_data4_dff[95:92] + in_data4_dff[91:88]) + (in_data4_dff[87:84] + in_data4_dff[83:80])) + ((in_data4_dff[79:76] + in_data4_dff[75:72]) + (in_data4_dff[71:68] + in_data4_dff[67:64])))) + ((((in_data4_dff[63:60] + in_data4_dff[59:56]) + (in_data4_dff[55:52] + in_data4_dff[51:48])) + ((in_data4_dff[47:44] + in_data4_dff[43:40]) + (in_data4_dff[39:36] + in_data4_dff[35:32]))) + (((in_data4_dff[31:28] + in_data4_dff[27:24]) + (in_data4_dff[23:20] + in_data4_dff[19:16])) + ((in_data4_dff[15:12] + in_data4_dff[11:8]) + (in_data4_dff[7:4] + in_data4_dff[3:0])))));
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
        if (in_valid_dff_2 && ~|cnt) begin
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
        if (in_valid_dff_2 && ~|cnt) begin
            out_valid <= 1'b1;
        end
        else begin
            out_valid <= 1'b0;
        end
    end
end
    
endmodule