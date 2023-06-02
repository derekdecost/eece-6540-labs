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

// SystemVerilog created from simpleMultiply_bb_B2_stall_region
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_bb_B2_stall_region (
    input wire [511:0] in_lm_simpleMultiply_avm_readdata,
    input wire [0:0] in_lm_simpleMultiply_avm_writeack,
    input wire [0:0] in_lm_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_lm_simpleMultiply_avm_readdatavalid,
    output wire [32:0] out_lm_simpleMultiply_avm_address,
    output wire [0:0] out_lm_simpleMultiply_avm_enable,
    output wire [0:0] out_lm_simpleMultiply_avm_read,
    output wire [0:0] out_lm_simpleMultiply_avm_write,
    output wire [511:0] out_lm_simpleMultiply_avm_writedata,
    output wire [63:0] out_lm_simpleMultiply_avm_byteenable,
    output wire [4:0] out_lm_simpleMultiply_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_inputA,
    input wire [63:0] in_inputB,
    input wire [31:0] in_widthA,
    input wire [31:0] in_widthB,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe12,
    input wire [31:0] in_c0_exe23,
    input wire [0:0] in_c0_exe36,
    input wire [31:0] in_c0_exe47,
    input wire [0:0] in_c0_exe58,
    input wire [31:0] in_i_021,
    input wire [31:0] in_sum_020,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm8_simpleMultiply_avm_readdata,
    input wire [0:0] in_lm8_simpleMultiply_avm_writeack,
    input wire [0:0] in_lm8_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_lm8_simpleMultiply_avm_readdatavalid,
    output wire [32:0] out_lm8_simpleMultiply_avm_address,
    output wire [0:0] out_lm8_simpleMultiply_avm_enable,
    output wire [0:0] out_lm8_simpleMultiply_avm_read,
    output wire [0:0] out_lm8_simpleMultiply_avm_write,
    output wire [511:0] out_lm8_simpleMultiply_avm_writedata,
    output wire [63:0] out_lm8_simpleMultiply_avm_byteenable,
    output wire [4:0] out_lm8_simpleMultiply_avm_burstcount,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe23,
    output wire [31:0] out_c0_exe333,
    output wire [0:0] out_c0_exe36,
    output wire [0:0] out_c0_exe434,
    output wire [31:0] out_c0_exe47,
    output wire [0:0] out_c0_exe58,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm8_simplemultiply4_out_o_valid;
    wire [32:0] i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_simplemultiply3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_simplemultiply3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_simplemultiply3_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_4_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] simpleMultiply_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] simpleMultiply_B2_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [96:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [0:0] redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_in;
    wire redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_in;
    wire redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_data_in;
    wire [0:0] redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_out;
    wire redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_out;
    wire redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_data_out;
    wire [0:0] redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in;
    wire redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in;
    wire redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_in;
    wire [0:0] redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out;
    wire redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out;
    wire redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_out;
    wire [0:0] redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_in;
    wire redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_in;
    wire redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_data_in;
    wire [0:0] redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_out;
    wire redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_out;
    wire redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [96:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [96:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm8_simplemultiply4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm8_simplemultiply4_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_simplemultiply3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_simplemultiply3_b;
    wire [161:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [160:0] bubble_join_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_e;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_b;
    wire [161:0] bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_h;
    wire [31:0] bubble_join_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_q;
    wire [31:0] bubble_select_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_b;
    wire [0:0] bubble_join_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_q;
    wire [0:0] bubble_select_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b;
    wire [0:0] bubble_join_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_q;
    wire [0:0] bubble_select_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [96:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [96:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm_simplemultiply3_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_V1;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_wireValid;
    wire [0:0] SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_and0;
    wire [0:0] SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_and1;
    wire [0:0] SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_backStall;
    wire [0:0] SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_V0;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireStall;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg0;
    reg [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg1;
    reg [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_or0;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V0;
    wire [0:0] SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_out_bitsignaltemp;


    // bubble_join_i_llvm_fpga_mem_lm8_simplemultiply4(BITJOIN,56)
    assign bubble_join_i_llvm_fpga_mem_lm8_simplemultiply4_q = i_llvm_fpga_mem_lm8_simplemultiply4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm8_simplemultiply4(BITSELECT,57)
    assign bubble_select_i_llvm_fpga_mem_lm8_simplemultiply4_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm8_simplemultiply4_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm_simplemultiply3(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_mem_lm_simplemultiply3_q = i_llvm_fpga_mem_lm_simplemultiply3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_simplemultiply3(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_mem_lm_simplemultiply3_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_simplemultiply3_q[31:0]);

    // bubble_join_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo(BITJOIN,77)
    assign bubble_join_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_q = redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_data_out;

    // bubble_select_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo(BITSELECT,78)
    assign bubble_select_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_b = $unsigned(bubble_join_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo(STALLFIFO,52)
    assign redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_in = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V1;
    assign redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall;
    assign redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_data_in = bubble_select_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b;
    assign redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_in_bitsignaltemp = redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_in[0];
    assign redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_in_bitsignaltemp = redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_in[0];
    assign redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_out[0] = redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_out_bitsignaltemp;
    assign redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_out[0] = redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(168),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo (
        .valid_in(redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b),
        .valid_out(redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,45)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,53)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(168),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,64)
    assign bubble_join_stall_entry_q = {in_sum_020, in_i_021, in_c0_exe58, in_c0_exe47, in_c0_exe36, in_c0_exe23, in_c0_exe12};

    // bubble_select_stall_entry(BITSELECT,65)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[161:130]);

    // SE_stall_entry(STALLENABLE,95)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = simpleMultiply_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // simpleMultiply_B2_merge_reg_aunroll_x(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    simpleMultiply_B2_merge_reg thesimpleMultiply_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_simpleMultiply_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_g),
        .in_data_in_1_tpl(bubble_select_stall_entry_h),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .out_stall_out(simpleMultiply_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(simpleMultiply_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_simpleMultiply_B2_merge_reg_aunroll_x(BITJOIN,74)
    assign bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q = {simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl, simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_5_tpl, simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_4_tpl, simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_3_tpl, simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_2_tpl, simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl, simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_simpleMultiply_B2_merge_reg_aunroll_x(BITSELECT,75)
    assign bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_c = $unsigned(bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_d = $unsigned(bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q[95:64]);
    assign bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_e = $unsigned(bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q[127:96]);
    assign bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_f = $unsigned(bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q[128:128]);
    assign bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_g = $unsigned(bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_h = $unsigned(bubble_join_simpleMultiply_B2_merge_reg_aunroll_x_q[161:161]);

    // join_for_coalesced_delay_1(BITJOIN,48)
    assign join_for_coalesced_delay_1_q = {bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_f, bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_g, bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_e, bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_d};

    // redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(STALLFIFO,51)
    assign redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V2;
    assign redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall;
    assign redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_in = bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_h;
    assign redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in_bitsignaltemp = redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in[0];
    assign redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in_bitsignaltemp = redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in[0];
    assign redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out[0] = redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out_bitsignaltemp;
    assign redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out[0] = redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo (
        .valid_in(redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_h),
        .valid_out(redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x(BLACKBOX,32)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c0_exit30_0_tpl@10
    // out out_c0_exit30_1_tpl@10
    // out out_c0_exit30_2_tpl@10
    // out out_c0_exit30_3_tpl@10
    // out out_c0_exit30_4_tpl@10
    simpleMultiply_i_sfc_s_c0_in_for_body_siA000000Z2310_simplemultiply1 thei_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_backStall),
        .in_i_valid(SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V0),
        .in_inputA(in_inputA),
        .in_inputB(in_inputB),
        .in_widthA(in_widthA),
        .in_widthB(in_widthB),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_b),
        .in_c0_eni4_2_tpl(bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_g),
        .in_c0_eni4_3_tpl(bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_e),
        .in_c0_eni4_4_tpl(bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_h),
        .out_o_stall(i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_o_valid),
        .out_c0_exit30_0_tpl(),
        .out_c0_exit30_1_tpl(i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_1_tpl),
        .out_c0_exit30_2_tpl(i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_2_tpl),
        .out_c0_exit30_3_tpl(i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_3_tpl),
        .out_c0_exit30_4_tpl(i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_simpleMultiply_B2_merge_reg_aunroll_x(STALLENABLE,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_o_stall) & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid) | SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed1 = (~ (redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_out) & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid) | SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed2 = (~ (redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_stall_out) & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid) | SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg2;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid) | SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_StallValid = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_backStall & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg0 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_StallValid & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg1 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_StallValid & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg2 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_StallValid & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed2;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_toReg3 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_StallValid & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or0 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or1 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed1 & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or0;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or2 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed2 & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or1;
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_simpleMultiply_B2_merge_reg_aunroll_x_consumed3 & SE_out_simpleMultiply_B2_merge_reg_aunroll_x_or2);
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_backStall = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V0 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V1 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V2 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg2);
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V3 = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_simpleMultiply_B2_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_simpleMultiply_B2_merge_reg_aunroll_x_wireValid = simpleMultiply_B2_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,54)
    assign coalesced_delay_1_fifo_valid_in = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(177),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(97),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg(STALLFIFO,168)
    assign bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_V0;
    assign bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(8),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1(STALLENABLE,128)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_V0 = SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and0 = bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and1 = coalesced_delay_1_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and2 = coalesced_delay_0_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and3 = redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and4 = i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_wireValid = bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_and4;

    // i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x(BLACKBOX,33)@170
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@177
    // out out_c1_exit_0_tpl@177
    // out out_c1_exit_1_tpl@177
    simpleMultiply_i_sfc_s_c1_in_for_body_siA000000Znter_simplemultiply6 thei_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall),
        .in_i_valid(SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_V0),
        .in_c1_eni3_0_tpl(GND_q),
        .in_c1_eni3_1_tpl(bubble_select_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_b),
        .in_c1_eni3_2_tpl(bubble_select_i_llvm_fpga_mem_lm_simplemultiply3_b),
        .in_c1_eni3_3_tpl(bubble_select_i_llvm_fpga_mem_lm8_simplemultiply4_b),
        .out_o_stall(i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo(STALLFIFO,50)
    assign redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_in = SE_out_simpleMultiply_B2_merge_reg_aunroll_x_V1;
    assign redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_in = SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_backStall;
    assign redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_data_in = bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_c;
    assign redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_in_bitsignaltemp = redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_in[0];
    assign redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_in_bitsignaltemp = redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_in[0];
    assign redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_out[0] = redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_out_bitsignaltemp;
    assign redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_out[0] = redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(170),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo (
        .valid_in(redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_simpleMultiply_B2_merge_reg_aunroll_x_c),
        .valid_out(redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo(STALLENABLE,108)
    // Valid signal propagation
    assign SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_V0 = SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_backStall = i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_o_stall | ~ (SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_and0 = redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_valid_out;
    assign SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_and1 = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_V1 & SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_and0;
    assign SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_wireValid = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_V1 & SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_and1;

    // bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg(STALLFIFO,167)
    assign bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_in = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_V0;
    assign bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(8),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm8_simplemultiply4(STALLENABLE,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0 <= SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1 <= SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm8_simplemultiply4_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid) | SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1 = (~ (SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid) | SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_backStall & SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_toReg0 = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid & SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_toReg1 = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid & SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_or0 = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1 & SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_or0);
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_backStall = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_V0 = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_V1 = SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid = i_llvm_fpga_mem_lm8_simplemultiply4_out_o_valid;

    // i_llvm_fpga_mem_lm8_simplemultiply4(BLACKBOX,7)@10
    // in in_i_stall@20000000
    // out out_lm8_simpleMultiply_avm_address@20000000
    // out out_lm8_simpleMultiply_avm_burstcount@20000000
    // out out_lm8_simpleMultiply_avm_byteenable@20000000
    // out out_lm8_simpleMultiply_avm_enable@20000000
    // out out_lm8_simpleMultiply_avm_read@20000000
    // out out_lm8_simpleMultiply_avm_write@20000000
    // out out_lm8_simpleMultiply_avm_writedata@20000000
    // out out_o_readdata@170
    // out out_o_stall@20000000
    // out out_o_valid@170
    simpleMultiply_i_llvm_fpga_mem_lm8_simplemultiply0 thei_llvm_fpga_mem_lm8_simplemultiply4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_c),
        .in_i_predicate(bubble_select_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm8_simplemultiply4_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_V0),
        .in_lm8_simpleMultiply_avm_readdata(in_lm8_simpleMultiply_avm_readdata),
        .in_lm8_simpleMultiply_avm_readdatavalid(in_lm8_simpleMultiply_avm_readdatavalid),
        .in_lm8_simpleMultiply_avm_waitrequest(in_lm8_simpleMultiply_avm_waitrequest),
        .in_lm8_simpleMultiply_avm_writeack(in_lm8_simpleMultiply_avm_writeack),
        .out_lm8_simpleMultiply_avm_address(i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_address),
        .out_lm8_simpleMultiply_avm_burstcount(i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_burstcount),
        .out_lm8_simpleMultiply_avm_byteenable(i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_byteenable),
        .out_lm8_simpleMultiply_avm_enable(i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_enable),
        .out_lm8_simpleMultiply_avm_read(i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_read),
        .out_lm8_simpleMultiply_avm_write(i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_write),
        .out_lm8_simpleMultiply_avm_writedata(i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm8_simplemultiply4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm8_simplemultiply4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm8_simplemultiply4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(STALLENABLE,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0 <= '0;
            SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0 <= SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg0;
            // Successor 1
            SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1 <= SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_backStall) & SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid) | SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0;
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1 = (~ (redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_stall_out) & SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid) | SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1;
    // Consuming
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall & SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid;
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg0 = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid & SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0;
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_toReg1 = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_StallValid & SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_or0 = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed0;
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireStall = ~ (SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_consumed1 & SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_or0);
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_backStall = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V0 = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid & ~ (SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg0);
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V1 = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid & ~ (SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_wireValid = redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x(STALLENABLE,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_backStall) & SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_o_valid;

    // SE_in_i_llvm_fpga_mem_lm8_simplemultiply4(STALLENABLE,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0 <= SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1 <= SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0 = (~ (i_llvm_fpga_mem_lm8_simplemultiply4_out_o_stall) & SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid) | SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0;
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1 = (~ (i_llvm_fpga_mem_lm_simplemultiply3_out_o_stall) & SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid) | SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid = SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_backStall & SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid;
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_toReg0 = SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid & SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_toReg1 = SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_StallValid & SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_or0 = SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireStall = ~ (SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_consumed1 & SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_or0);
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_backStall = SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_V0 = SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg0);
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_V1 = SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_and0 = SE_out_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_V0;
    assign SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_wireValid = SE_out_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_V0 & SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_and0;

    // SE_out_i_llvm_fpga_mem_lm_simplemultiply3(STALLENABLE,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg0 <= SE_out_i_llvm_fpga_mem_lm_simplemultiply3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg1 <= SE_out_i_llvm_fpga_mem_lm_simplemultiply3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireValid) | SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed1 = (~ (SE_out_redist0_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_1_tpl_169_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireValid) | SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_StallValid = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_backStall & SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_toReg0 = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_StallValid & SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_toReg1 = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_StallValid & SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_or0 = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm_simplemultiply3_consumed1 & SE_out_i_llvm_fpga_mem_lm_simplemultiply3_or0);
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_backStall = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_V0 = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_V1 = SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm_simplemultiply3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm_simplemultiply3_wireValid = i_llvm_fpga_mem_lm_simplemultiply3_out_o_valid;

    // bubble_join_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(BITJOIN,80)
    assign bubble_join_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_q = redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_data_out;

    // bubble_select_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo(BITSELECT,81)
    assign bubble_select_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b = $unsigned(bubble_join_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_q[0:0]);

    // bubble_join_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x(BITJOIN,68)
    assign bubble_join_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_q = {i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_4_tpl, i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_3_tpl, i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_2_tpl, i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_out_c0_exit30_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x(BITSELECT,69)
    assign bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_q[160:160]);

    // i_llvm_fpga_mem_lm_simplemultiply3(BLACKBOX,8)@10
    // in in_i_stall@20000000
    // out out_lm_simpleMultiply_avm_address@20000000
    // out out_lm_simpleMultiply_avm_burstcount@20000000
    // out out_lm_simpleMultiply_avm_byteenable@20000000
    // out out_lm_simpleMultiply_avm_enable@20000000
    // out out_lm_simpleMultiply_avm_read@20000000
    // out out_lm_simpleMultiply_avm_write@20000000
    // out out_lm_simpleMultiply_avm_writedata@20000000
    // out out_o_readdata@170
    // out out_o_stall@20000000
    // out out_o_valid@170
    simpleMultiply_i_llvm_fpga_mem_lm_simplemultiply0 thei_llvm_fpga_mem_lm_simplemultiply3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_simplemultiplys_c0_enter2310_simplemultiply1_aunroll_x_b),
        .in_i_predicate(bubble_select_redist5_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_9_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm_simplemultiply3_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm8_simplemultiply4_V1),
        .in_lm_simpleMultiply_avm_readdata(in_lm_simpleMultiply_avm_readdata),
        .in_lm_simpleMultiply_avm_readdatavalid(in_lm_simpleMultiply_avm_readdatavalid),
        .in_lm_simpleMultiply_avm_waitrequest(in_lm_simpleMultiply_avm_waitrequest),
        .in_lm_simpleMultiply_avm_writeack(in_lm_simpleMultiply_avm_writeack),
        .out_lm_simpleMultiply_avm_address(i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_address),
        .out_lm_simpleMultiply_avm_burstcount(i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_burstcount),
        .out_lm_simpleMultiply_avm_byteenable(i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_byteenable),
        .out_lm_simpleMultiply_avm_enable(i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_enable),
        .out_lm_simpleMultiply_avm_read(i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_read),
        .out_lm_simpleMultiply_avm_write(i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_write),
        .out_lm_simpleMultiply_avm_writedata(i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_simplemultiply3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_simplemultiply3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_simplemultiply3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_lm_simpleMultiply_avm_address = i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_address;
    assign out_lm_simpleMultiply_avm_enable = i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_enable;
    assign out_lm_simpleMultiply_avm_read = i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_read;
    assign out_lm_simpleMultiply_avm_write = i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_write;
    assign out_lm_simpleMultiply_avm_writedata = i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_writedata;
    assign out_lm_simpleMultiply_avm_byteenable = i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_byteenable;
    assign out_lm_simpleMultiply_avm_burstcount = i_llvm_fpga_mem_lm_simplemultiply3_out_lm_simpleMultiply_avm_burstcount;

    // sync_out(GPOUT,27)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_lm8_simpleMultiply_avm_address = i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_address;
    assign out_lm8_simpleMultiply_avm_enable = i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_enable;
    assign out_lm8_simpleMultiply_avm_read = i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_read;
    assign out_lm8_simpleMultiply_avm_write = i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_write;
    assign out_lm8_simpleMultiply_avm_writedata = i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_writedata;
    assign out_lm8_simpleMultiply_avm_byteenable = i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_byteenable;
    assign out_lm8_simpleMultiply_avm_burstcount = i_llvm_fpga_mem_lm8_simplemultiply4_out_lm8_simpleMultiply_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x(BITJOIN,71)
    assign bubble_join_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_q = i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x(BITSELECT,72)
    assign bubble_select_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_q[31:0]);

    // bubble_join_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo(BITJOIN,83)
    assign bubble_join_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_q = redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_data_out;

    // bubble_select_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo(BITSELECT,84)
    assign bubble_select_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_b = $unsigned(bubble_join_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,86)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,87)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,46)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,89)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,90)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[96:0]);

    // sel_for_coalesced_delay_1(BITSELECT,49)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[96:96]);

    // dupName_0_sync_out_x(GPOUT,31)@177
    assign out_c0_exe12 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe23 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe333 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe36 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe434 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe47 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe58 = bubble_select_redist6_simpleMultiply_B2_merge_reg_aunroll_x_out_data_out_6_tpl_176_fifo_b;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body_simplemultiplys_c1_enter_simplemultiply6_aunroll_x_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_lm_simplemultiply3_1_V0;

endmodule
