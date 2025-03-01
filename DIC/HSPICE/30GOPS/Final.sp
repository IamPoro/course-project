
.include '7nm_TT.pm'
.include 'asap7sc7p5t_AO_RVT.sp'
.include 'asap7sc7p5t_INVBUF_RVT.sp'
.include 'asap7sc7p5t_OA_RVT.sp'
.include 'asap7sc7p5t_SEQ_RVT.sp'
.include 'asap7sc7p5t_SIMPLE_RVT.sp'
.include 'CIM_cell.sp'
.include 'DCIM_SYN_new.sp'
.include 'IC.sp'
.vec 'Pattern.vec'

.global vdd gnd
vdd vdd gnd dc 0.5

xbuf0 Input_0 In_bar_0 INV
xbuf1 Input_1 In_bar_1 INV
xbuf2 Input_2 In_bar_2 INV
xbuf3 Input_3 In_bar_3 INV
xbuf4 Input_4 In_bar_4 INV
xbuf5 Input_5 In_bar_5 INV
xbuf6 Input_6 In_bar_6 INV
xbuf7 Input_7 In_bar_7 INV
xbuf8 Input_8 In_bar_8 INV
xbuf9 Input_9 In_bar_9 INV
xbuf10 Input_10 In_bar_10 INV
xbuf11 Input_11 In_bar_11 INV
xbuf12 Input_12 In_bar_12 INV
xbuf13 Input_13 In_bar_13 INV
xbuf14 Input_14 In_bar_14 INV
xbuf15 Input_15 In_bar_15 INV
xbuf16 Input_16 In_bar_16 INV
xbuf17 Input_17 In_bar_17 INV
xbuf18 Input_18 In_bar_18 INV
xbuf19 Input_19 In_bar_19 INV
xbuf20 Input_20 In_bar_20 INV
xbuf21 Input_21 In_bar_21 INV
xbuf22 Input_22 In_bar_22 INV
xbuf23 Input_23 In_bar_23 INV
xbuf24 Input_24 In_bar_24 INV
xbuf25 Input_25 In_bar_25 INV
xbuf26 Input_26 In_bar_26 INV
xbuf27 Input_27 In_bar_27 INV
xbuf28 Input_28 In_bar_28 INV
xbuf29 Input_29 In_bar_29 INV
xbuf30 Input_30 In_bar_30 INV
xbuf31 Input_31 In_bar_31 INV

.subckt CIM_cell_pix In_bar Output_0 Output_1 Output_2 Output_3 WL BL_0 BL_1 BL_2 BL_3 BLB_0 BLB_1 BLB_2 BLB_3 q_0 q_1 q_2 q_3 qb_0 qb_1 qb_2 qb_3
    Xc0 In_bar Output_0 WL BL_0 BLB_0 q_0 qb_0 CIM_cell
    Xc1 In_bar Output_1 WL BL_1 BLB_1 q_1 qb_1 CIM_cell
    Xc2 In_bar Output_2 WL BL_2 BLB_2 q_2 qb_2 CIM_cell
    Xc3 In_bar Output_3 WL BL_3 BLB_3 q_3 qb_3 CIM_cell
.ends

.subckt CIM_cell_col In_bar_0 Output_0_0 Output_0_1 Output_0_2 Output_0_3 WL_0 BL_0_0 BL_0_1 BL_0_2 BL_0_3 BLB_0_0 BLB_0_1 BLB_0_2 BLB_0_3 q_0_0 q_0_1 q_0_2 q_0_3 qb_0_0 qb_0_1 qb_0_2 qb_0_3
+ In_bar_1 Output_1_0 Output_1_1 Output_1_2 Output_1_3 WL_1 BL_1_0 BL_1_1 BL_1_2 BL_1_3 BLB_1_0 BLB_1_1 BLB_1_2 BLB_1_3 q_1_0 q_1_1 q_1_2 q_1_3 qb_1_0 qb_1_1 qb_1_2 qb_1_3
+ In_bar_2 Output_2_0 Output_2_1 Output_2_2 Output_2_3 WL_2 BL_2_0 BL_2_1 BL_2_2 BL_2_3 BLB_2_0 BLB_2_1 BLB_2_2 BLB_2_3 q_2_0 q_2_1 q_2_2 q_2_3 qb_2_0 qb_2_1 qb_2_2 qb_2_3
+ In_bar_3 Output_3_0 Output_3_1 Output_3_2 Output_3_3 WL_3 BL_3_0 BL_3_1 BL_3_2 BL_3_3 BLB_3_0 BLB_3_1 BLB_3_2 BLB_3_3 q_3_0 q_3_1 q_3_2 q_3_3 qb_3_0 qb_3_1 qb_3_2 qb_3_3
+ In_bar_4 Output_4_0 Output_4_1 Output_4_2 Output_4_3 WL_4 BL_4_0 BL_4_1 BL_4_2 BL_4_3 BLB_4_0 BLB_4_1 BLB_4_2 BLB_4_3 q_4_0 q_4_1 q_4_2 q_4_3 qb_4_0 qb_4_1 qb_4_2 qb_4_3
+ In_bar_5 Output_5_0 Output_5_1 Output_5_2 Output_5_3 WL_5 BL_5_0 BL_5_1 BL_5_2 BL_5_3 BLB_5_0 BLB_5_1 BLB_5_2 BLB_5_3 q_5_0 q_5_1 q_5_2 q_5_3 qb_5_0 qb_5_1 qb_5_2 qb_5_3
+ In_bar_6 Output_6_0 Output_6_1 Output_6_2 Output_6_3 WL_6 BL_6_0 BL_6_1 BL_6_2 BL_6_3 BLB_6_0 BLB_6_1 BLB_6_2 BLB_6_3 q_6_0 q_6_1 q_6_2 q_6_3 qb_6_0 qb_6_1 qb_6_2 qb_6_3
+ In_bar_7 Output_7_0 Output_7_1 Output_7_2 Output_7_3 WL_7 BL_7_0 BL_7_1 BL_7_2 BL_7_3 BLB_7_0 BLB_7_1 BLB_7_2 BLB_7_3 q_7_0 q_7_1 q_7_2 q_7_3 qb_7_0 qb_7_1 qb_7_2 qb_7_3
+ In_bar_8 Output_8_0 Output_8_1 Output_8_2 Output_8_3 WL_8 BL_8_0 BL_8_1 BL_8_2 BL_8_3 BLB_8_0 BLB_8_1 BLB_8_2 BLB_8_3 q_8_0 q_8_1 q_8_2 q_8_3 qb_8_0 qb_8_1 qb_8_2 qb_8_3
+ In_bar_9 Output_9_0 Output_9_1 Output_9_2 Output_9_3 WL_9 BL_9_0 BL_9_1 BL_9_2 BL_9_3 BLB_9_0 BLB_9_1 BLB_9_2 BLB_9_3 q_9_0 q_9_1 q_9_2 q_9_3 qb_9_0 qb_9_1 qb_9_2 qb_9_3
+ In_bar_10 Output_10_0 Output_10_1 Output_10_2 Output_10_3 WL_10 BL_10_0 BL_10_1 BL_10_2 BL_10_3 BLB_10_0 BLB_10_1 BLB_10_2 BLB_10_3 q_10_0 q_10_1 q_10_2 q_10_3 qb_10_0 qb_10_1 qb_10_2 qb_10_3
+ In_bar_11 Output_11_0 Output_11_1 Output_11_2 Output_11_3 WL_11 BL_11_0 BL_11_1 BL_11_2 BL_11_3 BLB_11_0 BLB_11_1 BLB_11_2 BLB_11_3 q_11_0 q_11_1 q_11_2 q_11_3 qb_11_0 qb_11_1 qb_11_2 qb_11_3
+ In_bar_12 Output_12_0 Output_12_1 Output_12_2 Output_12_3 WL_12 BL_12_0 BL_12_1 BL_12_2 BL_12_3 BLB_12_0 BLB_12_1 BLB_12_2 BLB_12_3 q_12_0 q_12_1 q_12_2 q_12_3 qb_12_0 qb_12_1 qb_12_2 qb_12_3
+ In_bar_13 Output_13_0 Output_13_1 Output_13_2 Output_13_3 WL_13 BL_13_0 BL_13_1 BL_13_2 BL_13_3 BLB_13_0 BLB_13_1 BLB_13_2 BLB_13_3 q_13_0 q_13_1 q_13_2 q_13_3 qb_13_0 qb_13_1 qb_13_2 qb_13_3
+ In_bar_14 Output_14_0 Output_14_1 Output_14_2 Output_14_3 WL_14 BL_14_0 BL_14_1 BL_14_2 BL_14_3 BLB_14_0 BLB_14_1 BLB_14_2 BLB_14_3 q_14_0 q_14_1 q_14_2 q_14_3 qb_14_0 qb_14_1 qb_14_2 qb_14_3
+ In_bar_15 Output_15_0 Output_15_1 Output_15_2 Output_15_3 WL_15 BL_15_0 BL_15_1 BL_15_2 BL_15_3 BLB_15_0 BLB_15_1 BLB_15_2 BLB_15_3 q_15_0 q_15_1 q_15_2 q_15_3 qb_15_0 qb_15_1 qb_15_2 qb_15_3
+ In_bar_16 Output_16_0 Output_16_1 Output_16_2 Output_16_3 WL_16 BL_16_0 BL_16_1 BL_16_2 BL_16_3 BLB_16_0 BLB_16_1 BLB_16_2 BLB_16_3 q_16_0 q_16_1 q_16_2 q_16_3 qb_16_0 qb_16_1 qb_16_2 qb_16_3
+ In_bar_17 Output_17_0 Output_17_1 Output_17_2 Output_17_3 WL_17 BL_17_0 BL_17_1 BL_17_2 BL_17_3 BLB_17_0 BLB_17_1 BLB_17_2 BLB_17_3 q_17_0 q_17_1 q_17_2 q_17_3 qb_17_0 qb_17_1 qb_17_2 qb_17_3
+ In_bar_18 Output_18_0 Output_18_1 Output_18_2 Output_18_3 WL_18 BL_18_0 BL_18_1 BL_18_2 BL_18_3 BLB_18_0 BLB_18_1 BLB_18_2 BLB_18_3 q_18_0 q_18_1 q_18_2 q_18_3 qb_18_0 qb_18_1 qb_18_2 qb_18_3
+ In_bar_19 Output_19_0 Output_19_1 Output_19_2 Output_19_3 WL_19 BL_19_0 BL_19_1 BL_19_2 BL_19_3 BLB_19_0 BLB_19_1 BLB_19_2 BLB_19_3 q_19_0 q_19_1 q_19_2 q_19_3 qb_19_0 qb_19_1 qb_19_2 qb_19_3
+ In_bar_20 Output_20_0 Output_20_1 Output_20_2 Output_20_3 WL_20 BL_20_0 BL_20_1 BL_20_2 BL_20_3 BLB_20_0 BLB_20_1 BLB_20_2 BLB_20_3 q_20_0 q_20_1 q_20_2 q_20_3 qb_20_0 qb_20_1 qb_20_2 qb_20_3
+ In_bar_21 Output_21_0 Output_21_1 Output_21_2 Output_21_3 WL_21 BL_21_0 BL_21_1 BL_21_2 BL_21_3 BLB_21_0 BLB_21_1 BLB_21_2 BLB_21_3 q_21_0 q_21_1 q_21_2 q_21_3 qb_21_0 qb_21_1 qb_21_2 qb_21_3
+ In_bar_22 Output_22_0 Output_22_1 Output_22_2 Output_22_3 WL_22 BL_22_0 BL_22_1 BL_22_2 BL_22_3 BLB_22_0 BLB_22_1 BLB_22_2 BLB_22_3 q_22_0 q_22_1 q_22_2 q_22_3 qb_22_0 qb_22_1 qb_22_2 qb_22_3
+ In_bar_23 Output_23_0 Output_23_1 Output_23_2 Output_23_3 WL_23 BL_23_0 BL_23_1 BL_23_2 BL_23_3 BLB_23_0 BLB_23_1 BLB_23_2 BLB_23_3 q_23_0 q_23_1 q_23_2 q_23_3 qb_23_0 qb_23_1 qb_23_2 qb_23_3
+ In_bar_24 Output_24_0 Output_24_1 Output_24_2 Output_24_3 WL_24 BL_24_0 BL_24_1 BL_24_2 BL_24_3 BLB_24_0 BLB_24_1 BLB_24_2 BLB_24_3 q_24_0 q_24_1 q_24_2 q_24_3 qb_24_0 qb_24_1 qb_24_2 qb_24_3
+ In_bar_25 Output_25_0 Output_25_1 Output_25_2 Output_25_3 WL_25 BL_25_0 BL_25_1 BL_25_2 BL_25_3 BLB_25_0 BLB_25_1 BLB_25_2 BLB_25_3 q_25_0 q_25_1 q_25_2 q_25_3 qb_25_0 qb_25_1 qb_25_2 qb_25_3
+ In_bar_26 Output_26_0 Output_26_1 Output_26_2 Output_26_3 WL_26 BL_26_0 BL_26_1 BL_26_2 BL_26_3 BLB_26_0 BLB_26_1 BLB_26_2 BLB_26_3 q_26_0 q_26_1 q_26_2 q_26_3 qb_26_0 qb_26_1 qb_26_2 qb_26_3
+ In_bar_27 Output_27_0 Output_27_1 Output_27_2 Output_27_3 WL_27 BL_27_0 BL_27_1 BL_27_2 BL_27_3 BLB_27_0 BLB_27_1 BLB_27_2 BLB_27_3 q_27_0 q_27_1 q_27_2 q_27_3 qb_27_0 qb_27_1 qb_27_2 qb_27_3
+ In_bar_28 Output_28_0 Output_28_1 Output_28_2 Output_28_3 WL_28 BL_28_0 BL_28_1 BL_28_2 BL_28_3 BLB_28_0 BLB_28_1 BLB_28_2 BLB_28_3 q_28_0 q_28_1 q_28_2 q_28_3 qb_28_0 qb_28_1 qb_28_2 qb_28_3
+ In_bar_29 Output_29_0 Output_29_1 Output_29_2 Output_29_3 WL_29 BL_29_0 BL_29_1 BL_29_2 BL_29_3 BLB_29_0 BLB_29_1 BLB_29_2 BLB_29_3 q_29_0 q_29_1 q_29_2 q_29_3 qb_29_0 qb_29_1 qb_29_2 qb_29_3
+ In_bar_30 Output_30_0 Output_30_1 Output_30_2 Output_30_3 WL_30 BL_30_0 BL_30_1 BL_30_2 BL_30_3 BLB_30_0 BLB_30_1 BLB_30_2 BLB_30_3 q_30_0 q_30_1 q_30_2 q_30_3 qb_30_0 qb_30_1 qb_30_2 qb_30_3
+ In_bar_31 Output_31_0 Output_31_1 Output_31_2 Output_31_3 WL_31 BL_31_0 BL_31_1 BL_31_2 BL_31_3 BLB_31_0 BLB_31_1 BLB_31_2 BLB_31_3 q_31_0 q_31_1 q_31_2 q_31_3 qb_31_0 qb_31_1 qb_31_2 qb_31_3
    xrow0 In_bar_0 Output_0_0 Output_0_1 Output_0_2 Output_0_3 WL_0 BL_0_0 BL_0_1 BL_0_2 BL_0_3 BLB_0_0 BLB_0_1 BLB_0_2 BLB_0_3 q_0_0 q_0_1 q_0_2 q_0_3 qb_0_0 qb_0_1 qb_0_2 qb_0_3 CIM_cell_pix
    xrow1 In_bar_1 Output_1_0 Output_1_1 Output_1_2 Output_1_3 WL_1 BL_1_0 BL_1_1 BL_1_2 BL_1_3 BLB_1_0 BLB_1_1 BLB_1_2 BLB_1_3 q_1_0 q_1_1 q_1_2 q_1_3 qb_1_0 qb_1_1 qb_1_2 qb_1_3 CIM_cell_pix
    xrow2 In_bar_2 Output_2_0 Output_2_1 Output_2_2 Output_2_3 WL_2 BL_2_0 BL_2_1 BL_2_2 BL_2_3 BLB_2_0 BLB_2_1 BLB_2_2 BLB_2_3 q_2_0 q_2_1 q_2_2 q_2_3 qb_2_0 qb_2_1 qb_2_2 qb_2_3 CIM_cell_pix
    xrow3 In_bar_3 Output_3_0 Output_3_1 Output_3_2 Output_3_3 WL_3 BL_3_0 BL_3_1 BL_3_2 BL_3_3 BLB_3_0 BLB_3_1 BLB_3_2 BLB_3_3 q_3_0 q_3_1 q_3_2 q_3_3 qb_3_0 qb_3_1 qb_3_2 qb_3_3 CIM_cell_pix
    xrow4 In_bar_4 Output_4_0 Output_4_1 Output_4_2 Output_4_3 WL_4 BL_4_0 BL_4_1 BL_4_2 BL_4_3 BLB_4_0 BLB_4_1 BLB_4_2 BLB_4_3 q_4_0 q_4_1 q_4_2 q_4_3 qb_4_0 qb_4_1 qb_4_2 qb_4_3 CIM_cell_pix
    xrow5 In_bar_5 Output_5_0 Output_5_1 Output_5_2 Output_5_3 WL_5 BL_5_0 BL_5_1 BL_5_2 BL_5_3 BLB_5_0 BLB_5_1 BLB_5_2 BLB_5_3 q_5_0 q_5_1 q_5_2 q_5_3 qb_5_0 qb_5_1 qb_5_2 qb_5_3 CIM_cell_pix
    xrow6 In_bar_6 Output_6_0 Output_6_1 Output_6_2 Output_6_3 WL_6 BL_6_0 BL_6_1 BL_6_2 BL_6_3 BLB_6_0 BLB_6_1 BLB_6_2 BLB_6_3 q_6_0 q_6_1 q_6_2 q_6_3 qb_6_0 qb_6_1 qb_6_2 qb_6_3 CIM_cell_pix
    xrow7 In_bar_7 Output_7_0 Output_7_1 Output_7_2 Output_7_3 WL_7 BL_7_0 BL_7_1 BL_7_2 BL_7_3 BLB_7_0 BLB_7_1 BLB_7_2 BLB_7_3 q_7_0 q_7_1 q_7_2 q_7_3 qb_7_0 qb_7_1 qb_7_2 qb_7_3 CIM_cell_pix
    xrow8 In_bar_8 Output_8_0 Output_8_1 Output_8_2 Output_8_3 WL_8 BL_8_0 BL_8_1 BL_8_2 BL_8_3 BLB_8_0 BLB_8_1 BLB_8_2 BLB_8_3 q_8_0 q_8_1 q_8_2 q_8_3 qb_8_0 qb_8_1 qb_8_2 qb_8_3 CIM_cell_pix
    xrow9 In_bar_9 Output_9_0 Output_9_1 Output_9_2 Output_9_3 WL_9 BL_9_0 BL_9_1 BL_9_2 BL_9_3 BLB_9_0 BLB_9_1 BLB_9_2 BLB_9_3 q_9_0 q_9_1 q_9_2 q_9_3 qb_9_0 qb_9_1 qb_9_2 qb_9_3 CIM_cell_pix
    xrow10 In_bar_10 Output_10_0 Output_10_1 Output_10_2 Output_10_3 WL_10 BL_10_0 BL_10_1 BL_10_2 BL_10_3 BLB_10_0 BLB_10_1 BLB_10_2 BLB_10_3 q_10_0 q_10_1 q_10_2 q_10_3 qb_10_0 qb_10_1 qb_10_2 qb_10_3 CIM_cell_pix
    xrow11 In_bar_11 Output_11_0 Output_11_1 Output_11_2 Output_11_3 WL_11 BL_11_0 BL_11_1 BL_11_2 BL_11_3 BLB_11_0 BLB_11_1 BLB_11_2 BLB_11_3 q_11_0 q_11_1 q_11_2 q_11_3 qb_11_0 qb_11_1 qb_11_2 qb_11_3 CIM_cell_pix
    xrow12 In_bar_12 Output_12_0 Output_12_1 Output_12_2 Output_12_3 WL_12 BL_12_0 BL_12_1 BL_12_2 BL_12_3 BLB_12_0 BLB_12_1 BLB_12_2 BLB_12_3 q_12_0 q_12_1 q_12_2 q_12_3 qb_12_0 qb_12_1 qb_12_2 qb_12_3 CIM_cell_pix
    xrow13 In_bar_13 Output_13_0 Output_13_1 Output_13_2 Output_13_3 WL_13 BL_13_0 BL_13_1 BL_13_2 BL_13_3 BLB_13_0 BLB_13_1 BLB_13_2 BLB_13_3 q_13_0 q_13_1 q_13_2 q_13_3 qb_13_0 qb_13_1 qb_13_2 qb_13_3 CIM_cell_pix
    xrow14 In_bar_14 Output_14_0 Output_14_1 Output_14_2 Output_14_3 WL_14 BL_14_0 BL_14_1 BL_14_2 BL_14_3 BLB_14_0 BLB_14_1 BLB_14_2 BLB_14_3 q_14_0 q_14_1 q_14_2 q_14_3 qb_14_0 qb_14_1 qb_14_2 qb_14_3 CIM_cell_pix
    xrow15 In_bar_15 Output_15_0 Output_15_1 Output_15_2 Output_15_3 WL_15 BL_15_0 BL_15_1 BL_15_2 BL_15_3 BLB_15_0 BLB_15_1 BLB_15_2 BLB_15_3 q_15_0 q_15_1 q_15_2 q_15_3 qb_15_0 qb_15_1 qb_15_2 qb_15_3 CIM_cell_pix
    xrow16 In_bar_16 Output_16_0 Output_16_1 Output_16_2 Output_16_3 WL_16 BL_16_0 BL_16_1 BL_16_2 BL_16_3 BLB_16_0 BLB_16_1 BLB_16_2 BLB_16_3 q_16_0 q_16_1 q_16_2 q_16_3 qb_16_0 qb_16_1 qb_16_2 qb_16_3 CIM_cell_pix
    xrow17 In_bar_17 Output_17_0 Output_17_1 Output_17_2 Output_17_3 WL_17 BL_17_0 BL_17_1 BL_17_2 BL_17_3 BLB_17_0 BLB_17_1 BLB_17_2 BLB_17_3 q_17_0 q_17_1 q_17_2 q_17_3 qb_17_0 qb_17_1 qb_17_2 qb_17_3 CIM_cell_pix
    xrow18 In_bar_18 Output_18_0 Output_18_1 Output_18_2 Output_18_3 WL_18 BL_18_0 BL_18_1 BL_18_2 BL_18_3 BLB_18_0 BLB_18_1 BLB_18_2 BLB_18_3 q_18_0 q_18_1 q_18_2 q_18_3 qb_18_0 qb_18_1 qb_18_2 qb_18_3 CIM_cell_pix
    xrow19 In_bar_19 Output_19_0 Output_19_1 Output_19_2 Output_19_3 WL_19 BL_19_0 BL_19_1 BL_19_2 BL_19_3 BLB_19_0 BLB_19_1 BLB_19_2 BLB_19_3 q_19_0 q_19_1 q_19_2 q_19_3 qb_19_0 qb_19_1 qb_19_2 qb_19_3 CIM_cell_pix
    xrow20 In_bar_20 Output_20_0 Output_20_1 Output_20_2 Output_20_3 WL_20 BL_20_0 BL_20_1 BL_20_2 BL_20_3 BLB_20_0 BLB_20_1 BLB_20_2 BLB_20_3 q_20_0 q_20_1 q_20_2 q_20_3 qb_20_0 qb_20_1 qb_20_2 qb_20_3 CIM_cell_pix
    xrow21 In_bar_21 Output_21_0 Output_21_1 Output_21_2 Output_21_3 WL_21 BL_21_0 BL_21_1 BL_21_2 BL_21_3 BLB_21_0 BLB_21_1 BLB_21_2 BLB_21_3 q_21_0 q_21_1 q_21_2 q_21_3 qb_21_0 qb_21_1 qb_21_2 qb_21_3 CIM_cell_pix
    xrow22 In_bar_22 Output_22_0 Output_22_1 Output_22_2 Output_22_3 WL_22 BL_22_0 BL_22_1 BL_22_2 BL_22_3 BLB_22_0 BLB_22_1 BLB_22_2 BLB_22_3 q_22_0 q_22_1 q_22_2 q_22_3 qb_22_0 qb_22_1 qb_22_2 qb_22_3 CIM_cell_pix
    xrow23 In_bar_23 Output_23_0 Output_23_1 Output_23_2 Output_23_3 WL_23 BL_23_0 BL_23_1 BL_23_2 BL_23_3 BLB_23_0 BLB_23_1 BLB_23_2 BLB_23_3 q_23_0 q_23_1 q_23_2 q_23_3 qb_23_0 qb_23_1 qb_23_2 qb_23_3 CIM_cell_pix
    xrow24 In_bar_24 Output_24_0 Output_24_1 Output_24_2 Output_24_3 WL_24 BL_24_0 BL_24_1 BL_24_2 BL_24_3 BLB_24_0 BLB_24_1 BLB_24_2 BLB_24_3 q_24_0 q_24_1 q_24_2 q_24_3 qb_24_0 qb_24_1 qb_24_2 qb_24_3 CIM_cell_pix
    xrow25 In_bar_25 Output_25_0 Output_25_1 Output_25_2 Output_25_3 WL_25 BL_25_0 BL_25_1 BL_25_2 BL_25_3 BLB_25_0 BLB_25_1 BLB_25_2 BLB_25_3 q_25_0 q_25_1 q_25_2 q_25_3 qb_25_0 qb_25_1 qb_25_2 qb_25_3 CIM_cell_pix
    xrow26 In_bar_26 Output_26_0 Output_26_1 Output_26_2 Output_26_3 WL_26 BL_26_0 BL_26_1 BL_26_2 BL_26_3 BLB_26_0 BLB_26_1 BLB_26_2 BLB_26_3 q_26_0 q_26_1 q_26_2 q_26_3 qb_26_0 qb_26_1 qb_26_2 qb_26_3 CIM_cell_pix
    xrow27 In_bar_27 Output_27_0 Output_27_1 Output_27_2 Output_27_3 WL_27 BL_27_0 BL_27_1 BL_27_2 BL_27_3 BLB_27_0 BLB_27_1 BLB_27_2 BLB_27_3 q_27_0 q_27_1 q_27_2 q_27_3 qb_27_0 qb_27_1 qb_27_2 qb_27_3 CIM_cell_pix
    xrow28 In_bar_28 Output_28_0 Output_28_1 Output_28_2 Output_28_3 WL_28 BL_28_0 BL_28_1 BL_28_2 BL_28_3 BLB_28_0 BLB_28_1 BLB_28_2 BLB_28_3 q_28_0 q_28_1 q_28_2 q_28_3 qb_28_0 qb_28_1 qb_28_2 qb_28_3 CIM_cell_pix
    xrow29 In_bar_29 Output_29_0 Output_29_1 Output_29_2 Output_29_3 WL_29 BL_29_0 BL_29_1 BL_29_2 BL_29_3 BLB_29_0 BLB_29_1 BLB_29_2 BLB_29_3 q_29_0 q_29_1 q_29_2 q_29_3 qb_29_0 qb_29_1 qb_29_2 qb_29_3 CIM_cell_pix
    xrow30 In_bar_30 Output_30_0 Output_30_1 Output_30_2 Output_30_3 WL_30 BL_30_0 BL_30_1 BL_30_2 BL_30_3 BLB_30_0 BLB_30_1 BLB_30_2 BLB_30_3 q_30_0 q_30_1 q_30_2 q_30_3 qb_30_0 qb_30_1 qb_30_2 qb_30_3 CIM_cell_pix
    xrow31 In_bar_31 Output_31_0 Output_31_1 Output_31_2 Output_31_3 WL_31 BL_31_0 BL_31_1 BL_31_2 BL_31_3 BLB_31_0 BLB_31_1 BLB_31_2 BLB_31_3 q_31_0 q_31_1 q_31_2 q_31_3 qb_31_0 qb_31_1 qb_31_2 qb_31_3 CIM_cell_pix
.ends

xcol0 In_bar_0 Output_0_0_0 Output_0_0_1 Output_0_0_2 Output_0_0_3 WL_0 BL_0_0_0 BL_0_0_1 BL_0_0_2 BL_0_0_3 BLB_0_0_0 BLB_0_0_1 BLB_0_0_2 BLB_0_0_3 q_0_0_0 q_0_0_1 q_0_0_2 q_0_0_3 qb_0_0_0 qb_0_0_1 qb_0_0_2 qb_0_0_3
+ In_bar_1 Output_0_1_0 Output_0_1_1 Output_0_1_2 Output_0_1_3 WL_1 BL_0_1_0 BL_0_1_1 BL_0_1_2 BL_0_1_3 BLB_0_1_0 BLB_0_1_1 BLB_0_1_2 BLB_0_1_3 q_0_1_0 q_0_1_1 q_0_1_2 q_0_1_3 qb_0_1_0 qb_0_1_1 qb_0_1_2 qb_0_1_3
+ In_bar_2 Output_0_2_0 Output_0_2_1 Output_0_2_2 Output_0_2_3 WL_2 BL_0_2_0 BL_0_2_1 BL_0_2_2 BL_0_2_3 BLB_0_2_0 BLB_0_2_1 BLB_0_2_2 BLB_0_2_3 q_0_2_0 q_0_2_1 q_0_2_2 q_0_2_3 qb_0_2_0 qb_0_2_1 qb_0_2_2 qb_0_2_3
+ In_bar_3 Output_0_3_0 Output_0_3_1 Output_0_3_2 Output_0_3_3 WL_3 BL_0_3_0 BL_0_3_1 BL_0_3_2 BL_0_3_3 BLB_0_3_0 BLB_0_3_1 BLB_0_3_2 BLB_0_3_3 q_0_3_0 q_0_3_1 q_0_3_2 q_0_3_3 qb_0_3_0 qb_0_3_1 qb_0_3_2 qb_0_3_3
+ In_bar_4 Output_0_4_0 Output_0_4_1 Output_0_4_2 Output_0_4_3 WL_4 BL_0_4_0 BL_0_4_1 BL_0_4_2 BL_0_4_3 BLB_0_4_0 BLB_0_4_1 BLB_0_4_2 BLB_0_4_3 q_0_4_0 q_0_4_1 q_0_4_2 q_0_4_3 qb_0_4_0 qb_0_4_1 qb_0_4_2 qb_0_4_3
+ In_bar_5 Output_0_5_0 Output_0_5_1 Output_0_5_2 Output_0_5_3 WL_5 BL_0_5_0 BL_0_5_1 BL_0_5_2 BL_0_5_3 BLB_0_5_0 BLB_0_5_1 BLB_0_5_2 BLB_0_5_3 q_0_5_0 q_0_5_1 q_0_5_2 q_0_5_3 qb_0_5_0 qb_0_5_1 qb_0_5_2 qb_0_5_3
+ In_bar_6 Output_0_6_0 Output_0_6_1 Output_0_6_2 Output_0_6_3 WL_6 BL_0_6_0 BL_0_6_1 BL_0_6_2 BL_0_6_3 BLB_0_6_0 BLB_0_6_1 BLB_0_6_2 BLB_0_6_3 q_0_6_0 q_0_6_1 q_0_6_2 q_0_6_3 qb_0_6_0 qb_0_6_1 qb_0_6_2 qb_0_6_3
+ In_bar_7 Output_0_7_0 Output_0_7_1 Output_0_7_2 Output_0_7_3 WL_7 BL_0_7_0 BL_0_7_1 BL_0_7_2 BL_0_7_3 BLB_0_7_0 BLB_0_7_1 BLB_0_7_2 BLB_0_7_3 q_0_7_0 q_0_7_1 q_0_7_2 q_0_7_3 qb_0_7_0 qb_0_7_1 qb_0_7_2 qb_0_7_3
+ In_bar_8 Output_0_8_0 Output_0_8_1 Output_0_8_2 Output_0_8_3 WL_8 BL_0_8_0 BL_0_8_1 BL_0_8_2 BL_0_8_3 BLB_0_8_0 BLB_0_8_1 BLB_0_8_2 BLB_0_8_3 q_0_8_0 q_0_8_1 q_0_8_2 q_0_8_3 qb_0_8_0 qb_0_8_1 qb_0_8_2 qb_0_8_3
+ In_bar_9 Output_0_9_0 Output_0_9_1 Output_0_9_2 Output_0_9_3 WL_9 BL_0_9_0 BL_0_9_1 BL_0_9_2 BL_0_9_3 BLB_0_9_0 BLB_0_9_1 BLB_0_9_2 BLB_0_9_3 q_0_9_0 q_0_9_1 q_0_9_2 q_0_9_3 qb_0_9_0 qb_0_9_1 qb_0_9_2 qb_0_9_3
+ In_bar_10 Output_0_10_0 Output_0_10_1 Output_0_10_2 Output_0_10_3 WL_10 BL_0_10_0 BL_0_10_1 BL_0_10_2 BL_0_10_3 BLB_0_10_0 BLB_0_10_1 BLB_0_10_2 BLB_0_10_3 q_0_10_0 q_0_10_1 q_0_10_2 q_0_10_3 qb_0_10_0 qb_0_10_1 qb_0_10_2 qb_0_10_3
+ In_bar_11 Output_0_11_0 Output_0_11_1 Output_0_11_2 Output_0_11_3 WL_11 BL_0_11_0 BL_0_11_1 BL_0_11_2 BL_0_11_3 BLB_0_11_0 BLB_0_11_1 BLB_0_11_2 BLB_0_11_3 q_0_11_0 q_0_11_1 q_0_11_2 q_0_11_3 qb_0_11_0 qb_0_11_1 qb_0_11_2 qb_0_11_3
+ In_bar_12 Output_0_12_0 Output_0_12_1 Output_0_12_2 Output_0_12_3 WL_12 BL_0_12_0 BL_0_12_1 BL_0_12_2 BL_0_12_3 BLB_0_12_0 BLB_0_12_1 BLB_0_12_2 BLB_0_12_3 q_0_12_0 q_0_12_1 q_0_12_2 q_0_12_3 qb_0_12_0 qb_0_12_1 qb_0_12_2 qb_0_12_3
+ In_bar_13 Output_0_13_0 Output_0_13_1 Output_0_13_2 Output_0_13_3 WL_13 BL_0_13_0 BL_0_13_1 BL_0_13_2 BL_0_13_3 BLB_0_13_0 BLB_0_13_1 BLB_0_13_2 BLB_0_13_3 q_0_13_0 q_0_13_1 q_0_13_2 q_0_13_3 qb_0_13_0 qb_0_13_1 qb_0_13_2 qb_0_13_3
+ In_bar_14 Output_0_14_0 Output_0_14_1 Output_0_14_2 Output_0_14_3 WL_14 BL_0_14_0 BL_0_14_1 BL_0_14_2 BL_0_14_3 BLB_0_14_0 BLB_0_14_1 BLB_0_14_2 BLB_0_14_3 q_0_14_0 q_0_14_1 q_0_14_2 q_0_14_3 qb_0_14_0 qb_0_14_1 qb_0_14_2 qb_0_14_3
+ In_bar_15 Output_0_15_0 Output_0_15_1 Output_0_15_2 Output_0_15_3 WL_15 BL_0_15_0 BL_0_15_1 BL_0_15_2 BL_0_15_3 BLB_0_15_0 BLB_0_15_1 BLB_0_15_2 BLB_0_15_3 q_0_15_0 q_0_15_1 q_0_15_2 q_0_15_3 qb_0_15_0 qb_0_15_1 qb_0_15_2 qb_0_15_3
+ In_bar_16 Output_0_16_0 Output_0_16_1 Output_0_16_2 Output_0_16_3 WL_16 BL_0_16_0 BL_0_16_1 BL_0_16_2 BL_0_16_3 BLB_0_16_0 BLB_0_16_1 BLB_0_16_2 BLB_0_16_3 q_0_16_0 q_0_16_1 q_0_16_2 q_0_16_3 qb_0_16_0 qb_0_16_1 qb_0_16_2 qb_0_16_3
+ In_bar_17 Output_0_17_0 Output_0_17_1 Output_0_17_2 Output_0_17_3 WL_17 BL_0_17_0 BL_0_17_1 BL_0_17_2 BL_0_17_3 BLB_0_17_0 BLB_0_17_1 BLB_0_17_2 BLB_0_17_3 q_0_17_0 q_0_17_1 q_0_17_2 q_0_17_3 qb_0_17_0 qb_0_17_1 qb_0_17_2 qb_0_17_3
+ In_bar_18 Output_0_18_0 Output_0_18_1 Output_0_18_2 Output_0_18_3 WL_18 BL_0_18_0 BL_0_18_1 BL_0_18_2 BL_0_18_3 BLB_0_18_0 BLB_0_18_1 BLB_0_18_2 BLB_0_18_3 q_0_18_0 q_0_18_1 q_0_18_2 q_0_18_3 qb_0_18_0 qb_0_18_1 qb_0_18_2 qb_0_18_3
+ In_bar_19 Output_0_19_0 Output_0_19_1 Output_0_19_2 Output_0_19_3 WL_19 BL_0_19_0 BL_0_19_1 BL_0_19_2 BL_0_19_3 BLB_0_19_0 BLB_0_19_1 BLB_0_19_2 BLB_0_19_3 q_0_19_0 q_0_19_1 q_0_19_2 q_0_19_3 qb_0_19_0 qb_0_19_1 qb_0_19_2 qb_0_19_3
+ In_bar_20 Output_0_20_0 Output_0_20_1 Output_0_20_2 Output_0_20_3 WL_20 BL_0_20_0 BL_0_20_1 BL_0_20_2 BL_0_20_3 BLB_0_20_0 BLB_0_20_1 BLB_0_20_2 BLB_0_20_3 q_0_20_0 q_0_20_1 q_0_20_2 q_0_20_3 qb_0_20_0 qb_0_20_1 qb_0_20_2 qb_0_20_3
+ In_bar_21 Output_0_21_0 Output_0_21_1 Output_0_21_2 Output_0_21_3 WL_21 BL_0_21_0 BL_0_21_1 BL_0_21_2 BL_0_21_3 BLB_0_21_0 BLB_0_21_1 BLB_0_21_2 BLB_0_21_3 q_0_21_0 q_0_21_1 q_0_21_2 q_0_21_3 qb_0_21_0 qb_0_21_1 qb_0_21_2 qb_0_21_3
+ In_bar_22 Output_0_22_0 Output_0_22_1 Output_0_22_2 Output_0_22_3 WL_22 BL_0_22_0 BL_0_22_1 BL_0_22_2 BL_0_22_3 BLB_0_22_0 BLB_0_22_1 BLB_0_22_2 BLB_0_22_3 q_0_22_0 q_0_22_1 q_0_22_2 q_0_22_3 qb_0_22_0 qb_0_22_1 qb_0_22_2 qb_0_22_3
+ In_bar_23 Output_0_23_0 Output_0_23_1 Output_0_23_2 Output_0_23_3 WL_23 BL_0_23_0 BL_0_23_1 BL_0_23_2 BL_0_23_3 BLB_0_23_0 BLB_0_23_1 BLB_0_23_2 BLB_0_23_3 q_0_23_0 q_0_23_1 q_0_23_2 q_0_23_3 qb_0_23_0 qb_0_23_1 qb_0_23_2 qb_0_23_3
+ In_bar_24 Output_0_24_0 Output_0_24_1 Output_0_24_2 Output_0_24_3 WL_24 BL_0_24_0 BL_0_24_1 BL_0_24_2 BL_0_24_3 BLB_0_24_0 BLB_0_24_1 BLB_0_24_2 BLB_0_24_3 q_0_24_0 q_0_24_1 q_0_24_2 q_0_24_3 qb_0_24_0 qb_0_24_1 qb_0_24_2 qb_0_24_3
+ In_bar_25 Output_0_25_0 Output_0_25_1 Output_0_25_2 Output_0_25_3 WL_25 BL_0_25_0 BL_0_25_1 BL_0_25_2 BL_0_25_3 BLB_0_25_0 BLB_0_25_1 BLB_0_25_2 BLB_0_25_3 q_0_25_0 q_0_25_1 q_0_25_2 q_0_25_3 qb_0_25_0 qb_0_25_1 qb_0_25_2 qb_0_25_3
+ In_bar_26 Output_0_26_0 Output_0_26_1 Output_0_26_2 Output_0_26_3 WL_26 BL_0_26_0 BL_0_26_1 BL_0_26_2 BL_0_26_3 BLB_0_26_0 BLB_0_26_1 BLB_0_26_2 BLB_0_26_3 q_0_26_0 q_0_26_1 q_0_26_2 q_0_26_3 qb_0_26_0 qb_0_26_1 qb_0_26_2 qb_0_26_3
+ In_bar_27 Output_0_27_0 Output_0_27_1 Output_0_27_2 Output_0_27_3 WL_27 BL_0_27_0 BL_0_27_1 BL_0_27_2 BL_0_27_3 BLB_0_27_0 BLB_0_27_1 BLB_0_27_2 BLB_0_27_3 q_0_27_0 q_0_27_1 q_0_27_2 q_0_27_3 qb_0_27_0 qb_0_27_1 qb_0_27_2 qb_0_27_3
+ In_bar_28 Output_0_28_0 Output_0_28_1 Output_0_28_2 Output_0_28_3 WL_28 BL_0_28_0 BL_0_28_1 BL_0_28_2 BL_0_28_3 BLB_0_28_0 BLB_0_28_1 BLB_0_28_2 BLB_0_28_3 q_0_28_0 q_0_28_1 q_0_28_2 q_0_28_3 qb_0_28_0 qb_0_28_1 qb_0_28_2 qb_0_28_3
+ In_bar_29 Output_0_29_0 Output_0_29_1 Output_0_29_2 Output_0_29_3 WL_29 BL_0_29_0 BL_0_29_1 BL_0_29_2 BL_0_29_3 BLB_0_29_0 BLB_0_29_1 BLB_0_29_2 BLB_0_29_3 q_0_29_0 q_0_29_1 q_0_29_2 q_0_29_3 qb_0_29_0 qb_0_29_1 qb_0_29_2 qb_0_29_3
+ In_bar_30 Output_0_30_0 Output_0_30_1 Output_0_30_2 Output_0_30_3 WL_30 BL_0_30_0 BL_0_30_1 BL_0_30_2 BL_0_30_3 BLB_0_30_0 BLB_0_30_1 BLB_0_30_2 BLB_0_30_3 q_0_30_0 q_0_30_1 q_0_30_2 q_0_30_3 qb_0_30_0 qb_0_30_1 qb_0_30_2 qb_0_30_3
+ In_bar_31 Output_0_31_0 Output_0_31_1 Output_0_31_2 Output_0_31_3 WL_31 BL_0_31_0 BL_0_31_1 BL_0_31_2 BL_0_31_3 BLB_0_31_0 BLB_0_31_1 BLB_0_31_2 BLB_0_31_3 q_0_31_0 q_0_31_1 q_0_31_2 q_0_31_3 qb_0_31_0 qb_0_31_1 qb_0_31_2 qb_0_31_3 CIM_cell_col

xcol1 In_bar_0 Output_1_0_0 Output_1_0_1 Output_1_0_2 Output_1_0_3 WL_0 BL_1_0_0 BL_1_0_1 BL_1_0_2 BL_1_0_3 BLB_1_0_0 BLB_1_0_1 BLB_1_0_2 BLB_1_0_3 q_1_0_0 q_1_0_1 q_1_0_2 q_1_0_3 qb_1_0_0 qb_1_0_1 qb_1_0_2 qb_1_0_3
+ In_bar_1 Output_1_1_0 Output_1_1_1 Output_1_1_2 Output_1_1_3 WL_1 BL_1_1_0 BL_1_1_1 BL_1_1_2 BL_1_1_3 BLB_1_1_0 BLB_1_1_1 BLB_1_1_2 BLB_1_1_3 q_1_1_0 q_1_1_1 q_1_1_2 q_1_1_3 qb_1_1_0 qb_1_1_1 qb_1_1_2 qb_1_1_3
+ In_bar_2 Output_1_2_0 Output_1_2_1 Output_1_2_2 Output_1_2_3 WL_2 BL_1_2_0 BL_1_2_1 BL_1_2_2 BL_1_2_3 BLB_1_2_0 BLB_1_2_1 BLB_1_2_2 BLB_1_2_3 q_1_2_0 q_1_2_1 q_1_2_2 q_1_2_3 qb_1_2_0 qb_1_2_1 qb_1_2_2 qb_1_2_3
+ In_bar_3 Output_1_3_0 Output_1_3_1 Output_1_3_2 Output_1_3_3 WL_3 BL_1_3_0 BL_1_3_1 BL_1_3_2 BL_1_3_3 BLB_1_3_0 BLB_1_3_1 BLB_1_3_2 BLB_1_3_3 q_1_3_0 q_1_3_1 q_1_3_2 q_1_3_3 qb_1_3_0 qb_1_3_1 qb_1_3_2 qb_1_3_3
+ In_bar_4 Output_1_4_0 Output_1_4_1 Output_1_4_2 Output_1_4_3 WL_4 BL_1_4_0 BL_1_4_1 BL_1_4_2 BL_1_4_3 BLB_1_4_0 BLB_1_4_1 BLB_1_4_2 BLB_1_4_3 q_1_4_0 q_1_4_1 q_1_4_2 q_1_4_3 qb_1_4_0 qb_1_4_1 qb_1_4_2 qb_1_4_3
+ In_bar_5 Output_1_5_0 Output_1_5_1 Output_1_5_2 Output_1_5_3 WL_5 BL_1_5_0 BL_1_5_1 BL_1_5_2 BL_1_5_3 BLB_1_5_0 BLB_1_5_1 BLB_1_5_2 BLB_1_5_3 q_1_5_0 q_1_5_1 q_1_5_2 q_1_5_3 qb_1_5_0 qb_1_5_1 qb_1_5_2 qb_1_5_3
+ In_bar_6 Output_1_6_0 Output_1_6_1 Output_1_6_2 Output_1_6_3 WL_6 BL_1_6_0 BL_1_6_1 BL_1_6_2 BL_1_6_3 BLB_1_6_0 BLB_1_6_1 BLB_1_6_2 BLB_1_6_3 q_1_6_0 q_1_6_1 q_1_6_2 q_1_6_3 qb_1_6_0 qb_1_6_1 qb_1_6_2 qb_1_6_3
+ In_bar_7 Output_1_7_0 Output_1_7_1 Output_1_7_2 Output_1_7_3 WL_7 BL_1_7_0 BL_1_7_1 BL_1_7_2 BL_1_7_3 BLB_1_7_0 BLB_1_7_1 BLB_1_7_2 BLB_1_7_3 q_1_7_0 q_1_7_1 q_1_7_2 q_1_7_3 qb_1_7_0 qb_1_7_1 qb_1_7_2 qb_1_7_3
+ In_bar_8 Output_1_8_0 Output_1_8_1 Output_1_8_2 Output_1_8_3 WL_8 BL_1_8_0 BL_1_8_1 BL_1_8_2 BL_1_8_3 BLB_1_8_0 BLB_1_8_1 BLB_1_8_2 BLB_1_8_3 q_1_8_0 q_1_8_1 q_1_8_2 q_1_8_3 qb_1_8_0 qb_1_8_1 qb_1_8_2 qb_1_8_3
+ In_bar_9 Output_1_9_0 Output_1_9_1 Output_1_9_2 Output_1_9_3 WL_9 BL_1_9_0 BL_1_9_1 BL_1_9_2 BL_1_9_3 BLB_1_9_0 BLB_1_9_1 BLB_1_9_2 BLB_1_9_3 q_1_9_0 q_1_9_1 q_1_9_2 q_1_9_3 qb_1_9_0 qb_1_9_1 qb_1_9_2 qb_1_9_3
+ In_bar_10 Output_1_10_0 Output_1_10_1 Output_1_10_2 Output_1_10_3 WL_10 BL_1_10_0 BL_1_10_1 BL_1_10_2 BL_1_10_3 BLB_1_10_0 BLB_1_10_1 BLB_1_10_2 BLB_1_10_3 q_1_10_0 q_1_10_1 q_1_10_2 q_1_10_3 qb_1_10_0 qb_1_10_1 qb_1_10_2 qb_1_10_3
+ In_bar_11 Output_1_11_0 Output_1_11_1 Output_1_11_2 Output_1_11_3 WL_11 BL_1_11_0 BL_1_11_1 BL_1_11_2 BL_1_11_3 BLB_1_11_0 BLB_1_11_1 BLB_1_11_2 BLB_1_11_3 q_1_11_0 q_1_11_1 q_1_11_2 q_1_11_3 qb_1_11_0 qb_1_11_1 qb_1_11_2 qb_1_11_3
+ In_bar_12 Output_1_12_0 Output_1_12_1 Output_1_12_2 Output_1_12_3 WL_12 BL_1_12_0 BL_1_12_1 BL_1_12_2 BL_1_12_3 BLB_1_12_0 BLB_1_12_1 BLB_1_12_2 BLB_1_12_3 q_1_12_0 q_1_12_1 q_1_12_2 q_1_12_3 qb_1_12_0 qb_1_12_1 qb_1_12_2 qb_1_12_3
+ In_bar_13 Output_1_13_0 Output_1_13_1 Output_1_13_2 Output_1_13_3 WL_13 BL_1_13_0 BL_1_13_1 BL_1_13_2 BL_1_13_3 BLB_1_13_0 BLB_1_13_1 BLB_1_13_2 BLB_1_13_3 q_1_13_0 q_1_13_1 q_1_13_2 q_1_13_3 qb_1_13_0 qb_1_13_1 qb_1_13_2 qb_1_13_3
+ In_bar_14 Output_1_14_0 Output_1_14_1 Output_1_14_2 Output_1_14_3 WL_14 BL_1_14_0 BL_1_14_1 BL_1_14_2 BL_1_14_3 BLB_1_14_0 BLB_1_14_1 BLB_1_14_2 BLB_1_14_3 q_1_14_0 q_1_14_1 q_1_14_2 q_1_14_3 qb_1_14_0 qb_1_14_1 qb_1_14_2 qb_1_14_3
+ In_bar_15 Output_1_15_0 Output_1_15_1 Output_1_15_2 Output_1_15_3 WL_15 BL_1_15_0 BL_1_15_1 BL_1_15_2 BL_1_15_3 BLB_1_15_0 BLB_1_15_1 BLB_1_15_2 BLB_1_15_3 q_1_15_0 q_1_15_1 q_1_15_2 q_1_15_3 qb_1_15_0 qb_1_15_1 qb_1_15_2 qb_1_15_3
+ In_bar_16 Output_1_16_0 Output_1_16_1 Output_1_16_2 Output_1_16_3 WL_16 BL_1_16_0 BL_1_16_1 BL_1_16_2 BL_1_16_3 BLB_1_16_0 BLB_1_16_1 BLB_1_16_2 BLB_1_16_3 q_1_16_0 q_1_16_1 q_1_16_2 q_1_16_3 qb_1_16_0 qb_1_16_1 qb_1_16_2 qb_1_16_3
+ In_bar_17 Output_1_17_0 Output_1_17_1 Output_1_17_2 Output_1_17_3 WL_17 BL_1_17_0 BL_1_17_1 BL_1_17_2 BL_1_17_3 BLB_1_17_0 BLB_1_17_1 BLB_1_17_2 BLB_1_17_3 q_1_17_0 q_1_17_1 q_1_17_2 q_1_17_3 qb_1_17_0 qb_1_17_1 qb_1_17_2 qb_1_17_3
+ In_bar_18 Output_1_18_0 Output_1_18_1 Output_1_18_2 Output_1_18_3 WL_18 BL_1_18_0 BL_1_18_1 BL_1_18_2 BL_1_18_3 BLB_1_18_0 BLB_1_18_1 BLB_1_18_2 BLB_1_18_3 q_1_18_0 q_1_18_1 q_1_18_2 q_1_18_3 qb_1_18_0 qb_1_18_1 qb_1_18_2 qb_1_18_3
+ In_bar_19 Output_1_19_0 Output_1_19_1 Output_1_19_2 Output_1_19_3 WL_19 BL_1_19_0 BL_1_19_1 BL_1_19_2 BL_1_19_3 BLB_1_19_0 BLB_1_19_1 BLB_1_19_2 BLB_1_19_3 q_1_19_0 q_1_19_1 q_1_19_2 q_1_19_3 qb_1_19_0 qb_1_19_1 qb_1_19_2 qb_1_19_3
+ In_bar_20 Output_1_20_0 Output_1_20_1 Output_1_20_2 Output_1_20_3 WL_20 BL_1_20_0 BL_1_20_1 BL_1_20_2 BL_1_20_3 BLB_1_20_0 BLB_1_20_1 BLB_1_20_2 BLB_1_20_3 q_1_20_0 q_1_20_1 q_1_20_2 q_1_20_3 qb_1_20_0 qb_1_20_1 qb_1_20_2 qb_1_20_3
+ In_bar_21 Output_1_21_0 Output_1_21_1 Output_1_21_2 Output_1_21_3 WL_21 BL_1_21_0 BL_1_21_1 BL_1_21_2 BL_1_21_3 BLB_1_21_0 BLB_1_21_1 BLB_1_21_2 BLB_1_21_3 q_1_21_0 q_1_21_1 q_1_21_2 q_1_21_3 qb_1_21_0 qb_1_21_1 qb_1_21_2 qb_1_21_3
+ In_bar_22 Output_1_22_0 Output_1_22_1 Output_1_22_2 Output_1_22_3 WL_22 BL_1_22_0 BL_1_22_1 BL_1_22_2 BL_1_22_3 BLB_1_22_0 BLB_1_22_1 BLB_1_22_2 BLB_1_22_3 q_1_22_0 q_1_22_1 q_1_22_2 q_1_22_3 qb_1_22_0 qb_1_22_1 qb_1_22_2 qb_1_22_3
+ In_bar_23 Output_1_23_0 Output_1_23_1 Output_1_23_2 Output_1_23_3 WL_23 BL_1_23_0 BL_1_23_1 BL_1_23_2 BL_1_23_3 BLB_1_23_0 BLB_1_23_1 BLB_1_23_2 BLB_1_23_3 q_1_23_0 q_1_23_1 q_1_23_2 q_1_23_3 qb_1_23_0 qb_1_23_1 qb_1_23_2 qb_1_23_3
+ In_bar_24 Output_1_24_0 Output_1_24_1 Output_1_24_2 Output_1_24_3 WL_24 BL_1_24_0 BL_1_24_1 BL_1_24_2 BL_1_24_3 BLB_1_24_0 BLB_1_24_1 BLB_1_24_2 BLB_1_24_3 q_1_24_0 q_1_24_1 q_1_24_2 q_1_24_3 qb_1_24_0 qb_1_24_1 qb_1_24_2 qb_1_24_3
+ In_bar_25 Output_1_25_0 Output_1_25_1 Output_1_25_2 Output_1_25_3 WL_25 BL_1_25_0 BL_1_25_1 BL_1_25_2 BL_1_25_3 BLB_1_25_0 BLB_1_25_1 BLB_1_25_2 BLB_1_25_3 q_1_25_0 q_1_25_1 q_1_25_2 q_1_25_3 qb_1_25_0 qb_1_25_1 qb_1_25_2 qb_1_25_3
+ In_bar_26 Output_1_26_0 Output_1_26_1 Output_1_26_2 Output_1_26_3 WL_26 BL_1_26_0 BL_1_26_1 BL_1_26_2 BL_1_26_3 BLB_1_26_0 BLB_1_26_1 BLB_1_26_2 BLB_1_26_3 q_1_26_0 q_1_26_1 q_1_26_2 q_1_26_3 qb_1_26_0 qb_1_26_1 qb_1_26_2 qb_1_26_3
+ In_bar_27 Output_1_27_0 Output_1_27_1 Output_1_27_2 Output_1_27_3 WL_27 BL_1_27_0 BL_1_27_1 BL_1_27_2 BL_1_27_3 BLB_1_27_0 BLB_1_27_1 BLB_1_27_2 BLB_1_27_3 q_1_27_0 q_1_27_1 q_1_27_2 q_1_27_3 qb_1_27_0 qb_1_27_1 qb_1_27_2 qb_1_27_3
+ In_bar_28 Output_1_28_0 Output_1_28_1 Output_1_28_2 Output_1_28_3 WL_28 BL_1_28_0 BL_1_28_1 BL_1_28_2 BL_1_28_3 BLB_1_28_0 BLB_1_28_1 BLB_1_28_2 BLB_1_28_3 q_1_28_0 q_1_28_1 q_1_28_2 q_1_28_3 qb_1_28_0 qb_1_28_1 qb_1_28_2 qb_1_28_3
+ In_bar_29 Output_1_29_0 Output_1_29_1 Output_1_29_2 Output_1_29_3 WL_29 BL_1_29_0 BL_1_29_1 BL_1_29_2 BL_1_29_3 BLB_1_29_0 BLB_1_29_1 BLB_1_29_2 BLB_1_29_3 q_1_29_0 q_1_29_1 q_1_29_2 q_1_29_3 qb_1_29_0 qb_1_29_1 qb_1_29_2 qb_1_29_3
+ In_bar_30 Output_1_30_0 Output_1_30_1 Output_1_30_2 Output_1_30_3 WL_30 BL_1_30_0 BL_1_30_1 BL_1_30_2 BL_1_30_3 BLB_1_30_0 BLB_1_30_1 BLB_1_30_2 BLB_1_30_3 q_1_30_0 q_1_30_1 q_1_30_2 q_1_30_3 qb_1_30_0 qb_1_30_1 qb_1_30_2 qb_1_30_3
+ In_bar_31 Output_1_31_0 Output_1_31_1 Output_1_31_2 Output_1_31_3 WL_31 BL_1_31_0 BL_1_31_1 BL_1_31_2 BL_1_31_3 BLB_1_31_0 BLB_1_31_1 BLB_1_31_2 BLB_1_31_3 q_1_31_0 q_1_31_1 q_1_31_2 q_1_31_3 qb_1_31_0 qb_1_31_1 qb_1_31_2 qb_1_31_3 CIM_cell_col

xcol2 In_bar_0 Output_2_0_0 Output_2_0_1 Output_2_0_2 Output_2_0_3 WL_0 BL_2_0_0 BL_2_0_1 BL_2_0_2 BL_2_0_3 BLB_2_0_0 BLB_2_0_1 BLB_2_0_2 BLB_2_0_3 q_2_0_0 q_2_0_1 q_2_0_2 q_2_0_3 qb_2_0_0 qb_2_0_1 qb_2_0_2 qb_2_0_3
+ In_bar_1 Output_2_1_0 Output_2_1_1 Output_2_1_2 Output_2_1_3 WL_1 BL_2_1_0 BL_2_1_1 BL_2_1_2 BL_2_1_3 BLB_2_1_0 BLB_2_1_1 BLB_2_1_2 BLB_2_1_3 q_2_1_0 q_2_1_1 q_2_1_2 q_2_1_3 qb_2_1_0 qb_2_1_1 qb_2_1_2 qb_2_1_3
+ In_bar_2 Output_2_2_0 Output_2_2_1 Output_2_2_2 Output_2_2_3 WL_2 BL_2_2_0 BL_2_2_1 BL_2_2_2 BL_2_2_3 BLB_2_2_0 BLB_2_2_1 BLB_2_2_2 BLB_2_2_3 q_2_2_0 q_2_2_1 q_2_2_2 q_2_2_3 qb_2_2_0 qb_2_2_1 qb_2_2_2 qb_2_2_3
+ In_bar_3 Output_2_3_0 Output_2_3_1 Output_2_3_2 Output_2_3_3 WL_3 BL_2_3_0 BL_2_3_1 BL_2_3_2 BL_2_3_3 BLB_2_3_0 BLB_2_3_1 BLB_2_3_2 BLB_2_3_3 q_2_3_0 q_2_3_1 q_2_3_2 q_2_3_3 qb_2_3_0 qb_2_3_1 qb_2_3_2 qb_2_3_3
+ In_bar_4 Output_2_4_0 Output_2_4_1 Output_2_4_2 Output_2_4_3 WL_4 BL_2_4_0 BL_2_4_1 BL_2_4_2 BL_2_4_3 BLB_2_4_0 BLB_2_4_1 BLB_2_4_2 BLB_2_4_3 q_2_4_0 q_2_4_1 q_2_4_2 q_2_4_3 qb_2_4_0 qb_2_4_1 qb_2_4_2 qb_2_4_3
+ In_bar_5 Output_2_5_0 Output_2_5_1 Output_2_5_2 Output_2_5_3 WL_5 BL_2_5_0 BL_2_5_1 BL_2_5_2 BL_2_5_3 BLB_2_5_0 BLB_2_5_1 BLB_2_5_2 BLB_2_5_3 q_2_5_0 q_2_5_1 q_2_5_2 q_2_5_3 qb_2_5_0 qb_2_5_1 qb_2_5_2 qb_2_5_3
+ In_bar_6 Output_2_6_0 Output_2_6_1 Output_2_6_2 Output_2_6_3 WL_6 BL_2_6_0 BL_2_6_1 BL_2_6_2 BL_2_6_3 BLB_2_6_0 BLB_2_6_1 BLB_2_6_2 BLB_2_6_3 q_2_6_0 q_2_6_1 q_2_6_2 q_2_6_3 qb_2_6_0 qb_2_6_1 qb_2_6_2 qb_2_6_3
+ In_bar_7 Output_2_7_0 Output_2_7_1 Output_2_7_2 Output_2_7_3 WL_7 BL_2_7_0 BL_2_7_1 BL_2_7_2 BL_2_7_3 BLB_2_7_0 BLB_2_7_1 BLB_2_7_2 BLB_2_7_3 q_2_7_0 q_2_7_1 q_2_7_2 q_2_7_3 qb_2_7_0 qb_2_7_1 qb_2_7_2 qb_2_7_3
+ In_bar_8 Output_2_8_0 Output_2_8_1 Output_2_8_2 Output_2_8_3 WL_8 BL_2_8_0 BL_2_8_1 BL_2_8_2 BL_2_8_3 BLB_2_8_0 BLB_2_8_1 BLB_2_8_2 BLB_2_8_3 q_2_8_0 q_2_8_1 q_2_8_2 q_2_8_3 qb_2_8_0 qb_2_8_1 qb_2_8_2 qb_2_8_3
+ In_bar_9 Output_2_9_0 Output_2_9_1 Output_2_9_2 Output_2_9_3 WL_9 BL_2_9_0 BL_2_9_1 BL_2_9_2 BL_2_9_3 BLB_2_9_0 BLB_2_9_1 BLB_2_9_2 BLB_2_9_3 q_2_9_0 q_2_9_1 q_2_9_2 q_2_9_3 qb_2_9_0 qb_2_9_1 qb_2_9_2 qb_2_9_3
+ In_bar_10 Output_2_10_0 Output_2_10_1 Output_2_10_2 Output_2_10_3 WL_10 BL_2_10_0 BL_2_10_1 BL_2_10_2 BL_2_10_3 BLB_2_10_0 BLB_2_10_1 BLB_2_10_2 BLB_2_10_3 q_2_10_0 q_2_10_1 q_2_10_2 q_2_10_3 qb_2_10_0 qb_2_10_1 qb_2_10_2 qb_2_10_3
+ In_bar_11 Output_2_11_0 Output_2_11_1 Output_2_11_2 Output_2_11_3 WL_11 BL_2_11_0 BL_2_11_1 BL_2_11_2 BL_2_11_3 BLB_2_11_0 BLB_2_11_1 BLB_2_11_2 BLB_2_11_3 q_2_11_0 q_2_11_1 q_2_11_2 q_2_11_3 qb_2_11_0 qb_2_11_1 qb_2_11_2 qb_2_11_3
+ In_bar_12 Output_2_12_0 Output_2_12_1 Output_2_12_2 Output_2_12_3 WL_12 BL_2_12_0 BL_2_12_1 BL_2_12_2 BL_2_12_3 BLB_2_12_0 BLB_2_12_1 BLB_2_12_2 BLB_2_12_3 q_2_12_0 q_2_12_1 q_2_12_2 q_2_12_3 qb_2_12_0 qb_2_12_1 qb_2_12_2 qb_2_12_3
+ In_bar_13 Output_2_13_0 Output_2_13_1 Output_2_13_2 Output_2_13_3 WL_13 BL_2_13_0 BL_2_13_1 BL_2_13_2 BL_2_13_3 BLB_2_13_0 BLB_2_13_1 BLB_2_13_2 BLB_2_13_3 q_2_13_0 q_2_13_1 q_2_13_2 q_2_13_3 qb_2_13_0 qb_2_13_1 qb_2_13_2 qb_2_13_3
+ In_bar_14 Output_2_14_0 Output_2_14_1 Output_2_14_2 Output_2_14_3 WL_14 BL_2_14_0 BL_2_14_1 BL_2_14_2 BL_2_14_3 BLB_2_14_0 BLB_2_14_1 BLB_2_14_2 BLB_2_14_3 q_2_14_0 q_2_14_1 q_2_14_2 q_2_14_3 qb_2_14_0 qb_2_14_1 qb_2_14_2 qb_2_14_3
+ In_bar_15 Output_2_15_0 Output_2_15_1 Output_2_15_2 Output_2_15_3 WL_15 BL_2_15_0 BL_2_15_1 BL_2_15_2 BL_2_15_3 BLB_2_15_0 BLB_2_15_1 BLB_2_15_2 BLB_2_15_3 q_2_15_0 q_2_15_1 q_2_15_2 q_2_15_3 qb_2_15_0 qb_2_15_1 qb_2_15_2 qb_2_15_3
+ In_bar_16 Output_2_16_0 Output_2_16_1 Output_2_16_2 Output_2_16_3 WL_16 BL_2_16_0 BL_2_16_1 BL_2_16_2 BL_2_16_3 BLB_2_16_0 BLB_2_16_1 BLB_2_16_2 BLB_2_16_3 q_2_16_0 q_2_16_1 q_2_16_2 q_2_16_3 qb_2_16_0 qb_2_16_1 qb_2_16_2 qb_2_16_3
+ In_bar_17 Output_2_17_0 Output_2_17_1 Output_2_17_2 Output_2_17_3 WL_17 BL_2_17_0 BL_2_17_1 BL_2_17_2 BL_2_17_3 BLB_2_17_0 BLB_2_17_1 BLB_2_17_2 BLB_2_17_3 q_2_17_0 q_2_17_1 q_2_17_2 q_2_17_3 qb_2_17_0 qb_2_17_1 qb_2_17_2 qb_2_17_3
+ In_bar_18 Output_2_18_0 Output_2_18_1 Output_2_18_2 Output_2_18_3 WL_18 BL_2_18_0 BL_2_18_1 BL_2_18_2 BL_2_18_3 BLB_2_18_0 BLB_2_18_1 BLB_2_18_2 BLB_2_18_3 q_2_18_0 q_2_18_1 q_2_18_2 q_2_18_3 qb_2_18_0 qb_2_18_1 qb_2_18_2 qb_2_18_3
+ In_bar_19 Output_2_19_0 Output_2_19_1 Output_2_19_2 Output_2_19_3 WL_19 BL_2_19_0 BL_2_19_1 BL_2_19_2 BL_2_19_3 BLB_2_19_0 BLB_2_19_1 BLB_2_19_2 BLB_2_19_3 q_2_19_0 q_2_19_1 q_2_19_2 q_2_19_3 qb_2_19_0 qb_2_19_1 qb_2_19_2 qb_2_19_3
+ In_bar_20 Output_2_20_0 Output_2_20_1 Output_2_20_2 Output_2_20_3 WL_20 BL_2_20_0 BL_2_20_1 BL_2_20_2 BL_2_20_3 BLB_2_20_0 BLB_2_20_1 BLB_2_20_2 BLB_2_20_3 q_2_20_0 q_2_20_1 q_2_20_2 q_2_20_3 qb_2_20_0 qb_2_20_1 qb_2_20_2 qb_2_20_3
+ In_bar_21 Output_2_21_0 Output_2_21_1 Output_2_21_2 Output_2_21_3 WL_21 BL_2_21_0 BL_2_21_1 BL_2_21_2 BL_2_21_3 BLB_2_21_0 BLB_2_21_1 BLB_2_21_2 BLB_2_21_3 q_2_21_0 q_2_21_1 q_2_21_2 q_2_21_3 qb_2_21_0 qb_2_21_1 qb_2_21_2 qb_2_21_3
+ In_bar_22 Output_2_22_0 Output_2_22_1 Output_2_22_2 Output_2_22_3 WL_22 BL_2_22_0 BL_2_22_1 BL_2_22_2 BL_2_22_3 BLB_2_22_0 BLB_2_22_1 BLB_2_22_2 BLB_2_22_3 q_2_22_0 q_2_22_1 q_2_22_2 q_2_22_3 qb_2_22_0 qb_2_22_1 qb_2_22_2 qb_2_22_3
+ In_bar_23 Output_2_23_0 Output_2_23_1 Output_2_23_2 Output_2_23_3 WL_23 BL_2_23_0 BL_2_23_1 BL_2_23_2 BL_2_23_3 BLB_2_23_0 BLB_2_23_1 BLB_2_23_2 BLB_2_23_3 q_2_23_0 q_2_23_1 q_2_23_2 q_2_23_3 qb_2_23_0 qb_2_23_1 qb_2_23_2 qb_2_23_3
+ In_bar_24 Output_2_24_0 Output_2_24_1 Output_2_24_2 Output_2_24_3 WL_24 BL_2_24_0 BL_2_24_1 BL_2_24_2 BL_2_24_3 BLB_2_24_0 BLB_2_24_1 BLB_2_24_2 BLB_2_24_3 q_2_24_0 q_2_24_1 q_2_24_2 q_2_24_3 qb_2_24_0 qb_2_24_1 qb_2_24_2 qb_2_24_3
+ In_bar_25 Output_2_25_0 Output_2_25_1 Output_2_25_2 Output_2_25_3 WL_25 BL_2_25_0 BL_2_25_1 BL_2_25_2 BL_2_25_3 BLB_2_25_0 BLB_2_25_1 BLB_2_25_2 BLB_2_25_3 q_2_25_0 q_2_25_1 q_2_25_2 q_2_25_3 qb_2_25_0 qb_2_25_1 qb_2_25_2 qb_2_25_3
+ In_bar_26 Output_2_26_0 Output_2_26_1 Output_2_26_2 Output_2_26_3 WL_26 BL_2_26_0 BL_2_26_1 BL_2_26_2 BL_2_26_3 BLB_2_26_0 BLB_2_26_1 BLB_2_26_2 BLB_2_26_3 q_2_26_0 q_2_26_1 q_2_26_2 q_2_26_3 qb_2_26_0 qb_2_26_1 qb_2_26_2 qb_2_26_3
+ In_bar_27 Output_2_27_0 Output_2_27_1 Output_2_27_2 Output_2_27_3 WL_27 BL_2_27_0 BL_2_27_1 BL_2_27_2 BL_2_27_3 BLB_2_27_0 BLB_2_27_1 BLB_2_27_2 BLB_2_27_3 q_2_27_0 q_2_27_1 q_2_27_2 q_2_27_3 qb_2_27_0 qb_2_27_1 qb_2_27_2 qb_2_27_3
+ In_bar_28 Output_2_28_0 Output_2_28_1 Output_2_28_2 Output_2_28_3 WL_28 BL_2_28_0 BL_2_28_1 BL_2_28_2 BL_2_28_3 BLB_2_28_0 BLB_2_28_1 BLB_2_28_2 BLB_2_28_3 q_2_28_0 q_2_28_1 q_2_28_2 q_2_28_3 qb_2_28_0 qb_2_28_1 qb_2_28_2 qb_2_28_3
+ In_bar_29 Output_2_29_0 Output_2_29_1 Output_2_29_2 Output_2_29_3 WL_29 BL_2_29_0 BL_2_29_1 BL_2_29_2 BL_2_29_3 BLB_2_29_0 BLB_2_29_1 BLB_2_29_2 BLB_2_29_3 q_2_29_0 q_2_29_1 q_2_29_2 q_2_29_3 qb_2_29_0 qb_2_29_1 qb_2_29_2 qb_2_29_3
+ In_bar_30 Output_2_30_0 Output_2_30_1 Output_2_30_2 Output_2_30_3 WL_30 BL_2_30_0 BL_2_30_1 BL_2_30_2 BL_2_30_3 BLB_2_30_0 BLB_2_30_1 BLB_2_30_2 BLB_2_30_3 q_2_30_0 q_2_30_1 q_2_30_2 q_2_30_3 qb_2_30_0 qb_2_30_1 qb_2_30_2 qb_2_30_3
+ In_bar_31 Output_2_31_0 Output_2_31_1 Output_2_31_2 Output_2_31_3 WL_31 BL_2_31_0 BL_2_31_1 BL_2_31_2 BL_2_31_3 BLB_2_31_0 BLB_2_31_1 BLB_2_31_2 BLB_2_31_3 q_2_31_0 q_2_31_1 q_2_31_2 q_2_31_3 qb_2_31_0 qb_2_31_1 qb_2_31_2 qb_2_31_3 CIM_cell_col

xcol3 In_bar_0 Output_3_0_0 Output_3_0_1 Output_3_0_2 Output_3_0_3 WL_0 BL_3_0_0 BL_3_0_1 BL_3_0_2 BL_3_0_3 BLB_3_0_0 BLB_3_0_1 BLB_3_0_2 BLB_3_0_3 q_3_0_0 q_3_0_1 q_3_0_2 q_3_0_3 qb_3_0_0 qb_3_0_1 qb_3_0_2 qb_3_0_3
+ In_bar_1 Output_3_1_0 Output_3_1_1 Output_3_1_2 Output_3_1_3 WL_1 BL_3_1_0 BL_3_1_1 BL_3_1_2 BL_3_1_3 BLB_3_1_0 BLB_3_1_1 BLB_3_1_2 BLB_3_1_3 q_3_1_0 q_3_1_1 q_3_1_2 q_3_1_3 qb_3_1_0 qb_3_1_1 qb_3_1_2 qb_3_1_3
+ In_bar_2 Output_3_2_0 Output_3_2_1 Output_3_2_2 Output_3_2_3 WL_2 BL_3_2_0 BL_3_2_1 BL_3_2_2 BL_3_2_3 BLB_3_2_0 BLB_3_2_1 BLB_3_2_2 BLB_3_2_3 q_3_2_0 q_3_2_1 q_3_2_2 q_3_2_3 qb_3_2_0 qb_3_2_1 qb_3_2_2 qb_3_2_3
+ In_bar_3 Output_3_3_0 Output_3_3_1 Output_3_3_2 Output_3_3_3 WL_3 BL_3_3_0 BL_3_3_1 BL_3_3_2 BL_3_3_3 BLB_3_3_0 BLB_3_3_1 BLB_3_3_2 BLB_3_3_3 q_3_3_0 q_3_3_1 q_3_3_2 q_3_3_3 qb_3_3_0 qb_3_3_1 qb_3_3_2 qb_3_3_3
+ In_bar_4 Output_3_4_0 Output_3_4_1 Output_3_4_2 Output_3_4_3 WL_4 BL_3_4_0 BL_3_4_1 BL_3_4_2 BL_3_4_3 BLB_3_4_0 BLB_3_4_1 BLB_3_4_2 BLB_3_4_3 q_3_4_0 q_3_4_1 q_3_4_2 q_3_4_3 qb_3_4_0 qb_3_4_1 qb_3_4_2 qb_3_4_3
+ In_bar_5 Output_3_5_0 Output_3_5_1 Output_3_5_2 Output_3_5_3 WL_5 BL_3_5_0 BL_3_5_1 BL_3_5_2 BL_3_5_3 BLB_3_5_0 BLB_3_5_1 BLB_3_5_2 BLB_3_5_3 q_3_5_0 q_3_5_1 q_3_5_2 q_3_5_3 qb_3_5_0 qb_3_5_1 qb_3_5_2 qb_3_5_3
+ In_bar_6 Output_3_6_0 Output_3_6_1 Output_3_6_2 Output_3_6_3 WL_6 BL_3_6_0 BL_3_6_1 BL_3_6_2 BL_3_6_3 BLB_3_6_0 BLB_3_6_1 BLB_3_6_2 BLB_3_6_3 q_3_6_0 q_3_6_1 q_3_6_2 q_3_6_3 qb_3_6_0 qb_3_6_1 qb_3_6_2 qb_3_6_3
+ In_bar_7 Output_3_7_0 Output_3_7_1 Output_3_7_2 Output_3_7_3 WL_7 BL_3_7_0 BL_3_7_1 BL_3_7_2 BL_3_7_3 BLB_3_7_0 BLB_3_7_1 BLB_3_7_2 BLB_3_7_3 q_3_7_0 q_3_7_1 q_3_7_2 q_3_7_3 qb_3_7_0 qb_3_7_1 qb_3_7_2 qb_3_7_3
+ In_bar_8 Output_3_8_0 Output_3_8_1 Output_3_8_2 Output_3_8_3 WL_8 BL_3_8_0 BL_3_8_1 BL_3_8_2 BL_3_8_3 BLB_3_8_0 BLB_3_8_1 BLB_3_8_2 BLB_3_8_3 q_3_8_0 q_3_8_1 q_3_8_2 q_3_8_3 qb_3_8_0 qb_3_8_1 qb_3_8_2 qb_3_8_3
+ In_bar_9 Output_3_9_0 Output_3_9_1 Output_3_9_2 Output_3_9_3 WL_9 BL_3_9_0 BL_3_9_1 BL_3_9_2 BL_3_9_3 BLB_3_9_0 BLB_3_9_1 BLB_3_9_2 BLB_3_9_3 q_3_9_0 q_3_9_1 q_3_9_2 q_3_9_3 qb_3_9_0 qb_3_9_1 qb_3_9_2 qb_3_9_3
+ In_bar_10 Output_3_10_0 Output_3_10_1 Output_3_10_2 Output_3_10_3 WL_10 BL_3_10_0 BL_3_10_1 BL_3_10_2 BL_3_10_3 BLB_3_10_0 BLB_3_10_1 BLB_3_10_2 BLB_3_10_3 q_3_10_0 q_3_10_1 q_3_10_2 q_3_10_3 qb_3_10_0 qb_3_10_1 qb_3_10_2 qb_3_10_3
+ In_bar_11 Output_3_11_0 Output_3_11_1 Output_3_11_2 Output_3_11_3 WL_11 BL_3_11_0 BL_3_11_1 BL_3_11_2 BL_3_11_3 BLB_3_11_0 BLB_3_11_1 BLB_3_11_2 BLB_3_11_3 q_3_11_0 q_3_11_1 q_3_11_2 q_3_11_3 qb_3_11_0 qb_3_11_1 qb_3_11_2 qb_3_11_3
+ In_bar_12 Output_3_12_0 Output_3_12_1 Output_3_12_2 Output_3_12_3 WL_12 BL_3_12_0 BL_3_12_1 BL_3_12_2 BL_3_12_3 BLB_3_12_0 BLB_3_12_1 BLB_3_12_2 BLB_3_12_3 q_3_12_0 q_3_12_1 q_3_12_2 q_3_12_3 qb_3_12_0 qb_3_12_1 qb_3_12_2 qb_3_12_3
+ In_bar_13 Output_3_13_0 Output_3_13_1 Output_3_13_2 Output_3_13_3 WL_13 BL_3_13_0 BL_3_13_1 BL_3_13_2 BL_3_13_3 BLB_3_13_0 BLB_3_13_1 BLB_3_13_2 BLB_3_13_3 q_3_13_0 q_3_13_1 q_3_13_2 q_3_13_3 qb_3_13_0 qb_3_13_1 qb_3_13_2 qb_3_13_3
+ In_bar_14 Output_3_14_0 Output_3_14_1 Output_3_14_2 Output_3_14_3 WL_14 BL_3_14_0 BL_3_14_1 BL_3_14_2 BL_3_14_3 BLB_3_14_0 BLB_3_14_1 BLB_3_14_2 BLB_3_14_3 q_3_14_0 q_3_14_1 q_3_14_2 q_3_14_3 qb_3_14_0 qb_3_14_1 qb_3_14_2 qb_3_14_3
+ In_bar_15 Output_3_15_0 Output_3_15_1 Output_3_15_2 Output_3_15_3 WL_15 BL_3_15_0 BL_3_15_1 BL_3_15_2 BL_3_15_3 BLB_3_15_0 BLB_3_15_1 BLB_3_15_2 BLB_3_15_3 q_3_15_0 q_3_15_1 q_3_15_2 q_3_15_3 qb_3_15_0 qb_3_15_1 qb_3_15_2 qb_3_15_3
+ In_bar_16 Output_3_16_0 Output_3_16_1 Output_3_16_2 Output_3_16_3 WL_16 BL_3_16_0 BL_3_16_1 BL_3_16_2 BL_3_16_3 BLB_3_16_0 BLB_3_16_1 BLB_3_16_2 BLB_3_16_3 q_3_16_0 q_3_16_1 q_3_16_2 q_3_16_3 qb_3_16_0 qb_3_16_1 qb_3_16_2 qb_3_16_3
+ In_bar_17 Output_3_17_0 Output_3_17_1 Output_3_17_2 Output_3_17_3 WL_17 BL_3_17_0 BL_3_17_1 BL_3_17_2 BL_3_17_3 BLB_3_17_0 BLB_3_17_1 BLB_3_17_2 BLB_3_17_3 q_3_17_0 q_3_17_1 q_3_17_2 q_3_17_3 qb_3_17_0 qb_3_17_1 qb_3_17_2 qb_3_17_3
+ In_bar_18 Output_3_18_0 Output_3_18_1 Output_3_18_2 Output_3_18_3 WL_18 BL_3_18_0 BL_3_18_1 BL_3_18_2 BL_3_18_3 BLB_3_18_0 BLB_3_18_1 BLB_3_18_2 BLB_3_18_3 q_3_18_0 q_3_18_1 q_3_18_2 q_3_18_3 qb_3_18_0 qb_3_18_1 qb_3_18_2 qb_3_18_3
+ In_bar_19 Output_3_19_0 Output_3_19_1 Output_3_19_2 Output_3_19_3 WL_19 BL_3_19_0 BL_3_19_1 BL_3_19_2 BL_3_19_3 BLB_3_19_0 BLB_3_19_1 BLB_3_19_2 BLB_3_19_3 q_3_19_0 q_3_19_1 q_3_19_2 q_3_19_3 qb_3_19_0 qb_3_19_1 qb_3_19_2 qb_3_19_3
+ In_bar_20 Output_3_20_0 Output_3_20_1 Output_3_20_2 Output_3_20_3 WL_20 BL_3_20_0 BL_3_20_1 BL_3_20_2 BL_3_20_3 BLB_3_20_0 BLB_3_20_1 BLB_3_20_2 BLB_3_20_3 q_3_20_0 q_3_20_1 q_3_20_2 q_3_20_3 qb_3_20_0 qb_3_20_1 qb_3_20_2 qb_3_20_3
+ In_bar_21 Output_3_21_0 Output_3_21_1 Output_3_21_2 Output_3_21_3 WL_21 BL_3_21_0 BL_3_21_1 BL_3_21_2 BL_3_21_3 BLB_3_21_0 BLB_3_21_1 BLB_3_21_2 BLB_3_21_3 q_3_21_0 q_3_21_1 q_3_21_2 q_3_21_3 qb_3_21_0 qb_3_21_1 qb_3_21_2 qb_3_21_3
+ In_bar_22 Output_3_22_0 Output_3_22_1 Output_3_22_2 Output_3_22_3 WL_22 BL_3_22_0 BL_3_22_1 BL_3_22_2 BL_3_22_3 BLB_3_22_0 BLB_3_22_1 BLB_3_22_2 BLB_3_22_3 q_3_22_0 q_3_22_1 q_3_22_2 q_3_22_3 qb_3_22_0 qb_3_22_1 qb_3_22_2 qb_3_22_3
+ In_bar_23 Output_3_23_0 Output_3_23_1 Output_3_23_2 Output_3_23_3 WL_23 BL_3_23_0 BL_3_23_1 BL_3_23_2 BL_3_23_3 BLB_3_23_0 BLB_3_23_1 BLB_3_23_2 BLB_3_23_3 q_3_23_0 q_3_23_1 q_3_23_2 q_3_23_3 qb_3_23_0 qb_3_23_1 qb_3_23_2 qb_3_23_3
+ In_bar_24 Output_3_24_0 Output_3_24_1 Output_3_24_2 Output_3_24_3 WL_24 BL_3_24_0 BL_3_24_1 BL_3_24_2 BL_3_24_3 BLB_3_24_0 BLB_3_24_1 BLB_3_24_2 BLB_3_24_3 q_3_24_0 q_3_24_1 q_3_24_2 q_3_24_3 qb_3_24_0 qb_3_24_1 qb_3_24_2 qb_3_24_3
+ In_bar_25 Output_3_25_0 Output_3_25_1 Output_3_25_2 Output_3_25_3 WL_25 BL_3_25_0 BL_3_25_1 BL_3_25_2 BL_3_25_3 BLB_3_25_0 BLB_3_25_1 BLB_3_25_2 BLB_3_25_3 q_3_25_0 q_3_25_1 q_3_25_2 q_3_25_3 qb_3_25_0 qb_3_25_1 qb_3_25_2 qb_3_25_3
+ In_bar_26 Output_3_26_0 Output_3_26_1 Output_3_26_2 Output_3_26_3 WL_26 BL_3_26_0 BL_3_26_1 BL_3_26_2 BL_3_26_3 BLB_3_26_0 BLB_3_26_1 BLB_3_26_2 BLB_3_26_3 q_3_26_0 q_3_26_1 q_3_26_2 q_3_26_3 qb_3_26_0 qb_3_26_1 qb_3_26_2 qb_3_26_3
+ In_bar_27 Output_3_27_0 Output_3_27_1 Output_3_27_2 Output_3_27_3 WL_27 BL_3_27_0 BL_3_27_1 BL_3_27_2 BL_3_27_3 BLB_3_27_0 BLB_3_27_1 BLB_3_27_2 BLB_3_27_3 q_3_27_0 q_3_27_1 q_3_27_2 q_3_27_3 qb_3_27_0 qb_3_27_1 qb_3_27_2 qb_3_27_3
+ In_bar_28 Output_3_28_0 Output_3_28_1 Output_3_28_2 Output_3_28_3 WL_28 BL_3_28_0 BL_3_28_1 BL_3_28_2 BL_3_28_3 BLB_3_28_0 BLB_3_28_1 BLB_3_28_2 BLB_3_28_3 q_3_28_0 q_3_28_1 q_3_28_2 q_3_28_3 qb_3_28_0 qb_3_28_1 qb_3_28_2 qb_3_28_3
+ In_bar_29 Output_3_29_0 Output_3_29_1 Output_3_29_2 Output_3_29_3 WL_29 BL_3_29_0 BL_3_29_1 BL_3_29_2 BL_3_29_3 BLB_3_29_0 BLB_3_29_1 BLB_3_29_2 BLB_3_29_3 q_3_29_0 q_3_29_1 q_3_29_2 q_3_29_3 qb_3_29_0 qb_3_29_1 qb_3_29_2 qb_3_29_3
+ In_bar_30 Output_3_30_0 Output_3_30_1 Output_3_30_2 Output_3_30_3 WL_30 BL_3_30_0 BL_3_30_1 BL_3_30_2 BL_3_30_3 BLB_3_30_0 BLB_3_30_1 BLB_3_30_2 BLB_3_30_3 q_3_30_0 q_3_30_1 q_3_30_2 q_3_30_3 qb_3_30_0 qb_3_30_1 qb_3_30_2 qb_3_30_3
+ In_bar_31 Output_3_31_0 Output_3_31_1 Output_3_31_2 Output_3_31_3 WL_31 BL_3_31_0 BL_3_31_1 BL_3_31_2 BL_3_31_3 BLB_3_31_0 BLB_3_31_1 BLB_3_31_2 BLB_3_31_3 q_3_31_0 q_3_31_1 q_3_31_2 q_3_31_3 qb_3_31_0 qb_3_31_1 qb_3_31_2 qb_3_31_3 CIM_cell_col


xcim GND VDD clk rst_n in_valid
+ Output_0_31_3 Output_0_31_2 Output_0_31_1 Output_0_31_0 Output_0_30_3 Output_0_30_2 Output_0_30_1 Output_0_30_0
+ Output_0_29_3 Output_0_29_2 Output_0_29_1 Output_0_29_0 Output_0_28_3 Output_0_28_2 Output_0_28_1 Output_0_28_0
+ Output_0_27_3 Output_0_27_2 Output_0_27_1 Output_0_27_0 Output_0_26_3 Output_0_26_2 Output_0_26_1 Output_0_26_0
+ Output_0_25_3 Output_0_25_2 Output_0_25_1 Output_0_25_0 Output_0_24_3 Output_0_24_2 Output_0_24_1 Output_0_24_0
+ Output_0_23_3 Output_0_23_2 Output_0_23_1 Output_0_23_0 Output_0_22_3 Output_0_22_2 Output_0_22_1 Output_0_22_0
+ Output_0_21_3 Output_0_21_2 Output_0_21_1 Output_0_21_0 Output_0_20_3 Output_0_20_2 Output_0_20_1 Output_0_20_0
+ Output_0_19_3 Output_0_19_2 Output_0_19_1 Output_0_19_0 Output_0_18_3 Output_0_18_2 Output_0_18_1 Output_0_18_0
+ Output_0_17_3 Output_0_17_2 Output_0_17_1 Output_0_17_0 Output_0_16_3 Output_0_16_2 Output_0_16_1 Output_0_16_0
+ Output_0_15_3 Output_0_15_2 Output_0_15_1 Output_0_15_0 Output_0_14_3 Output_0_14_2 Output_0_14_1 Output_0_14_0
+ Output_0_13_3 Output_0_13_2 Output_0_13_1 Output_0_13_0 Output_0_12_3 Output_0_12_2 Output_0_12_1 Output_0_12_0
+ Output_0_11_3 Output_0_11_2 Output_0_11_1 Output_0_11_0 Output_0_10_3 Output_0_10_2 Output_0_10_1 Output_0_10_0
+ Output_0_9_3 Output_0_9_2 Output_0_9_1 Output_0_9_0 Output_0_8_3 Output_0_8_2 Output_0_8_1 Output_0_8_0
+ Output_0_7_3 Output_0_7_2 Output_0_7_1 Output_0_7_0 Output_0_6_3 Output_0_6_2 Output_0_6_1 Output_0_6_0
+ Output_0_5_3 Output_0_5_2 Output_0_5_1 Output_0_5_0 Output_0_4_3 Output_0_4_2 Output_0_4_1 Output_0_4_0
+ Output_0_3_3 Output_0_3_2 Output_0_3_1 Output_0_3_0 Output_0_2_3 Output_0_2_2 Output_0_2_1 Output_0_2_0
+ Output_0_1_3 Output_0_1_2 Output_0_1_1 Output_0_1_0 Output_0_0_3 Output_0_0_2 Output_0_0_1 Output_0_0_0
+ Output_1_31_3 Output_1_31_2 Output_1_31_1 Output_1_31_0 Output_1_30_3 Output_1_30_2 Output_1_30_1 Output_1_30_0
+ Output_1_29_3 Output_1_29_2 Output_1_29_1 Output_1_29_0 Output_1_28_3 Output_1_28_2 Output_1_28_1 Output_1_28_0
+ Output_1_27_3 Output_1_27_2 Output_1_27_1 Output_1_27_0 Output_1_26_3 Output_1_26_2 Output_1_26_1 Output_1_26_0
+ Output_1_25_3 Output_1_25_2 Output_1_25_1 Output_1_25_0 Output_1_24_3 Output_1_24_2 Output_1_24_1 Output_1_24_0
+ Output_1_23_3 Output_1_23_2 Output_1_23_1 Output_1_23_0 Output_1_22_3 Output_1_22_2 Output_1_22_1 Output_1_22_0
+ Output_1_21_3 Output_1_21_2 Output_1_21_1 Output_1_21_0 Output_1_20_3 Output_1_20_2 Output_1_20_1 Output_1_20_0
+ Output_1_19_3 Output_1_19_2 Output_1_19_1 Output_1_19_0 Output_1_18_3 Output_1_18_2 Output_1_18_1 Output_1_18_0
+ Output_1_17_3 Output_1_17_2 Output_1_17_1 Output_1_17_0 Output_1_16_3 Output_1_16_2 Output_1_16_1 Output_1_16_0
+ Output_1_15_3 Output_1_15_2 Output_1_15_1 Output_1_15_0 Output_1_14_3 Output_1_14_2 Output_1_14_1 Output_1_14_0
+ Output_1_13_3 Output_1_13_2 Output_1_13_1 Output_1_13_0 Output_1_12_3 Output_1_12_2 Output_1_12_1 Output_1_12_0
+ Output_1_11_3 Output_1_11_2 Output_1_11_1 Output_1_11_0 Output_1_10_3 Output_1_10_2 Output_1_10_1 Output_1_10_0
+ Output_1_9_3 Output_1_9_2 Output_1_9_1 Output_1_9_0 Output_1_8_3 Output_1_8_2 Output_1_8_1 Output_1_8_0
+ Output_1_7_3 Output_1_7_2 Output_1_7_1 Output_1_7_0 Output_1_6_3 Output_1_6_2 Output_1_6_1 Output_1_6_0
+ Output_1_5_3 Output_1_5_2 Output_1_5_1 Output_1_5_0 Output_1_4_3 Output_1_4_2 Output_1_4_1 Output_1_4_0
+ Output_1_3_3 Output_1_3_2 Output_1_3_1 Output_1_3_0 Output_1_2_3 Output_1_2_2 Output_1_2_1 Output_1_2_0
+ Output_1_1_3 Output_1_1_2 Output_1_1_1 Output_1_1_0 Output_1_0_3 Output_1_0_2 Output_1_0_1 Output_1_0_0
+ Output_2_31_3 Output_2_31_2 Output_2_31_1 Output_2_31_0 Output_2_30_3 Output_2_30_2 Output_2_30_1 Output_2_30_0
+ Output_2_29_3 Output_2_29_2 Output_2_29_1 Output_2_29_0 Output_2_28_3 Output_2_28_2 Output_2_28_1 Output_2_28_0
+ Output_2_27_3 Output_2_27_2 Output_2_27_1 Output_2_27_0 Output_2_26_3 Output_2_26_2 Output_2_26_1 Output_2_26_0
+ Output_2_25_3 Output_2_25_2 Output_2_25_1 Output_2_25_0 Output_2_24_3 Output_2_24_2 Output_2_24_1 Output_2_24_0
+ Output_2_23_3 Output_2_23_2 Output_2_23_1 Output_2_23_0 Output_2_22_3 Output_2_22_2 Output_2_22_1 Output_2_22_0
+ Output_2_21_3 Output_2_21_2 Output_2_21_1 Output_2_21_0 Output_2_20_3 Output_2_20_2 Output_2_20_1 Output_2_20_0
+ Output_2_19_3 Output_2_19_2 Output_2_19_1 Output_2_19_0 Output_2_18_3 Output_2_18_2 Output_2_18_1 Output_2_18_0
+ Output_2_17_3 Output_2_17_2 Output_2_17_1 Output_2_17_0 Output_2_16_3 Output_2_16_2 Output_2_16_1 Output_2_16_0
+ Output_2_15_3 Output_2_15_2 Output_2_15_1 Output_2_15_0 Output_2_14_3 Output_2_14_2 Output_2_14_1 Output_2_14_0
+ Output_2_13_3 Output_2_13_2 Output_2_13_1 Output_2_13_0 Output_2_12_3 Output_2_12_2 Output_2_12_1 Output_2_12_0
+ Output_2_11_3 Output_2_11_2 Output_2_11_1 Output_2_11_0 Output_2_10_3 Output_2_10_2 Output_2_10_1 Output_2_10_0
+ Output_2_9_3 Output_2_9_2 Output_2_9_1 Output_2_9_0 Output_2_8_3 Output_2_8_2 Output_2_8_1 Output_2_8_0
+ Output_2_7_3 Output_2_7_2 Output_2_7_1 Output_2_7_0 Output_2_6_3 Output_2_6_2 Output_2_6_1 Output_2_6_0
+ Output_2_5_3 Output_2_5_2 Output_2_5_1 Output_2_5_0 Output_2_4_3 Output_2_4_2 Output_2_4_1 Output_2_4_0
+ Output_2_3_3 Output_2_3_2 Output_2_3_1 Output_2_3_0 Output_2_2_3 Output_2_2_2 Output_2_2_1 Output_2_2_0
+ Output_2_1_3 Output_2_1_2 Output_2_1_1 Output_2_1_0 Output_2_0_3 Output_2_0_2 Output_2_0_1 Output_2_0_0
+ Output_3_31_3 Output_3_31_2 Output_3_31_1 Output_3_31_0 Output_3_30_3 Output_3_30_2 Output_3_30_1 Output_3_30_0
+ Output_3_29_3 Output_3_29_2 Output_3_29_1 Output_3_29_0 Output_3_28_3 Output_3_28_2 Output_3_28_1 Output_3_28_0
+ Output_3_27_3 Output_3_27_2 Output_3_27_1 Output_3_27_0 Output_3_26_3 Output_3_26_2 Output_3_26_1 Output_3_26_0
+ Output_3_25_3 Output_3_25_2 Output_3_25_1 Output_3_25_0 Output_3_24_3 Output_3_24_2 Output_3_24_1 Output_3_24_0
+ Output_3_23_3 Output_3_23_2 Output_3_23_1 Output_3_23_0 Output_3_22_3 Output_3_22_2 Output_3_22_1 Output_3_22_0
+ Output_3_21_3 Output_3_21_2 Output_3_21_1 Output_3_21_0 Output_3_20_3 Output_3_20_2 Output_3_20_1 Output_3_20_0
+ Output_3_19_3 Output_3_19_2 Output_3_19_1 Output_3_19_0 Output_3_18_3 Output_3_18_2 Output_3_18_1 Output_3_18_0
+ Output_3_17_3 Output_3_17_2 Output_3_17_1 Output_3_17_0 Output_3_16_3 Output_3_16_2 Output_3_16_1 Output_3_16_0
+ Output_3_15_3 Output_3_15_2 Output_3_15_1 Output_3_15_0 Output_3_14_3 Output_3_14_2 Output_3_14_1 Output_3_14_0
+ Output_3_13_3 Output_3_13_2 Output_3_13_1 Output_3_13_0 Output_3_12_3 Output_3_12_2 Output_3_12_1 Output_3_12_0
+ Output_3_11_3 Output_3_11_2 Output_3_11_1 Output_3_11_0 Output_3_10_3 Output_3_10_2 Output_3_10_1 Output_3_10_0
+ Output_3_9_3 Output_3_9_2 Output_3_9_1 Output_3_9_0 Output_3_8_3 Output_3_8_2 Output_3_8_1 Output_3_8_0
+ Output_3_7_3 Output_3_7_2 Output_3_7_1 Output_3_7_0 Output_3_6_3 Output_3_6_2 Output_3_6_1 Output_3_6_0
+ Output_3_5_3 Output_3_5_2 Output_3_5_1 Output_3_5_0 Output_3_4_3 Output_3_4_2 Output_3_4_1 Output_3_4_0
+ Output_3_3_3 Output_3_3_2 Output_3_3_1 Output_3_3_0 Output_3_2_3 Output_3_2_2 Output_3_2_1 Output_3_2_0
+ Output_3_1_3 Output_3_1_2 Output_3_1_1 Output_3_1_0 Output_3_0_3 Output_3_0_2 Output_3_0_1 Output_3_0_0
+ out_valid O1[12] O1[11] O1[10] O1[9] O1[8] O1[7] O1[6] O1[5] O1[4] O1[3] O1[2] O1[1] O1[0]
+ O2[12] O2[11] O2[10] O2[9] O2[8] O2[7] O2[6] O2[5] O2[4] O2[3] O2[2] O2[1] O2[0]
+ O3[12] O3[11] O3[10] O3[9] O3[8] O3[7] O3[6] O3[5] O3[4] O3[3] O3[2] O3[1] O3[0]
+ O4[12] O4[11] O4[10] O4[9] O4[8] O4[7] O4[6] O4[5] O4[4] O4[3] O4[2] O4[1] O4[0] DCIM


.tran 0.1ps 32.8ns uic

.option post 
.options probe
.probe v(O1[12]) v(O1[11]) v(O1[10]) v(O1[9]) v(O1[8]) v(O1[7]) v(O1[6]) v(O1[5]) v(O1[4]) v(O1[3]) v(O1[2]) v(O1[1]) v(O1[0])
+ v(O2[12]) v(O2[11]) v(O2[10]) v(O2[9]) v(O2[8]) v(O2[7]) v(O2[6]) v(O2[5]) v(O2[4]) v(O2[3]) v(O2[2]) v(O2[1]) v(O2[0])
+ v(O3[12]) v(O3[11]) v(O3[10]) v(O3[9]) v(O3[8]) v(O3[7]) v(O3[6]) v(O3[5]) v(O3[4]) v(O3[3]) v(O3[2]) v(O3[1]) v(O3[0])
+ v(O4[12]) v(O4[11]) v(O4[10]) v(O4[9]) v(O4[8]) v(O4[7]) v(O4[6]) v(O4[5]) v(O4[4]) v(O4[3]) v(O4[2]) v(O4[1]) v(O4[0]) v(out_valid)
.temp 25

.meas power_consumption avg power


.end