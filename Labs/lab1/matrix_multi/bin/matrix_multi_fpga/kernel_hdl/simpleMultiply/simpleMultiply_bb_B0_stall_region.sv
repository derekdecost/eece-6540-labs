// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 19.4 (Release Build #64)
// 
// Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from simpleMultiply_bb_B0_stall_region
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_bb_B0_stall_region (
    input wire [31:0] in_widthA,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_0,
    input wire [63:0] in_acl_global_id_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_1_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_3_tpl;
    wire [31:0] i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_4_tpl;
    wire [0:0] i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_5_tpl;
    wire [0:0] simpleMultiply_B0_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] simpleMultiply_B0_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] simpleMultiply_B0_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] simpleMultiply_B0_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [127:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [97:0] bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_f;
    wire [127:0] bubble_join_simpleMultiply_B0_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_simpleMultiply_B0_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_simpleMultiply_B0_merge_reg_aunroll_x_c;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_V0;
    wire [0:0] SE_out_simpleMultiply_B0_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_simpleMultiply_B0_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_simpleMultiply_B0_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = {in_acl_global_id_1, in_acl_global_id_0};

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);

    // bubble_join_simpleMultiply_B0_merge_reg_aunroll_x(BITJOIN,27)
    assign bubble_join_simpleMultiply_B0_merge_reg_aunroll_x_q = {simpleMultiply_B0_merge_reg_aunroll_x_out_data_out_1_tpl, simpleMultiply_B0_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_simpleMultiply_B0_merge_reg_aunroll_x(BITSELECT,28)
    assign bubble_select_simpleMultiply_B0_merge_reg_aunroll_x_b = $unsigned(bubble_join_simpleMultiply_B0_merge_reg_aunroll_x_q[63:0]);
    assign bubble_select_simpleMultiply_B0_merge_reg_aunroll_x_c = $unsigned(bubble_join_simpleMultiply_B0_merge_reg_aunroll_x_q[127:64]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x(STALLENABLE,32)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_wireValid = i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x(BLACKBOX,16)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit_0_tpl@8
    // out out_c0_exit_1_tpl@8
    // out out_c0_exit_2_tpl@8
    // out out_c0_exit_3_tpl@8
    // out out_c0_exit_4_tpl@8
    // out out_c0_exit_5_tpl@8
    simpleMultiply_i_sfc_s_c0_in_entry_simplA000000Znter_simplemultiply1 thei_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_backStall),
        .in_i_valid(SE_out_simpleMultiply_B0_merge_reg_aunroll_x_V0),
        .in_widthA(in_widthA),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_simpleMultiply_B0_merge_reg_aunroll_x_c),
        .in_c0_eni2_2_tpl(bubble_select_simpleMultiply_B0_merge_reg_aunroll_x_b),
        .out_o_stall(i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_simpleMultiply_B0_merge_reg_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_simpleMultiply_B0_merge_reg_aunroll_x_V0 = SE_out_simpleMultiply_B0_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_simpleMultiply_B0_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_o_stall | ~ (SE_out_simpleMultiply_B0_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_simpleMultiply_B0_merge_reg_aunroll_x_wireValid = simpleMultiply_B0_merge_reg_aunroll_x_out_valid_out;

    // simpleMultiply_B0_merge_reg_aunroll_x(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    simpleMultiply_B0_merge_reg thesimpleMultiply_B0_merge_reg_aunroll_x (
        .in_stall_in(SE_out_simpleMultiply_B0_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .out_stall_out(simpleMultiply_B0_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(simpleMultiply_B0_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(simpleMultiply_B0_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(simpleMultiply_B0_merge_reg_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,29)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = simpleMultiply_B0_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x(BITJOIN,23)
    assign bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_q = {i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x(BITSELECT,24)
    assign bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_q[96:65]);
    assign bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_q[97:97]);

    // dupName_0_sync_out_x(GPOUT,15)@8
    assign out_c0_exe1 = bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_b;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_c;
    assign out_c0_exe3 = bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_d;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_e;
    assign out_c0_exe5 = bubble_select_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_f;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_entry_simplemultiplys_c0_enter_simplemultiply1_aunroll_x_V0;

endmodule
