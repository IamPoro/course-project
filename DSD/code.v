`timescale 1 ns / 10 ps 
module final(clk, rst, hsync, vsync, vga_r, vga_g, vga_b, switch, S, Dclk, 
Data, Led, Seg1, Seg2, Pin); 
input clk; 
input rst; 
input switch; 
input [2:0]S; 
input Dclk; 
input Data; 
output hsync, vsync; 
output [3:0] vga_r, vga_g, vga_b; 
wire pclk; 
wire valid; 
wire [9:0] h_cnt; 
wire [10:0]v_cnt; 
reg [11:0] vga_data; 
wire [11:0] rom_dout, rom_dout1, rom_dout2, rom_dout3, rom_dout4; 
reg [12:0] rom_addr; 
reg [14:0] rom_addr1; 
reg [10:0] rom_addr2, rom_addr3, rom_addr4; 
parameter logo_length1 = 40, logo_height1 = 50; 
parameter logo_length2 = 40, logo_height2 = 50; 
wire logo_area, logo_area1, logo_area2, fruitA, cookieA; 
reg [8:0] logo_x2; 
reg [10:0] logo_y2; 
wire margin; 
reg [3:0]level; 
reg [30:0]Hz; 
wire stair; 
wire [1:0]start; 
wire [1:0]left; 
wire [1:0]right; 
wire On; 
wire spike; 
wire speed[1:0]; 
wire Pspeed[1:0]; 
reg [3:0]counter; 
reg [2:0]shift; 
reg detect; 
reg go; 
wire fragA; 
assign fragA = ((v_cnt >= 11'd771) & (v_cnt <= 11'd780) & (h_cnt >= 
10'd241) & (h_cnt <= 10'd320) & (level <= 4'd11)); 
reg [3:0]rgb; 
reg trig; 
reg diss; 
wire damage; 
 
always @(posedge Hz[22], negedge rst)begin 
    if(!rst)begin 
        rgb <= 4'd8; 
        trig <= 1'b0; 
        diss <=1'b0; 
    end 
    else begin 
        if(switch)begin 
            if((logo_y2 == 11'd721) && ((logo_x2 >= 10'd241) && 
(logo_x2 <= 10'd320))) 
                trig <= 1'b1; 
            else if(level >= 4'd12) 
                trig <= 1'b0; 
            else 
                trig <= trig; 
            if((trig) && (rgb != 4'd15)) 
                rgb <= rgb + 4'd1; 
            else 
                rgb <= rgb; 
            if(level >= 4'd12)begin 
                diss <= 1'b0; 
                rgb <= 4'd8; 
            end 
            else if(rgb == 4'd15) 
                diss <= 1'd1; 
            else 
                diss <= diss; 
        end 
        else begin 
            rgb <= 4'd8; 
            trig <= 1'b0; 
diss <= 1'b0; 
end 
end 
end 
dcm_25M u0 ( 
.clk_in1(clk), 
.clk_out1(pclk), 
.resetn(rst) 
); 
stingU u1 ( 
.clka(pclk), 
.addra(rom_addr), 
.douta(rom_dout) 
); 
stingD u2 ( 
.clka(pclk), 
.addra(rom_addr1), 
.douta(rom_dout1) 
); 
mushroom_rom u3 ( 
.clka(pclk), 
.addra(rom_addr2), 
.douta(rom_dout2) 
); 
fruit u4 ( 
.clka(pclk), 
.addra(rom_addr3), 
.douta(rom_dout3) 
); 
cookie u5 ( 
.clka(pclk), 
.addra(rom_addr4), 
.douta(rom_dout4) 
); 
SyncGeneration u6 ( 
.pclk(pclk), 
.reset(rst),  
.hSync(hsync), 
.vSync(vsync), 
.dataValid(valid), 
.hDataCnt(h_cnt), 
.vDataCnt(v_cnt), 
.level(level) 
); 
ps5 u7 ( 
.clk_k(Dclk), 
.data_k(Data), 
.start(start[1]), 
.left(left[1]), 
.right(right[1]), 
.reset(rst) 
); 
buttoninput u8 ( 
.clk(clk), 
.s0(S[0]), 
.s2(S[1]), 
.s3(S[2]), 
.start(start[0]), 
.left(left[0]), 
.right(right[0]), 
.rst(rst) 
); 
output [7:0] Pin; 
output [7:0] Seg1; 
output [7:0] Seg2; 
output [15:0]Led; 
wire [2:0]blood; 
wire die; 
wire win,win_e,win_h; 
wire cookie; 
wire seeds; 
wire drop; 
wire End; 
assign die = ~(| blood); 
assign win = win_e | win_h; 
reg round; 
wire [3:0] score2, score1, score0; 
wire [1:0] eat; 
led u9 ( 
.enable(Led), 
.die(die), 
.win(win), 
.clk(Hz[24]), 
.clk_fpga(clk), 
.rst(rst), 
.damage(damage) 
); 
states u10 ( 
.cookie(cookie), 
.seeds(seeds), 
.spike(spike), 
.drop(drop), 
.health(blood), 
.clk_fpga(clk), 
.finish(End), 
.score2(score2), 
.score1(score1), 
.score0(score0), 
.mode(switch), 
.win_e(win_e), 
.win_h(win_h), 
.rst(rst), 
.go(go), 
.damage(damage), 
.eat(eat), 
.crush(crush), 
.level(level) 
); 
sevensegment u11 ( 
.mode(switch), 
.score2(score2), 
.score1(score1), 
.score0(score0), 
.health(blood), 
.clk_pov(Hz[18]), 
.enable(Pin), 
.segment_l(Seg1), 
    .segment_r(Seg2), 
    .rst(rst) 
); 
 
always @(posedge clk, negedge rst)begin 
    if(!rst) begin 
        Hz <= 30'b0; 
        go <= 1'b0; 
    end 
    else begin 
        Hz <= Hz + 1'b1; 
        if(End) 
            go <= 1'b0; 
        else if(start[switch]) 
            go <= 1'b1; 
        else 
            go <= go; 
    end 
end 
 
always @(posedge speed[switch], negedge rst)begin 
    if(!rst)begin 
        level <= 4'b0; 
        round <= 1'b0; 
    end 
    else begin 
        if(go) 
            level <= level + 1'b1; 
        else 
            level <= level; 
        if(level == 4'd15) 
            round <= 1'b1; 
        else 
            round <= round; 
    end 
end 
 
 
 
 
 
always @(posedge pclk, negedge rst)begin 
    if (!rst) begin 
        rom_addr <= 13'd0; 
        rom_addr1 <= 14'd0; 
        rom_addr2 <= 14'd0; 
        rom_addr3 <= 14'd0; 
        rom_addr4 <= 14'd0; 
        vga_data <= 12'hFFF; 
    end 
    else begin 
        if (valid == 1'b1) begin 
            if (logo_area1)begin 
                rom_addr1 <= rom_addr1 + 1; 
                vga_data <= rom_dout1; 
            end 
            else if(margin && ~logo_area2) 
                vga_data <= 12'h000; 
            else if (margin && logo_area2)begin 
                rom_addr2 <= rom_addr2 + 1; 
                vga_data <= 12'h000; 
            end 
            else if (logo_area2 && ~logo_area)begin 
                rom_addr2 <= rom_addr2 + 1; 
                vga_data <= rom_dout2; 
            end 
            else if (logo_area2 && logo_area) begin 
                rom_addr <= rom_addr + 1; 
                vga_data <= rom_dout2; 
                rom_addr2 <= rom_addr2 + 1; 
            end 
            else if(logo_area) begin 
                vga_data <= rom_dout; 
                rom_addr <= rom_addr + 1; 
            end 
            else if(fruitA && ~eat[1])begin 
                rom_addr3 <= rom_addr3 + 14'd1; 
                vga_data <= rom_dout3; 
            end 
            else if(cookieA && ~eat[0])begin 
                rom_addr4 <= rom_addr4 + 14'd1; 
                vga_data <= rom_dout4; 
            end 
            else if(fragA == 1'b1) 
                vga_data <= {3{rgb}}; 
            else if(stair == 1'b1) 
                vga_data <= 12'h888; 
            else begin 
                rom_addr <= rom_addr; 
                rom_addr1 <= rom_addr1; 
                rom_addr2 <= rom_addr2; 
                rom_addr3 <= rom_addr3; 
                rom_addr4 <= rom_addr4; 
                vga_data <= 12'hFFF; 
            end 
             
        end 
        else begin 
            vga_data <= 12'hFFF; 
            if (v_cnt == 0)begin 
                rom_addr <= 14'd0; 
                rom_addr1 <= 14'd0; 
                rom_addr2 <= 14'd0; 
                rom_addr3 <= 14'd0; 
                rom_addr4 <= 14'd0; 
            end     
            else begin 
                rom_addr <= rom_addr; 
                rom_addr1 <= rom_addr1; 
                rom_addr2 <= rom_addr2; 
                rom_addr3 <= rom_addr3; 
                rom_addr4 <= rom_addr4; 
            end     
        end 
    end 
end 
always @(negedge rst,posedge Hz[20]) 
    if(!rst) 
        detect <= 0; 
    else if 
        (right[switch] || left[switch]) detect <= 1; 
    else 
        detect <= 0; 
 
always @(negedge rst,posedge Hz[20]) 
    if(!rst)begin 
        logo_x2 <= 10'd281; 
    end 
    else if (go && ~detect)begin 
        if (right[switch])begin 
            logo_x2 <= logo_x2 == 281 ? 281 : logo_x2 + 40; 
        end 
        if (left[switch])begin 
            logo_x2 <= logo_x2 == 1 ? 1 : logo_x2 - 40; 
        end 
    end 
 
 
reg k,l; 
always @(posedge Pspeed[switch], negedge rst)begin 
    if(!rst)begin 
        logo_y2 <= 11'd181; 
        k <= 1'b0; 
        l <= 1'b0; 
    end 
    else begin 
        if(go)begin 
            if((round != 1'b0) && (level == 4'd0) && ~k)begin 
                k <= 1'b1; 
                if((On || spike) && speed[switch])begin 
                    logo_y2 <= logo_y2 - 11'd960; 
                end 
                else begin 
                    if(speed[switch])begin 
                        if(pre) 
                            logo_y2 <= logo_y2 - 11'd900; 
                        else 
                            logo_y2 <= logo_y2 - 11'd840; 
                    end 
                    else 
                        logo_y2 <= logo_y2 - 11'd900; 
                end 
            end 
            else if(On || spike)begin 
                logo_y2 <= logo_y2; 
            end 
            else begin 
                k <= 1'b0; 
                if(speed[switch] && ~l)begin 
                    l <= 1'b1; 
                    if(pre) 
                        logo_y2 <= logo_y2 + 11'd60; 
                    else if(logo_y2 == level*11'd60 + 11'd420) 
                        logo_y2 <= logo_y2 + 11'd60; 
                    else 
                        logo_y2 <= logo_y2 + 11'd120; 
                end 
                else begin 
                    l <= 1'b0; 
                    logo_y2 <= logo_y2 + 11'd60; 
                end 
            end 
        end 
        else begin 
            l <= l; 
            k <= k; 
            logo_y2 <= logo_y2; 
        end 
    end 
end 
 
always @(posedge Hz[25], negedge rst)begin 
    if(!rst)begin 
        counter <= 4'b0; 
        shift <= 3'd2; 
    end 
    else begin 
        if(go)begin 
            if(switch)begin 
                counter <= counter + 1'b1; 
                if((counter >= 4'd0) && (counter <= 4'd3)) 
                    shift <= shift + 3'd1; 
                else if((counter >= 4'd4) && (counter <= 4'd9)) 
                    shift <= shift - 3'd1; 
                else if(counter == 4'd11)begin 
                    counter <= 4'd0; 
                    shift <= shift + 3'd1; 
                end 
                else 
                    shift <= shift + 3'd1; 
            end 
            else begin 
                counter <= counter; 
                shift <= shift; 
            end 
end 
else begin 
counter <= counter; 
shift <= shift; 
end 
end 
end 
assign pre = ( 
((logo_y2 == 11'd121) & (logo_x2 >= 10'd201) & (logo_x2 <= 10'd320))  
| ((logo_y2 == 11'd241) & (logo_x2 >= 10'd41) & (logo_x2 <= 10'd120))  
| ((logo_y2 == 11'd481) & (logo_x2 >= 10'd121) & (logo_x2 <= 
10'd200))  
| ((logo_y2 == 11'd661 - diss) & (logo_x2 >= 10'd241) & (logo_x2 <= 
10'd320))  
| ((logo_y2 == 11'd781) & (logo_x2 >= shift*10'd40 + 10'd1) & (logo_x2 
<= shift*10'd40 + 10'd80))  
| ((logo_y2 == 11'd1081) & (logo_x2 >= 10'd201) & (logo_x2 <= 
10'd320))  
| ((logo_y2 == 11'd1201) & (logo_x2 >= 10'd41) & (logo_x2 <= 
10'd120)) 
| ((logo_y2 == 11'd361) & (logo_x2 >= 10'd81) & (logo_x2 <= 10'd160))  
| ((logo_y2 == 11'd841) & (logo_x2 >= 10'd161) & (logo_x2 <= 
10'd240))  
); 
assign crush = ((logo_y2 == 11'd1 + level*11'd60)); 
assign logo_area = ( 
((v_cnt >= 11'd421) & (v_cnt <= 11'd470) & (h_cnt >= 10'd81) & (h_cnt 
<= 10'd160) & (level <= 4'd6))  
| ((v_cnt >= 11'd901) & (v_cnt <= 11'd950) & (h_cnt >= 10'd161) & 
(h_cnt <= 10'd240) & (level <= 4'd14))  
) ? 1'b1 : 1'b0; 
assign logo_area1 = ((v_cnt >= 11'd1 + level*11'd60) & (v_cnt <= 11'd60 
+ level*11'd60) & (h_cnt >= 10'd1) & (h_cnt <= 10'd320)) ? 1'b1 : 1'b0; 
assign logo_area2 = ( 
(v_cnt >= logo_y2) & (v_cnt <= logo_y2 + logo_height2 - 1'b1) & (h_cnt 
>= logo_x2) & (h_cnt <= logo_x2 + logo_length2 - 1'b1) 
| ((v_cnt + 11'd960 >= logo_y2) & (v_cnt + 11'd961 <= logo_y2 + 
logo_height2) & (h_cnt >= logo_x2) & (h_cnt <= logo_x2 + 
logo_length2 - 1'b1)) & (level == 4'd0) 
) ? 1'b1 : 1'b0; 
assign margin = ( 
((h_cnt >= 10'd1) & (h_cnt <= 10'd5)) 
| ((h_cnt >= 10'd316) & (h_cnt <= 10'd320)) 
) ? 1'b1 : 1'b0; 
assign stair = ( 
((v_cnt >= 11'd231) & (v_cnt <= 11'd240) & (h_cnt >= 10'd201) & 
(h_cnt <= 10'd320) & (level <= 4'd2))  
| ((v_cnt >= 11'd351) & (v_cnt <= 11'd360) & (h_cnt >= 10'd41) & 
(h_cnt <= 10'd120) & (level <= 4'd4))  
| ((v_cnt >= 11'd591) & (v_cnt <= 11'd600) & (h_cnt >= 10'd121) & 
(h_cnt <= 10'd200) & (level <= 4'd8))  
| ((v_cnt >= 11'd891) & (v_cnt <= 11'd900) & (h_cnt >= shift*10'd40 + 
10'd1) & (h_cnt <= shift*10'd40 + 10'd80) & (level <= 4'd13)) 
| ((v_cnt >= 11'd1191) & (v_cnt <= 11'd1200) & (h_cnt >= 10'd201) & 
(h_cnt <= 10'd320))  
| ((v_cnt >= 11'd1311) & (v_cnt <= 11'd1320) & (h_cnt >= 10'd41) & 
(h_cnt <= 10'd120)) 
| ((v_cnt >= 11'd471) & (v_cnt <= 11'd480) & (h_cnt >= 10'd81) & 
(h_cnt <= 10'd160) & (level <= 4'd6))  
| ((v_cnt >= 11'd951) & (v_cnt <= 11'd960) & (h_cnt >= 10'd161) & 
(h_cnt <= 10'd240) & (level <= 4'd14))  
) ? 1'b1 : 1'b0; 
assign On = ( 
((logo_y2 == 11'd181) & (logo_x2 >= 10'd201) & (logo_x2 <= 10'd320))  
| ((logo_y2 == 11'd301) & (logo_x2 >= 10'd41) & (logo_x2 <= 10'd120))  
| ((logo_y2 == 11'd541) & (logo_x2 >= 10'd121) & (logo_x2 <= 
10'd200))  
| ((logo_y2 == 11'd721 - diss) & (logo_x2 >= 10'd241) & (logo_x2 <= 
10'd320))  
| ((logo_y2 == 11'd841) & (logo_x2 >= shift*10'd40 + 10'd1) & (logo_x2 
<= shift*10'd40 + 10'd80))  
| ((logo_y2 == 11'd1141) & (logo_x2 >= 10'd201) & (logo_x2 <= 
10'd320))  
| ((logo_y2 == 11'd1261) & (logo_x2 >= 10'd41) & (logo_x2 <= 
10'd120)) 
) ? 1'b1 : 1'b0; 
assign spike = ( 
((logo_y2 == 11'd421) & (logo_x2 >= 10'd81) & (logo_x2 <= 10'd160))  
| ((logo_y2 == 11'd901) & (logo_x2 >= 10'd161) & (logo_x2 <= 
10'd240))  
) ? 1'b1 : 1'b0; 
assign fruitA = (v_cnt >= 11'd541) & (v_cnt <= 11'd590) & (h_cnt >= 
10'd121) & (h_cnt <= 10'd155); 
assign cookieA = (v_cnt >= 11'd721) & (v_cnt <= 11'd770) & (h_cnt >= 
10'd241) & (h_cnt <= 10'd275); 
assign cookie = ((logo_y2 == 11'd721) & (logo_x2 == 10'd241)); 
assign seeds = ((logo_y2 == 11'd541) & (logo_x2 == 10'd121)); 
assign drop = ((logo_y2 == (level + 4'd7)*11'd60) && ~On && ~spike); 
assign Pspeed[1] = Hz[25]; 
assign Pspeed[0] = Hz[26]; 
assign speed[1] = Hz[26]; 
assign speed[0] = Hz[27]; 
assign {vga_r,vga_g,vga_b} = vga_data; 
endmodule 
 
module ps5(clk_k,data_k,start,left,right,reset); 
input clk_k,data_k,reset; 
output reg start,left,right; 
reg [7:0] data_curr; 
reg [3:0] counter; 
reg break; 
parameter S = 8'h1B; 
parameter A = 8'h1C; 
parameter D = 8'h23; 
parameter BREAK = 8'hf0; 
always @(negedge clk_k or negedge reset)begin 
    if(!reset) 
        data_curr <= 8'h00; 
    else 
        case(counter) 
            2:data_curr[0] <= data_k; 
            3:data_curr[1] <= data_k; 
            4:data_curr[2] <= data_k; 
            5:data_curr[3] <= data_k; 
            6:data_curr[4] <= data_k; 
            7:data_curr[5] <= data_k; 
            8:data_curr[6] <= data_k; 
            9:data_curr[7] <= data_k; 
        default:; 
        endcase 
end 
 
always @(negedge clk_k or negedge reset)begin 
    if(~reset || counter == 11) 
        counter <= 1; 
    else 
        counter <= counter + 1; 
end 
 
always@(posedge counter == 10)begin 
    if(~reset || break)begin 
        start <= 0; 
        left <= 0; 
        right <= 0; 
        break <= 0; 
    end 
    else 
        case(data_curr) 
            S:start <= 1; 
            A:left <= 1; 
            D:right <= 1; 
            BREAK:break <= 1; 
        endcase 
end 
endmodule 
 
module deboucing(press_o,press_i,clk,rst); 
input press_i,clk,rst; 
output reg press_o; 
reg [22:0] counter; 
wire d; 
assign d = counter[22]; 
 
always @(posedge clk, negedge rst) begin 
    if(!rst) begin 
        counter <= 21'd0; 
        press_o <= 1'd0; 
    end 
    else begin 
        if(press_i && ~d) 
            counter <= counter + 21'd1; 
        else if(press_i) 
            counter <= counter; 
        else 
            counter <= 21'd0; 
        if(d) 
            press_o <= 1'd1; 
        else 
            press_o <= 1'd0;  
    end 
end 
endmodule 
module buttoninput(clk,s0,s2,s3,start,left,right,rst); 
input clk, s0, s2, s3, rst; 
output start,left,right; 
wire debounced_0,debounced_2,debounced_3; 
assign start = debounced_2; 
assign left = debounced_3; 
assign right = debounced_0; 
deboucing(debounced_0,s0,clk,rst); 
deboucing(debounced_2,s2,clk,rst); 
deboucing(debounced_3,s3,clk,rst); 
endmodule 
module 
states(seeds,cookie,eat,spike,drop,health,clk_fpga,finish,score2,score1,sc
 ore0,mode,win_e,win_h,rst,go,damage,crush,level); 
input seeds,cookie,spike,drop,mode,rst,go,clk_fpga,crush; 
input [3:0]level; 
output reg finish; 
output reg [2:0] health; 
output reg [3:0] score2,score1,score0; 
output win_e,win_h,damage; 
wire win_e; 
wire win_h; 
assign win_e = ~mode && {score2,score1,score0} >= {4'd2,4'd0,4'd0}; 
assign win_h = mode && {score2,score1,score0} >= {4'd9,4'd9,4'd9}; 
reg [27:0] damagecounter; 
reg [27:0] addcounter; 
wire damage; 
assign damage = damagecounter[27]; 
wire add; 
assign add = addcounter[27]; 
output reg [1:0] eat; 
reg [1:0] record; 
always @(posedge clk_fpga, negedge rst) 
if(!rst) 
eat <= 0; 
else begin 
if(seeds && ~eat[1] && health < 3'd4) 
eat[1] <= 1; 
        else if(level >= 4'd9) 
            eat[1] <= 1'b0; 
        else 
            eat[1] <= eat[1]; 
        if(cookie && ~eat[0]) 
            eat[0] <= 1; 
        else if(level >= 4'd12) 
            eat[0] <= 1'b0; 
        else 
            eat[0] <= eat[0]; 
end 
 
always @(posedge clk_fpga, negedge rst)begin 
    if(!rst)begin 
        health <= 3'd4; 
        damagecounter <= 0; 
        record[1] <= 0; 
    end 
    else begin 
        if(level >= 4'd9) 
            record[1] <= 1'b0; 
        else if (eat[1] && ~record[1]) 
            record[1] <= 1'b1; 
        else 
            record[1] <= record[1]; 
        if (drop || crush) 
            health <= 3'd0; 
        else if (eat[1] && ~record[1]) 
            health <= health + 1; 
        else if (damage && ~finish) 
            health <= health - 3'd1; 
        else 
            health <= health; 
        if (~spike) 
            damagecounter <= 28'd0; 
        else if(damage && ~finish) 
            damagecounter <= 28'd0; 
        else 
            damagecounter <= damagecounter + 28'd1; 
    end 
end 
 
always @(posedge clk_fpga, negedge rst)begin 
if(!rst)  finish <= 1'd0; 
else if(drop || ~(| health) || win_e || win_h) finish <= 1'd1; 
else finish <= finish; 
end 
 
always @(posedge clk_fpga, negedge rst)begin 
    if(!rst) begin 
        score2 <= 4'd0; 
        score1 <= 4'd0; 
        score0 <= 4'd0; 
        addcounter <= 28'd0; 
        record[0] <= 1'd0; 
    end 
    else begin 
        if(level >= 4'd12) 
            record[0] <= 1'b0; 
        else if(eat[0] && ~record[0] && go) 
            record[0] <= 1'b1; 
        else 
            record[0] <= record[0]; 
        if (damage && go)begin 
            if(score2 == 4'd0 && score1 <= 4'd5)begin 
                score0 <= score0; 
                score1 <= 4'd0; 
                score2 <= score2; 
            end 
            else if(score2 >= 4'd1 && score1 < 4'd5)begin 
                score2 <= score2 - 4'd1; 
                score1 <= score1 + 4'd5; 
                score0 <= score0; 
            end 
            else begin 
                score0 <= score0; 
                score1 <= score1 - 4'd5; 
                score2 <= score2; 
            end 
        end 
        else if (eat[0] && ~record[0] && go)begin 
            if((score2 >= 4'd8) && (score1 >= 4'd7) && (score0 >= 
4'd9))begin 
                score2 <= 4'd9; 
                score1 <= 4'd9;  
                score0 <= 4'd9;  
            end 
            else if((score2 <= 4'd8) && (score1 >= 4'd8))begin 
                score2 <= score2 + 4'd2; 
                score1 <= score1 - 4'd8; 
                score0 <= score0; 
            end 
            else begin 
                score0 <= score0; 
                score1 <= score1 + 4'd2; 
                score2 <= score2 + 4'd1; 
            end 
        end 
        else if (add && go)begin 
            if((score2 >= 4'd9) && (score1 >= 4'd8) && (score0 >= 
4'd0))begin 
                score2 <= 4'd9; 
                score1 <= 4'd9; 
                score0 <= 4'd9; 
            end 
            else if((score2 <= 4'd8) && (score1 >= 4'd8))begin 
                score2 <= score2 + 4'd1; 
                score1 <= score1 - 4'd8; 
                score0 <= score0; 
            end 
            else begin 
                score0 <= score0; 
                score1 <= score1 + 4'd2; 
                score2 <= score2; 
            end 
        end 
        else begin 
            score0 <= score0; 
            score1 <= score1; 
            score2 <= score2; 
        end 
        if (go)begin 
            if (damage && go) 
                addcounter <= 28'd0; 
            else if (eat[0] && ~record[0] && go) 
                addcounter <= 28'd0; 
            else if (add && go) 
                addcounter <= 28'd0; 
            else 
                addcounter <= addcounter + 1; 
        end 
        else 
            addcounter <= addcounter; 
    end 
end 
endmodule 
 
module led(enable,win,die,damage,clk,clk_fpga,rst); 
input clk,rst,win,die,damage,clk_fpga; 
output [15:0] enable; 
reg [1:0] mode; 
reg [3:0] enable_4; 
reg [3:0] times; 
assign enable = 
{enable_4[3:0],{enable_4[0],enable_4[1],enable_4[2],enable_4[3]},enabl
 e_4[3:0],{enable_4[0],enable_4[1],enable_4[2],enable_4[3]}}; 
reg [3:0] objecttimes; 
reg time_rst; 
 
always @(posedge clk,negedge rst) 
if(~rst || time_rst) 
begin 
times <= 0; 
time_rst <= 0; 
end 
else if (times <= objecttimes && objecttimes != 0) times <= times + 1; 
else if (objecttimes != 0 && mode == 2) time_rst <= 1; 
 
always @(posedge clk_fpga,negedge rst) 
begin 
    if(~rst || time_rst) 
    begin 
        objecttimes <= 0; 
        mode <= 3; 
    end 
    else if (die && objecttimes == 0) 
    begin 
        mode <= 2'd0; 
        objecttimes <= 5; 
    end 
    else if(win && objecttimes == 0) 
    begin 
        mode <= 2'd1; 
        objecttimes <= 8; 
    end 
    else if(damage && objecttimes == 0 && ~die) 
    begin 
        mode <= 2; 
        objecttimes <= 1; 
    end 
end 
 
always @(posedge clk, negedge rst)begin 
    if(~rst || time_rst)begin 
        enable_4 <= 4'b0000; 
    end 
    else if(times <= objecttimes) begin 
        if(mode == 1)begin 
            case(times) 
                0,4: enable_4 <= 4'b1000; 
                1,5: enable_4 <= 4'b0100; 
                2,6: enable_4 <= 4'b0010; 
                3,7: enable_4 <= 4'b0001; 
                default: enable_4 <= 4'b0000; 
            endcase  
        end 
        else if(mode == 0 || mode == 2)begin 
            case(times) 
                0,2,4,6: enable_4 <= 4'b1111; 
                1,3,5,7: enable_4 <= 4'b0000; 
                default: enable_4 <= 4'b0000; 
            endcase 
        end 
    end 
end 
endmodule 
 
module 
sevensegment(mode,score2,score1,score0,health,clk_pov,enable,segment
 _l,segment_r,rst); 
input mode,rst; 
input [3:0] score2,score1,score0; 
input [2:0] health; 
input clk_pov; 
output reg [7:0] enable,segment_l,segment_r; 
reg [1:0]counter; 
 
always @(posedge clk_pov, negedge rst)begin 
    if(~rst)begin 
        enable <= 8'b00000000; 
        segment_l <= 8'b00000000; 
        segment_r <= 8'b00000000; 
        counter <= 2'b0; 
    end 
    else begin 
        counter <= counter + 1'b1; 
        case(counter) 
            2'b00: begin 
                enable <= 8'b10001000; 
                segment_l <= intseg(mode); 
                segment_r <= intseg(health >= 3'd4 ? 4'h0 : 4'ha); 
            end 
            2'b01: begin 
                enable <= 8'b01000100; 
                segment_l <= intseg(score2 == 0 ? 4'ha : score2); 
                segment_r <= intseg(health >= 3'd3 ? 4'h0 : 4'ha); 
            end 
            2'b10: begin 
                enable <= 8'b00100010; 
                segment_l <= intseg(score1 == 0 && score2 == 0 ? 
4'ha : score1); 
                segment_r <= intseg(health >= 3'd2 ? 4'h0 : 4'ha); 
            end 
            2'b11: begin 
                enable <= 8'b00010001; 
                segment_l <= intseg(score0); 
                segment_r <= intseg(health >= 3'd1 ? 4'h0 : 4'ha); 
            end 
        endcase 
    end 
end 
 
function [7:0] intseg; 
input [3:0] pattern; 
 
case(pattern) 
    4'h0: intseg = 8'b11111100; 
    4'h1: intseg = 8'b01100000; 
4'h2: intseg = 8'b11011010; 
4'h3: intseg = 8'b11110010; 
4'h4: intseg = 8'b01100110; 
4'h5: intseg = 8'b10110110; 
4'h6: intseg = 8'b10111110; 
4'h7: intseg = 8'b11100000; 
4'h8: intseg = 8'b11111110; 
4'h9: intseg = 8'b11110110; 
default: intseg = 8'b00000000; 
endcase 
endfunction 
endmodule