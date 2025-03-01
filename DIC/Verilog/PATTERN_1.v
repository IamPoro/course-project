`ifdef RTL
    `define CYCLE_TIME 1
`endif
`ifdef GATE
    `define CYCLE_TIME 1
`endif

module PATTERN(
	//OUTPUT
	rst_n,
	clk,
	in_valid,
    in_data1,
    in_data2,
    in_data3,
    in_data4,
	//INPUT
	out_valid,
    O1,
    O2,
    O3,
    O4
);

//---------------------------------------------------------------------
//   PORT DECLARATION          
//---------------------------------------------------------------------
output reg	rst_n;
output reg	clk;
output reg	in_valid;
output reg	[127:0]    in_data1;
output reg	[127:0]    in_data2;
output reg	[127:0]    in_data3;
output reg	[127:0]    in_data4;
	//INPUT
input	out_valid;
input 	[12:0]   O1;
input 	[12:0]    O2;
input 	[12:0]    O3;
input 	[12:0]    O4;

//---------------------------------------------------------------------
//  CLOCK
//---------------------------------------------------------------------
real CYCLE = `CYCLE_TIME;
always #(CYCLE/2.0) clk = ~clk;

//---------------------------------------------------------------------
//  SIMULATION
//---------------------------------------------------------------------
integer PAT_NUM;
integer i, j, k;
integer f_in, f_in2;
integer fscanf_int, fscanf_int2;
integer input_idx;
reg [3:0] I [0:3][0:31];
reg [3:0] weight [0:31][0:3];
reg [12:0] accum[0:3][0:3];
reg [12:0] golden[0:3];

initial begin
    f_in  = $fopen("../00_TESTBED/input.txt", "r");
    // if (f_in == 0) begin
	// 	$display("Failed to open input.txt");
	// 	$finish;
	// end
    for(i=0; i<4; i=i+1) begin
        for(j=0; j<32; j=j+1) begin
            fscanf_int = $fscanf(f_in, "%b", I[i][j]);
            $write("%d ", I[i][j]);
        end
        $display("");
    end
	f_in2  = $fopen("../00_TESTBED/weight.txt", "r");
    for(i=0; i<32; i=i+1) begin
        for(j=0; j<4; j=j+1) begin
            fscanf_int2 = $fscanf(f_in2, " %b", weight[i][j]);
            $write("%d ", weight[i][j]);
        end
        $display("");
    end
    reset_signal_task;
    repeat(2) @(negedge clk);
    in_valid = 1;
    golden[0] = 0;
    golden[1] = 0;
    golden[2] = 0;
    golden[3] = 0;
    for(i=0; i<4; i=i+1) begin
        golden[0] = 0;
        golden[1] = 0;
        golden[2] = 0;
        golden[3] = 0;
        for(j=3; j>=0; j=j-1) begin
            for(k=0; k<32; k=k+1) begin //I[4][32][4], weight[32][4]
                in_data1[k*4+:4] = {4{I[i][k][j]}}&weight[k][0];
                in_data2[k*4+:4] = {4{I[i][k][j]}}&weight[k][1];
                in_data3[k*4+:4] = {4{I[i][k][j]}}&weight[k][2];
                in_data4[k*4+:4] = {4{I[i][k][j]}}&weight[k][3];
            end
            // $display("in data1 \n%h", in_data1);
            @(negedge clk);
            golden[0] = (golden[0]<<1) + in_data1[3:0]+in_data1[7:4]+in_data1[11:8]+
                        in_data1[15:12]+in_data1[19:16]+in_data1[23:20]+in_data1[27:24]+
                        in_data1[31:28]+in_data1[35:32]+in_data1[39:36]+in_data1[43:40]+
                        in_data1[47:44]+in_data1[51:48]+in_data1[55:52]+in_data1[59:56]+
                        in_data1[63:60]+in_data1[67:64]+in_data1[71:68]+in_data1[75:72]+
                        in_data1[79:76]+in_data1[83:80]+in_data1[87:84]+in_data1[91:88]+
                        in_data1[95:92]+in_data1[99:96]+in_data1[103:100]+in_data1[107:104]+
                        in_data1[111:108]+in_data1[115:112]+in_data1[119:116]+in_data1[123:120]+
                        in_data1[127:124];
            golden[1] = (golden[1]<<1) + in_data2[3:0]+in_data2[7:4]+in_data2[11:8]+
                        in_data2[15:12]+in_data2[19:16]+in_data2[23:20]+in_data2[27:24]+
                        in_data2[31:28]+in_data2[35:32]+in_data2[39:36]+in_data2[43:40]+
                        in_data2[47:44]+in_data2[51:48]+in_data2[55:52]+in_data2[59:56]+
                        in_data2[63:60]+in_data2[67:64]+in_data2[71:68]+in_data2[75:72]+
                        in_data2[79:76]+in_data2[83:80]+in_data2[87:84]+in_data2[91:88]+
                        in_data2[95:92]+in_data2[99:96]+in_data2[103:100]+in_data2[107:104]+
                        in_data2[111:108]+in_data2[115:112]+in_data2[119:116]+in_data2[123:120]+
                        in_data2[127:124];
            golden[2] = (golden[2]<<1) + in_data3[3:0]+in_data3[7:4]+in_data3[11:8]+
                        in_data3[15:12]+in_data3[19:16]+in_data3[23:20]+in_data3[27:24]+
                        in_data3[31:28]+in_data3[35:32]+in_data3[39:36]+in_data3[43:40]+
                        in_data3[47:44]+in_data3[51:48]+in_data3[55:52]+in_data3[59:56]+
                        in_data3[63:60]+in_data3[67:64]+in_data3[71:68]+in_data3[75:72]+
                        in_data3[79:76]+in_data3[83:80]+in_data3[87:84]+in_data3[91:88]+
                        in_data3[95:92]+in_data3[99:96]+in_data3[103:100]+in_data3[107:104]+
                        in_data3[111:108]+in_data3[115:112]+in_data3[119:116]+in_data3[123:120]+
                        in_data3[127:124];
            golden[3] = (golden[3]<<1) + in_data4[3:0]+in_data4[7:4]+in_data4[11:8]+
                        in_data4[15:12]+in_data4[19:16]+in_data4[23:20]+in_data4[27:24]+
                        in_data4[31:28]+in_data4[35:32]+in_data4[39:36]+in_data4[43:40]+
                        in_data4[47:44]+in_data4[51:48]+in_data4[55:52]+in_data4[59:56]+
                        in_data4[63:60]+in_data4[67:64]+in_data4[71:68]+in_data4[75:72]+
                        in_data4[79:76]+in_data4[83:80]+in_data4[87:84]+in_data4[91:88]+
                        in_data4[95:92]+in_data4[99:96]+in_data4[103:100]+in_data4[107:104]+
                        in_data4[111:108]+in_data4[115:112]+in_data4[119:116]+in_data4[123:120]+
                        in_data4[127:124];
        end
        $display("%d %d %d %d", golden[0], golden[1], golden[2], golden[3]);
    end
    for(i=0; i<4; i=i+1) begin
        for(j=0; j<4; j=j+1) begin
            accum[i][j] = 0;
            for(k=0; k<32; k=k+1) begin
                accum[i][j] = accum[i][j] + I[i][k]*weight[k][j];
            end
            $write("%d ", accum[i][j]);
        end
        $display("");
    end
    in_valid = 'b0;
    in_data1 = 'bx;
    in_data2 = 'bx;
    in_data3 = 'bx;
    in_data4 = 'bx;
	$fclose(f_in);
    $fclose(f_in2);
    repeat(5) @(negedge clk);
    $finish;
end


task reset_signal_task; begin
    // initialize all signals
    rst_n = 'b1;
    in_valid = 'b0;
    in_data1 = 'bx;
    in_data2 = 'bx;
    in_data3 = 'bx;
    in_data4 = 'bx;

    force clk = 0;

    #CYCLE; rst_n = 0; 
    #(5*CYCLE); rst_n = 1;
	#(5*CYCLE); release clk;
end
endtask
endmodule