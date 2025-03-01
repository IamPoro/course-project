`ifdef RTL
    `define CYCLE_TIME 0.29
`endif
`ifdef GATE
    `define CYCLE_TIME 0.29
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
integer latnecy;
integer out_num;
integer PAT_NUM = 1000;
integer i, j, k;
integer f_in, f_in2, f_out, f_out2;
integer fscanf_int, fprintf_int;
integer input_idx;
integer SEED = 5487;
reg [3:0] I [0:3][0:31];
reg [3:0] weight [0:31][0:3];
reg [12:0] accum[0:3][0:3];
reg [12:0] golden[0:3];

initial begin
    // f_in  = $fopen("../00_TESTBED/input.txt", "r");
	// f_in2  = $fopen("../00_TESTBED/weight.txt", "r");
    reset_signal_task;
    @(negedge clk);

    for(input_idx=0; input_idx<PAT_NUM; input_idx=input_idx+1) begin
        out_num = 0;
        cal_input_task;
        cal_ans_task;
        input_output_task;
        //wait_output_task;
        wait_output_to_4_task;
        $display("PASS: %d", input_idx);
    end
    
	//$fclose(f_in);
    //$fclose(f_in2);
    repeat(10) @(negedge clk);
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

task cal_input_task; begin
    f_out = $fopen("../00_TESTBED/randinput.txt", "w");
    f_out2 = $fopen("../00_TESTBED/randweight.txt", "w");
    for(i=0; i<32; i=i+1) begin
        for(j=0; j<4; j=j+1) begin
            weight[i][j] = {$random(SEED)}%16;
            $fdisplay(f_out, "%b", weight[i][j]);
            //fscanf_int = $fscanf(f_in2, "%d", weight[i][j]);
            //$write("%d ", weight[i][j]);
        end
        //$display("");
    end
    for(i=0; i<4; i=i+1) begin
        for(j=0; j<32; j=j+1) begin
            I[i][j] = {$random(SEED)}%16;
            $fdisplay(f_out2, "%b", I[i][j]);
            //$display("%d", I[i][j]);
            //fscanf_int = $fscanf(f_in, "%d", I[i][j]);
            //$write("%d ", I[i][j]);
        end
        //$display("");
    end
    $fclose(f_out);
    $fclose(f_out2);
end
endtask

task cal_ans_task; begin
    for(i=0; i<4; i=i+1) begin
        for(j=0; j<4; j=j+1) begin
            accum[i][j] = 0;
            for(k=0; k<32; k=k+1) begin
                accum[i][j] = accum[i][j] + I[i][k]*weight[k][j];
            end
            //if(input_idx==0) $write("%d ", accum[i][j]);
        end
        //if(input_idx==0) $display("");
    end
end
endtask

task input_output_task; begin

    in_valid = 1;
    for(i=0; i<4; i=i+1) begin
        for(j=3; j>=0; j=j-1) begin
            for(k=0; k<32; k=k+1) begin //I[4][32][4], weight[32][4]
                in_data1[k*4+:4] = {4{I[i][k][j]}}&weight[k][0];
                in_data2[k*4+:4] = {4{I[i][k][j]}}&weight[k][1];
                in_data3[k*4+:4] = {4{I[i][k][j]}}&weight[k][2];
                in_data4[k*4+:4] = {4{I[i][k][j]}}&weight[k][3];
                //$display("%d %d %d %d", in_data1[k*4+:4], in_data2[k*4+:4], in_data3[k*4+:4], in_data4[k*4+:4]);
            end

            check_output_task;

            @(negedge clk);
        end
    end
    in_valid = 0;
    in_data1 = 'bx;
    in_data2 = 'bx;
    in_data3 = 'bx;
    in_data4 = 'bx;
end
endtask

task check_output_task; begin
    if (out_valid === 1) begin
        if (O1 !== accum[out_num][0]) begin
            $display("ERROR: O1[%d] = %d, expected %d", out_num, O1, accum[out_num][0]);
            $finish;
        end
        if (O2 !== accum[out_num][1]) begin
            $display("ERROR: O2[%d] = %d, expected %d", out_num, O2, accum[out_num][1]);
            $finish;
        end
        if (O3 !== accum[out_num][2]) begin
            $display("ERROR: O3[%d] = %d, expected %d", out_num, O3, accum[out_num][2]);
            $finish;
        end
        if (O4 !== accum[out_num][3]) begin
            $display("ERROR: O4[%d] = %d, expected %d", out_num, O4, accum[out_num][3]);
            $finish;
        end
        out_num = out_num + 1;
    end 
end
endtask

task wait_output_to_4_task; begin
    while(out_num < 4) begin
        check_output_task;
        @(negedge clk);
    end
end
endtask

task wait_output_task; begin
    for (i = 0; i<4; i=i+1) begin
        latnecy = 0;
        while (out_valid !== 1) begin
            @(negedge clk);
            latnecy = latnecy + 1;
            if (latnecy > 1000) begin
                $display("ERROR: Timeout");
                $finish;
            end
        end

        if (out_valid == 1) begin
            if (O1 !== accum[i][0]) begin
                $display("ERROR: O1[%d] = %d, expected %d", i, O1, accum[i][0]);
                $finish;
            end
            if (O2 !== accum[i][1]) begin
                $display("ERROR: O2[%d] = %d, expected %d", i, O2, accum[i][1]);
                $finish;
            end
            if (O3 !== accum[i][2]) begin
                $display("ERROR: O3[%d] = %d, expected %d", i, O3, accum[i][2]);
                $finish;
            end
            if (O4 !== accum[i][3]) begin
                $display("ERROR: O4[%d] = %d, expected %d", i, O4, accum[i][3]);
                $finish;
            end
        end
    end
end
endtask

endmodule