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

// SystemVerilog created from simpleMultiply_i_sfc_logic_s_c0_in_for_bA000000Z2310_simplemultiply0
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_i_sfc_logic_s_c0_in_for_bA000000Z2310_simplemultiply0 (
    input wire [63:0] in_inputA,
    input wire [63:0] in_inputB,
    input wire [31:0] in_widthA,
    input wire [31:0] in_widthB,
    output wire [0:0] out_c0_exi429_0_tpl,
    output wire [63:0] out_c0_exi429_1_tpl,
    output wire [63:0] out_c0_exi429_2_tpl,
    output wire [31:0] out_c0_exi429_3_tpl,
    output wire [0:0] out_c0_exi429_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_simpleMultiply0,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [31:0] in_c0_eni4_1_tpl,
    input wire [31:0] in_c0_eni4_2_tpl,
    input wire [31:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_122_q;
    wire [32:0] i_add5_simplemultiply8_a;
    wire [32:0] i_add5_simplemultiply8_b;
    logic [32:0] i_add5_simplemultiply8_o;
    wire [32:0] i_add5_simplemultiply8_q;
    wire [32:0] i_add_simplemultiply2_a;
    wire [32:0] i_add_simplemultiply2_b;
    logic [32:0] i_add_simplemultiply2_o;
    wire [32:0] i_add_simplemultiply2_q;
    wire [1:0] i_arrayidx2_simplemultiply5_vt_const_1_q;
    wire [63:0] i_arrayidx2_simplemultiply5_vt_join_q;
    wire [61:0] i_arrayidx2_simplemultiply5_vt_select_63_b;
    wire [63:0] i_arrayidx73_simplemultiply11_vt_join_q;
    wire [61:0] i_arrayidx73_simplemultiply11_vt_select_63_b;
    wire [0:0] i_cmp7_guard_simplemultiply16_q;
    wire [33:0] i_cmp_simplemultiply14_a;
    wire [33:0] i_cmp_simplemultiply14_b;
    logic [33:0] i_cmp_simplemultiply14_o;
    wire [0:0] i_cmp_simplemultiply14_n;
    wire [32:0] i_inc_simplemultiply12_a;
    wire [32:0] i_inc_simplemultiply12_b;
    logic [32:0] i_inc_simplemultiply12_o;
    wire [32:0] i_inc_simplemultiply12_q;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer2_simplemultiply13_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer_simplemultiply6_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_select_63_b;
    wire [31:0] bgTrunc_i_add5_simplemultiply8_sel_x_b;
    wire [31:0] bgTrunc_i_add_simplemultiply2_sel_x_b;
    wire [31:0] bgTrunc_i_inc_simplemultiply12_sel_x_b;
    wire [63:0] bgTrunc_i_mul4_simplemultiply7_sel_x_in;
    wire [31:0] bgTrunc_i_mul4_simplemultiply7_sel_x_b;
    wire [64:0] i_arrayidx2_simplemultiply0_add_x_a;
    wire [64:0] i_arrayidx2_simplemultiply0_add_x_b;
    logic [64:0] i_arrayidx2_simplemultiply0_add_x_o;
    wire [64:0] i_arrayidx2_simplemultiply0_add_x_q;
    wire [127:0] i_arrayidx2_simplemultiply0_mult_extender_x_q;
    wire [60:0] i_arrayidx2_simplemultiply0_mult_multconst_x_q;
    wire [63:0] i_arrayidx2_simplemultiply0_trunc_sel_x_b;
    wire [63:0] i_arrayidx2_simplemultiply0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx73_simplemultiply0_add_x_a;
    wire [64:0] i_arrayidx73_simplemultiply0_add_x_b;
    logic [64:0] i_arrayidx73_simplemultiply0_add_x_o;
    wire [64:0] i_arrayidx73_simplemultiply0_add_x_q;
    wire [127:0] i_arrayidx73_simplemultiply0_mult_extender_x_q;
    wire [63:0] i_arrayidx73_simplemultiply0_trunc_sel_x_b;
    wire [63:0] i_arrayidx73_simplemultiply0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom6_simplemultiply9_sel_x_b;
    wire [63:0] i_idxprom_simplemultiply3_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [63:0] i_mul4_simplemultiply7_sums_join_0_q;
    wire [50:0] i_mul4_simplemultiply7_sums_align_1_q;
    wire [50:0] i_mul4_simplemultiply7_sums_align_1_qint;
    wire [64:0] i_mul4_simplemultiply7_sums_result_add_0_0_a;
    wire [64:0] i_mul4_simplemultiply7_sums_result_add_0_0_b;
    logic [64:0] i_mul4_simplemultiply7_sums_result_add_0_0_o;
    wire [64:0] i_mul4_simplemultiply7_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx2_simplemultiply0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx2_simplemultiply0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx2_simplemultiply0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx2_simplemultiply0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx2_simplemultiply0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx2_simplemultiply0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx2_simplemultiply0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx2_simplemultiply0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx73_simplemultiply0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx73_simplemultiply0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx73_simplemultiply0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx73_simplemultiply0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx73_simplemultiply0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx73_simplemultiply0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx73_simplemultiply0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx73_simplemultiply0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_q;
    wire [11:0] i_arrayidx2_simplemultiply0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx2_simplemultiply0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx2_simplemultiply0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx2_simplemultiply0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx2_simplemultiply0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx2_simplemultiply0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx2_simplemultiply0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx2_simplemultiply0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx73_simplemultiply0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx73_simplemultiply0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx73_simplemultiply0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx73_simplemultiply0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx73_simplemultiply0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx73_simplemultiply0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx73_simplemultiply0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx73_simplemultiply0_mult_x_im9_shift0_qint;
    wire i_mul4_simplemultiply7_im0_cma_reset;
    wire [13:0] i_mul4_simplemultiply7_im0_cma_a0;
    wire [13:0] i_mul4_simplemultiply7_im0_cma_c0;
    wire [27:0] i_mul4_simplemultiply7_im0_cma_s0;
    wire [27:0] i_mul4_simplemultiply7_im0_cma_qq;
    wire [27:0] i_mul4_simplemultiply7_im0_cma_q;
    wire i_mul4_simplemultiply7_im0_cma_ena0;
    wire i_mul4_simplemultiply7_im0_cma_ena1;
    wire i_mul4_simplemultiply7_im0_cma_ena2;
    wire i_mul4_simplemultiply7_im8_cma_reset;
    wire [17:0] i_mul4_simplemultiply7_im8_cma_a0;
    wire [17:0] i_mul4_simplemultiply7_im8_cma_c0;
    wire [35:0] i_mul4_simplemultiply7_im8_cma_s0;
    wire [35:0] i_mul4_simplemultiply7_im8_cma_qq;
    wire [35:0] i_mul4_simplemultiply7_im8_cma_q;
    wire i_mul4_simplemultiply7_im8_cma_ena0;
    wire i_mul4_simplemultiply7_im8_cma_ena1;
    wire i_mul4_simplemultiply7_im8_cma_ena2;
    wire i_mul4_simplemultiply7_ma3_cma_reset;
    wire [13:0] i_mul4_simplemultiply7_ma3_cma_a0;
    wire [17:0] i_mul4_simplemultiply7_ma3_cma_c0;
    wire [13:0] i_mul4_simplemultiply7_ma3_cma_a1;
    wire [17:0] i_mul4_simplemultiply7_ma3_cma_c1;
    wire [32:0] i_mul4_simplemultiply7_ma3_cma_s0;
    wire [32:0] i_mul4_simplemultiply7_ma3_cma_qq;
    wire [32:0] i_mul4_simplemultiply7_ma3_cma_q;
    wire i_mul4_simplemultiply7_ma3_cma_ena0;
    wire i_mul4_simplemultiply7_ma3_cma_ena1;
    wire i_mul4_simplemultiply7_ma3_cma_ena2;
    wire [13:0] i_mul4_simplemultiply7_bs2_merged_bit_select_b;
    wire [17:0] i_mul4_simplemultiply7_bs2_merged_bit_select_c;
    wire [9:0] i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_e;
    wire [13:0] i_mul4_simplemultiply7_bs1_merged_bit_select_b;
    wire [17:0] i_mul4_simplemultiply7_bs1_merged_bit_select_c;
    reg [31:0] redist0_sync_together29_aunroll_x_in_c0_eni4_1_tpl_1_q;
    reg [0:0] redist4_sync_together29_aunroll_x_in_c0_eni4_4_tpl_6_q;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_5_delay_3;
    reg [31:0] redist6_bgTrunc_i_mul4_simplemultiply7_sel_x_b_1_q;
    reg [31:0] redist7_bgTrunc_i_inc_simplemultiply12_sel_x_b_1_q;
    reg [31:0] redist8_bgTrunc_i_add_simplemultiply2_sel_x_b_1_q;
    reg [31:0] redist9_bgTrunc_i_add5_simplemultiply8_sel_x_b_1_q;
    reg [31:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_outputreg0_q;
    wire redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_reset0;
    wire [31:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_ia;
    wire [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_aa;
    wire [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_ab;
    wire [31:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_iq;
    wire [31:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_q;
    wire [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_q;
    (* preserve *) reg [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_i;
    reg [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_cmpReg_q;
    wire [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_notEnable_q;
    wire [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_sticky_ena_q;
    wire [0:0] redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_enaAnd_q;
    reg [31:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_outputreg0_q;
    wire redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_reset0;
    wire [31:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_ia;
    wire [1:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_aa;
    wire [1:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_ab;
    wire [31:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_iq;
    wire [31:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_q;
    wire [1:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i;
    (* preserve *) reg redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_eq;
    reg [1:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_wraddr_q;
    wire [1:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_last_q;
    wire [0:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmpReg_q;
    wire [0:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_notEnable_q;
    wire [0:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_sticky_ena_q;
    wire [0:0] redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_enaAnd_q;
    reg [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_outputreg0_q;
    wire redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_reset0;
    wire [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_ia;
    wire [1:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_aa;
    wire [1:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_ab;
    wire [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_iq;
    wire [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_q;
    wire [1:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i;
    (* preserve *) reg redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_eq;
    reg [1:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_wraddr_q;
    wire [1:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_last_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmpReg_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_notEnable_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_sticky_ena_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together29_aunroll_x_in_i_valid_5(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist5_sync_together29_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_1 <= redist5_sync_together29_aunroll_x_in_i_valid_5_delay_0;
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_2 <= redist5_sync_together29_aunroll_x_in_i_valid_5_delay_1;
            redist5_sync_together29_aunroll_x_in_i_valid_5_delay_3 <= redist5_sync_together29_aunroll_x_in_i_valid_5_delay_2;
            redist5_sync_together29_aunroll_x_in_i_valid_5_q <= redist5_sync_together29_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,74)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together29_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist4_sync_together29_aunroll_x_in_c0_eni4_4_tpl_6(DELAY,155)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together29_aunroll_x_in_c0_eni4_4_tpl_6 ( .xin(in_c0_eni4_4_tpl), .xout(redist4_sync_together29_aunroll_x_in_c0_eni4_4_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg4(REG,78)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist5_sync_together29_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer2_simplemultiply13(BLACKBOX,26)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    simpleMultiply_i_llvm_fpga_sync_buffer_iA000000Zfer2_simplemultiply0 thei_llvm_fpga_sync_buffer_i32_widtha_sync_buffer2_simplemultiply13 (
        .in_buffer_in(in_widthA),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer2_simplemultiply13_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp_simplemultiply14(COMPARE,20)@7
    assign i_cmp_simplemultiply14_a = $unsigned({{2{redist7_bgTrunc_i_inc_simplemultiply12_sel_x_b_1_q[31]}}, redist7_bgTrunc_i_inc_simplemultiply12_sel_x_b_1_q});
    assign i_cmp_simplemultiply14_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer2_simplemultiply13_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer2_simplemultiply13_out_buffer_out});
    assign i_cmp_simplemultiply14_o = $unsigned($signed(i_cmp_simplemultiply14_a) - $signed(i_cmp_simplemultiply14_b));
    assign i_cmp_simplemultiply14_n[0] = ~ (i_cmp_simplemultiply14_o[33]);

    // i_cmp7_guard_simplemultiply16(LOGICAL,19)@7
    assign i_cmp7_guard_simplemultiply16_q = i_cmp_simplemultiply14_n | redist4_sync_together29_aunroll_x_in_c0_eni4_4_tpl_6_q;

    // c_i32_122(CONSTANT,10)
    assign c_i32_122_q = $unsigned(32'b00000000000000000000000000000001);

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_notEnable(LOGICAL,166)
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_nor(LOGICAL,167)
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_nor_q = ~ (redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_notEnable_q | redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_sticky_ena_q);

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_cmpReg(REG,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_sticky_ena(REG,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_nor_q == 1'b1)
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_sticky_ena_q <= $unsigned(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_cmpReg_q);
        end
    end

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_enaAnd(LOGICAL,169)
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_enaAnd_q = redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_sticky_ena_q & VCC_q;

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt(COUNTER,163)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_i <= $unsigned(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_q = redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_i[0:0];

    // redist0_sync_together29_aunroll_x_in_c0_eni4_1_tpl_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together29_aunroll_x_in_c0_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together29_aunroll_x_in_c0_eni4_1_tpl_1_q <= $unsigned(in_c0_eni4_1_tpl);
        end
    end

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_wraddr(REG,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_wraddr_q <= $unsigned(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_q);
        end
    end

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem(DUALMEM,162)
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_ia = $unsigned(redist0_sync_together29_aunroll_x_in_c0_eni4_1_tpl_1_q);
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_aa = redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_wraddr_q;
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_ab = redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_rdcnt_q;
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_dmem (
        .clocken1(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_aa),
        .data_a(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_ab),
        .q_b(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_q = redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_iq[31:0];

    // redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_outputreg0(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_outputreg0_q <= $unsigned(redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_mem_q);
        end
    end

    // i_inc_simplemultiply12(ADD,25)@6
    assign i_inc_simplemultiply12_a = {1'b0, redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_outputreg0_q};
    assign i_inc_simplemultiply12_b = {1'b0, c_i32_122_q};
    assign i_inc_simplemultiply12_o = $unsigned(i_inc_simplemultiply12_a) + $unsigned(i_inc_simplemultiply12_b);
    assign i_inc_simplemultiply12_q = i_inc_simplemultiply12_o[32:0];

    // bgTrunc_i_inc_simplemultiply12_sel_x(BITSELECT,47)@6
    assign bgTrunc_i_inc_simplemultiply12_sel_x_b = i_inc_simplemultiply12_q[31:0];

    // redist7_bgTrunc_i_inc_simplemultiply12_sel_x_b_1(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_inc_simplemultiply12_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist7_bgTrunc_i_inc_simplemultiply12_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_simplemultiply12_sel_x_b);
        end
    end

    // i_arrayidx2_simplemultiply0_mult_multconst_x(CONSTANT,57)
    assign i_arrayidx2_simplemultiply0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_notEnable(LOGICAL,188)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_nor(LOGICAL,189)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_nor_q = ~ (redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_notEnable_q | redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_sticky_ena_q);

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_last(CONSTANT,185)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmp(LOGICAL,186)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmp_q = $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_last_q == redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmpReg(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmpReg_q <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmp_q);
        end
    end

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_sticky_ena(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_nor_q == 1'b1)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_sticky_ena_q <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_cmpReg_q);
        end
    end

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_enaAnd(LOGICAL,191)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_enaAnd_q = redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_sticky_ena_q & VCC_q;

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt(COUNTER,183)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i <= 2'd0;
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i == 2'd1)
            begin
                redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_q = redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_i[1:0];

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_wraddr(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_wraddr_q <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_q);
        end
    end

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem(DUALMEM,182)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_ia = $unsigned(in_c0_eni4_3_tpl);
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_aa = redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_wraddr_q;
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_ab = redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_rdcnt_q;
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_dmem (
        .clocken1(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_aa),
        .data_a(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_ab),
        .q_b(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_q = redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_iq[31:0];

    // redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_outputreg0(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_outputreg0_q <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_mem_q);
        end
    end

    // valid_fanout_reg2(REG,76)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer_simplemultiply6(BLACKBOX,27)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    simpleMultiply_i_llvm_fpga_sync_buffer_iA000001Zffer_simplemultiply0 thei_llvm_fpga_sync_buffer_i32_widthb_sync_buffer_simplemultiply6 (
        .in_buffer_in(in_widthB),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer_simplemultiply6_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul4_simplemultiply7_bs2_merged_bit_select(BITSELECT,147)@2
    assign i_mul4_simplemultiply7_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer_simplemultiply6_out_buffer_out[31:18];
    assign i_mul4_simplemultiply7_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer_simplemultiply6_out_buffer_out[17:0];

    // i_mul4_simplemultiply7_bs1_merged_bit_select(BITSELECT,150)@2
    assign i_mul4_simplemultiply7_bs1_merged_bit_select_b = redist0_sync_together29_aunroll_x_in_c0_eni4_1_tpl_1_q[31:18];
    assign i_mul4_simplemultiply7_bs1_merged_bit_select_c = redist0_sync_together29_aunroll_x_in_c0_eni4_1_tpl_1_q[17:0];

    // i_mul4_simplemultiply7_ma3_cma(CHAINMULTADD,146)@2 + 3
    assign i_mul4_simplemultiply7_ma3_cma_reset = ~ (resetn);
    assign i_mul4_simplemultiply7_ma3_cma_ena0 = 1'b1;
    assign i_mul4_simplemultiply7_ma3_cma_ena1 = i_mul4_simplemultiply7_ma3_cma_ena0;
    assign i_mul4_simplemultiply7_ma3_cma_ena2 = i_mul4_simplemultiply7_ma3_cma_ena0;

    assign i_mul4_simplemultiply7_ma3_cma_a0 = i_mul4_simplemultiply7_bs1_merged_bit_select_b;
    assign i_mul4_simplemultiply7_ma3_cma_c0 = i_mul4_simplemultiply7_bs2_merged_bit_select_c;
    assign i_mul4_simplemultiply7_ma3_cma_a1 = i_mul4_simplemultiply7_bs2_merged_bit_select_b;
    assign i_mul4_simplemultiply7_ma3_cma_c1 = i_mul4_simplemultiply7_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul4_simplemultiply7_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_simplemultiply7_ma3_cma_ena2, i_mul4_simplemultiply7_ma3_cma_ena1, i_mul4_simplemultiply7_ma3_cma_ena0 }),
        .aclr({ i_mul4_simplemultiply7_ma3_cma_reset, i_mul4_simplemultiply7_ma3_cma_reset }),
        .ay(i_mul4_simplemultiply7_ma3_cma_a1),
        .by(i_mul4_simplemultiply7_ma3_cma_a0),
        .ax(i_mul4_simplemultiply7_ma3_cma_c1),
        .bx(i_mul4_simplemultiply7_ma3_cma_c0),
        .resulta(i_mul4_simplemultiply7_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul4_simplemultiply7_ma3_cma_delay ( .xin(i_mul4_simplemultiply7_ma3_cma_s0), .xout(i_mul4_simplemultiply7_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_simplemultiply7_ma3_cma_q = $unsigned(i_mul4_simplemultiply7_ma3_cma_qq[32:0]);

    // i_mul4_simplemultiply7_sums_align_1(BITSHIFT,97)@5
    assign i_mul4_simplemultiply7_sums_align_1_qint = { i_mul4_simplemultiply7_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul4_simplemultiply7_sums_align_1_q = i_mul4_simplemultiply7_sums_align_1_qint[50:0];

    // i_mul4_simplemultiply7_im0_cma(CHAINMULTADD,144)@2 + 3
    assign i_mul4_simplemultiply7_im0_cma_reset = ~ (resetn);
    assign i_mul4_simplemultiply7_im0_cma_ena0 = 1'b1;
    assign i_mul4_simplemultiply7_im0_cma_ena1 = i_mul4_simplemultiply7_im0_cma_ena0;
    assign i_mul4_simplemultiply7_im0_cma_ena2 = i_mul4_simplemultiply7_im0_cma_ena0;

    assign i_mul4_simplemultiply7_im0_cma_a0 = i_mul4_simplemultiply7_bs1_merged_bit_select_b;
    assign i_mul4_simplemultiply7_im0_cma_c0 = i_mul4_simplemultiply7_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul4_simplemultiply7_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_simplemultiply7_im0_cma_ena2, i_mul4_simplemultiply7_im0_cma_ena1, i_mul4_simplemultiply7_im0_cma_ena0 }),
        .aclr({ i_mul4_simplemultiply7_im0_cma_reset, i_mul4_simplemultiply7_im0_cma_reset }),
        .ay(i_mul4_simplemultiply7_im0_cma_a0),
        .ax(i_mul4_simplemultiply7_im0_cma_c0),
        .resulta(i_mul4_simplemultiply7_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul4_simplemultiply7_im0_cma_delay ( .xin(i_mul4_simplemultiply7_im0_cma_s0), .xout(i_mul4_simplemultiply7_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_simplemultiply7_im0_cma_q = $unsigned(i_mul4_simplemultiply7_im0_cma_qq[27:0]);

    // i_mul4_simplemultiply7_im8_cma(CHAINMULTADD,145)@2 + 3
    assign i_mul4_simplemultiply7_im8_cma_reset = ~ (resetn);
    assign i_mul4_simplemultiply7_im8_cma_ena0 = 1'b1;
    assign i_mul4_simplemultiply7_im8_cma_ena1 = i_mul4_simplemultiply7_im8_cma_ena0;
    assign i_mul4_simplemultiply7_im8_cma_ena2 = i_mul4_simplemultiply7_im8_cma_ena0;

    assign i_mul4_simplemultiply7_im8_cma_a0 = i_mul4_simplemultiply7_bs1_merged_bit_select_c;
    assign i_mul4_simplemultiply7_im8_cma_c0 = i_mul4_simplemultiply7_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul4_simplemultiply7_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_simplemultiply7_im8_cma_ena2, i_mul4_simplemultiply7_im8_cma_ena1, i_mul4_simplemultiply7_im8_cma_ena0 }),
        .aclr({ i_mul4_simplemultiply7_im8_cma_reset, i_mul4_simplemultiply7_im8_cma_reset }),
        .ay(i_mul4_simplemultiply7_im8_cma_a0),
        .ax(i_mul4_simplemultiply7_im8_cma_c0),
        .resulta(i_mul4_simplemultiply7_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul4_simplemultiply7_im8_cma_delay ( .xin(i_mul4_simplemultiply7_im8_cma_s0), .xout(i_mul4_simplemultiply7_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_simplemultiply7_im8_cma_q = $unsigned(i_mul4_simplemultiply7_im8_cma_qq[35:0]);

    // i_mul4_simplemultiply7_sums_join_0(BITJOIN,96)@5
    assign i_mul4_simplemultiply7_sums_join_0_q = {i_mul4_simplemultiply7_im0_cma_q, i_mul4_simplemultiply7_im8_cma_q};

    // i_mul4_simplemultiply7_sums_result_add_0_0(ADD,99)@5
    assign i_mul4_simplemultiply7_sums_result_add_0_0_a = {1'b0, i_mul4_simplemultiply7_sums_join_0_q};
    assign i_mul4_simplemultiply7_sums_result_add_0_0_b = {14'b00000000000000, i_mul4_simplemultiply7_sums_align_1_q};
    assign i_mul4_simplemultiply7_sums_result_add_0_0_o = $unsigned(i_mul4_simplemultiply7_sums_result_add_0_0_a) + $unsigned(i_mul4_simplemultiply7_sums_result_add_0_0_b);
    assign i_mul4_simplemultiply7_sums_result_add_0_0_q = i_mul4_simplemultiply7_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul4_simplemultiply7_sel_x(BITSELECT,48)@5
    assign bgTrunc_i_mul4_simplemultiply7_sel_x_in = i_mul4_simplemultiply7_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul4_simplemultiply7_sel_x_b = bgTrunc_i_mul4_simplemultiply7_sel_x_in[31:0];

    // redist6_bgTrunc_i_mul4_simplemultiply7_sel_x_b_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul4_simplemultiply7_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_mul4_simplemultiply7_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul4_simplemultiply7_sel_x_b);
        end
    end

    // i_add5_simplemultiply8(ADD,11)@6
    assign i_add5_simplemultiply8_a = {1'b0, redist6_bgTrunc_i_mul4_simplemultiply7_sel_x_b_1_q};
    assign i_add5_simplemultiply8_b = {1'b0, redist3_sync_together29_aunroll_x_in_c0_eni4_3_tpl_5_outputreg0_q};
    assign i_add5_simplemultiply8_o = $unsigned(i_add5_simplemultiply8_a) + $unsigned(i_add5_simplemultiply8_b);
    assign i_add5_simplemultiply8_q = i_add5_simplemultiply8_o[32:0];

    // bgTrunc_i_add5_simplemultiply8_sel_x(BITSELECT,45)@6
    assign bgTrunc_i_add5_simplemultiply8_sel_x_b = i_add5_simplemultiply8_q[31:0];

    // redist9_bgTrunc_i_add5_simplemultiply8_sel_x_b_1(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_bgTrunc_i_add5_simplemultiply8_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist9_bgTrunc_i_add5_simplemultiply8_sel_x_b_1_q <= $unsigned(bgTrunc_i_add5_simplemultiply8_sel_x_b);
        end
    end

    // i_idxprom6_simplemultiply9_sel_x(BITSELECT,70)@7
    assign i_idxprom6_simplemultiply9_sel_x_b = $unsigned({{32{redist9_bgTrunc_i_add5_simplemultiply8_sel_x_b_1_q[31]}}, redist9_bgTrunc_i_add5_simplemultiply8_sel_x_b_1_q[31:0]});

    // i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select(BITSELECT,148)@7
    assign i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_b = i_idxprom6_simplemultiply9_sel_x_b[63:54];
    assign i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_c = i_idxprom6_simplemultiply9_sel_x_b[53:36];
    assign i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_d = i_idxprom6_simplemultiply9_sel_x_b[35:18];
    assign i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_e = i_idxprom6_simplemultiply9_sel_x_b[17:0];

    // i_arrayidx73_simplemultiply0_mult_x_im0_shift0(BITSHIFT,140)@7
    assign i_arrayidx73_simplemultiply0_mult_x_im0_shift0_qint = { i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx73_simplemultiply0_mult_x_im0_shift0_q = i_arrayidx73_simplemultiply0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx73_simplemultiply0_mult_x_sums_align_3(BITSHIFT,133)@7
    assign i_arrayidx73_simplemultiply0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx73_simplemultiply0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx73_simplemultiply0_mult_x_sums_align_3_q = i_arrayidx73_simplemultiply0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx73_simplemultiply0_mult_x_im6_shift0(BITSHIFT,142)@7
    assign i_arrayidx73_simplemultiply0_mult_x_im6_shift0_qint = { i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx73_simplemultiply0_mult_x_im6_shift0_q = i_arrayidx73_simplemultiply0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx73_simplemultiply0_mult_x_sums_align_2(BITSHIFT,132)@7
    assign i_arrayidx73_simplemultiply0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx73_simplemultiply0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx73_simplemultiply0_mult_x_sums_align_2_q = i_arrayidx73_simplemultiply0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx73_simplemultiply0_mult_x_sums_join_4(BITJOIN,134)@7
    assign i_arrayidx73_simplemultiply0_mult_x_sums_join_4_q = {i_arrayidx73_simplemultiply0_mult_x_sums_align_3_q, i_arrayidx73_simplemultiply0_mult_x_sums_align_2_q};

    // i_arrayidx73_simplemultiply0_mult_x_im3_shift0(BITSHIFT,141)@7
    assign i_arrayidx73_simplemultiply0_mult_x_im3_shift0_qint = { i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx73_simplemultiply0_mult_x_im3_shift0_q = i_arrayidx73_simplemultiply0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx73_simplemultiply0_mult_x_sums_align_0(BITSHIFT,130)@7
    assign i_arrayidx73_simplemultiply0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx73_simplemultiply0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx73_simplemultiply0_mult_x_sums_align_0_q = i_arrayidx73_simplemultiply0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx73_simplemultiply0_mult_x_im9_shift0(BITSHIFT,143)@7
    assign i_arrayidx73_simplemultiply0_mult_x_im9_shift0_qint = { i_arrayidx73_simplemultiply0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx73_simplemultiply0_mult_x_im9_shift0_q = i_arrayidx73_simplemultiply0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx73_simplemultiply0_mult_x_sums_join_1(BITJOIN,131)@7
    assign i_arrayidx73_simplemultiply0_mult_x_sums_join_1_q = {i_arrayidx73_simplemultiply0_mult_x_sums_align_0_q, {1'b0, i_arrayidx73_simplemultiply0_mult_x_im9_shift0_q}};

    // i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0(ADD,135)@7
    assign i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx73_simplemultiply0_mult_x_sums_join_1_q};
    assign i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx73_simplemultiply0_mult_x_sums_join_4_q};
    assign i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_q = i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx73_simplemultiply0_mult_extender_x(BITJOIN,66)@7
    assign i_arrayidx73_simplemultiply0_mult_extender_x_q = {i_arrayidx2_simplemultiply0_mult_multconst_x_q, i_arrayidx73_simplemultiply0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx73_simplemultiply0_trunc_sel_x(BITSELECT,68)@7
    assign i_arrayidx73_simplemultiply0_trunc_sel_x_b = i_arrayidx73_simplemultiply0_mult_extender_x_q[63:0];

    // valid_fanout_reg3(REG,77)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist5_sync_together29_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10(BLACKBOX,32)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    simpleMultiply_i_llvm_fpga_sync_buffer_pA000002Zffer_simplemultiply0 thei_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10 (
        .in_buffer_in(in_inputB),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_select_63(BITSELECT,35)@7
    assign i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_const_9(CONSTANT,29)
    assign i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_join(BITJOIN,34)@7
    assign i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_const_9_q};

    // i_arrayidx73_simplemultiply0_add_x(ADD,60)@7
    assign i_arrayidx73_simplemultiply0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_inputb_sync_buffer_simplemultiply10_vt_join_q};
    assign i_arrayidx73_simplemultiply0_add_x_b = {1'b0, i_arrayidx73_simplemultiply0_trunc_sel_x_b};
    assign i_arrayidx73_simplemultiply0_add_x_o = $unsigned(i_arrayidx73_simplemultiply0_add_x_a) + $unsigned(i_arrayidx73_simplemultiply0_add_x_b);
    assign i_arrayidx73_simplemultiply0_add_x_q = i_arrayidx73_simplemultiply0_add_x_o[64:0];

    // i_arrayidx73_simplemultiply0_dupName_0_trunc_sel_x(BITSELECT,69)@7
    assign i_arrayidx73_simplemultiply0_dupName_0_trunc_sel_x_b = i_arrayidx73_simplemultiply0_add_x_q[63:0];

    // i_arrayidx73_simplemultiply11_vt_select_63(BITSELECT,18)@7
    assign i_arrayidx73_simplemultiply11_vt_select_63_b = i_arrayidx73_simplemultiply0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_simplemultiply5_vt_const_1(CONSTANT,13)
    assign i_arrayidx2_simplemultiply5_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx73_simplemultiply11_vt_join(BITJOIN,17)@7
    assign i_arrayidx73_simplemultiply11_vt_join_q = {i_arrayidx73_simplemultiply11_vt_select_63_b, i_arrayidx2_simplemultiply5_vt_const_1_q};

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_notEnable(LOGICAL,177)
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_nor(LOGICAL,178)
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_nor_q = ~ (redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_notEnable_q | redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_sticky_ena_q);

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_last(CONSTANT,174)
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmp(LOGICAL,175)
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmp_q = $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_last_q == redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmpReg(REG,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmpReg_q <= $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmp_q);
        end
    end

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_sticky_ena(REG,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_nor_q == 1'b1)
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_sticky_ena_q <= $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_cmpReg_q);
        end
    end

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_enaAnd(LOGICAL,180)
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_enaAnd_q = redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_sticky_ena_q & VCC_q;

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt(COUNTER,172)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i <= 2'd0;
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i == 2'd1)
            begin
                redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i <= $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i <= $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_q = redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_i[1:0];

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_wraddr(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_wraddr_q <= $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_q);
        end
    end

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem(DUALMEM,171)
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_ia = $unsigned(in_c0_eni4_2_tpl);
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_aa = redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_wraddr_q;
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_ab = redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_rdcnt_q;
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_dmem (
        .clocken1(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_aa),
        .data_a(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_ab),
        .q_b(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_q = redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_iq[31:0];

    // redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_outputreg0(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_outputreg0_q <= $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_mem_q);
        end
    end

    // i_add_simplemultiply2(ADD,12)@6
    assign i_add_simplemultiply2_a = {1'b0, redist1_sync_together29_aunroll_x_in_c0_eni4_1_tpl_5_outputreg0_q};
    assign i_add_simplemultiply2_b = {1'b0, redist2_sync_together29_aunroll_x_in_c0_eni4_2_tpl_5_outputreg0_q};
    assign i_add_simplemultiply2_o = $unsigned(i_add_simplemultiply2_a) + $unsigned(i_add_simplemultiply2_b);
    assign i_add_simplemultiply2_q = i_add_simplemultiply2_o[32:0];

    // bgTrunc_i_add_simplemultiply2_sel_x(BITSELECT,46)@6
    assign bgTrunc_i_add_simplemultiply2_sel_x_b = i_add_simplemultiply2_q[31:0];

    // redist8_bgTrunc_i_add_simplemultiply2_sel_x_b_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_add_simplemultiply2_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_add_simplemultiply2_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_simplemultiply2_sel_x_b);
        end
    end

    // i_idxprom_simplemultiply3_sel_x(BITSELECT,71)@7
    assign i_idxprom_simplemultiply3_sel_x_b = $unsigned({{32{redist8_bgTrunc_i_add_simplemultiply2_sel_x_b_1_q[31]}}, redist8_bgTrunc_i_add_simplemultiply2_sel_x_b_1_q[31:0]});

    // i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select(BITSELECT,149)@7
    assign i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_b = i_idxprom_simplemultiply3_sel_x_b[63:54];
    assign i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_c = i_idxprom_simplemultiply3_sel_x_b[53:36];
    assign i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_d = i_idxprom_simplemultiply3_sel_x_b[35:18];
    assign i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_e = i_idxprom_simplemultiply3_sel_x_b[17:0];

    // i_arrayidx2_simplemultiply0_mult_x_im0_shift0(BITSHIFT,136)@7
    assign i_arrayidx2_simplemultiply0_mult_x_im0_shift0_qint = { i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx2_simplemultiply0_mult_x_im0_shift0_q = i_arrayidx2_simplemultiply0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx2_simplemultiply0_mult_x_sums_align_3(BITSHIFT,115)@7
    assign i_arrayidx2_simplemultiply0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx2_simplemultiply0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx2_simplemultiply0_mult_x_sums_align_3_q = i_arrayidx2_simplemultiply0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx2_simplemultiply0_mult_x_im6_shift0(BITSHIFT,138)@7
    assign i_arrayidx2_simplemultiply0_mult_x_im6_shift0_qint = { i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx2_simplemultiply0_mult_x_im6_shift0_q = i_arrayidx2_simplemultiply0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx2_simplemultiply0_mult_x_sums_align_2(BITSHIFT,114)@7
    assign i_arrayidx2_simplemultiply0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx2_simplemultiply0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx2_simplemultiply0_mult_x_sums_align_2_q = i_arrayidx2_simplemultiply0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx2_simplemultiply0_mult_x_sums_join_4(BITJOIN,116)@7
    assign i_arrayidx2_simplemultiply0_mult_x_sums_join_4_q = {i_arrayidx2_simplemultiply0_mult_x_sums_align_3_q, i_arrayidx2_simplemultiply0_mult_x_sums_align_2_q};

    // i_arrayidx2_simplemultiply0_mult_x_im3_shift0(BITSHIFT,137)@7
    assign i_arrayidx2_simplemultiply0_mult_x_im3_shift0_qint = { i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx2_simplemultiply0_mult_x_im3_shift0_q = i_arrayidx2_simplemultiply0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx2_simplemultiply0_mult_x_sums_align_0(BITSHIFT,112)@7
    assign i_arrayidx2_simplemultiply0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx2_simplemultiply0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx2_simplemultiply0_mult_x_sums_align_0_q = i_arrayidx2_simplemultiply0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx2_simplemultiply0_mult_x_im9_shift0(BITSHIFT,139)@7
    assign i_arrayidx2_simplemultiply0_mult_x_im9_shift0_qint = { i_arrayidx2_simplemultiply0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx2_simplemultiply0_mult_x_im9_shift0_q = i_arrayidx2_simplemultiply0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx2_simplemultiply0_mult_x_sums_join_1(BITJOIN,113)@7
    assign i_arrayidx2_simplemultiply0_mult_x_sums_join_1_q = {i_arrayidx2_simplemultiply0_mult_x_sums_align_0_q, {1'b0, i_arrayidx2_simplemultiply0_mult_x_im9_shift0_q}};

    // i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0(ADD,117)@7
    assign i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx2_simplemultiply0_mult_x_sums_join_1_q};
    assign i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx2_simplemultiply0_mult_x_sums_join_4_q};
    assign i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_q = i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx2_simplemultiply0_mult_extender_x(BITJOIN,56)@7
    assign i_arrayidx2_simplemultiply0_mult_extender_x_q = {i_arrayidx2_simplemultiply0_mult_multconst_x_q, i_arrayidx2_simplemultiply0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx2_simplemultiply0_trunc_sel_x(BITSELECT,58)@7
    assign i_arrayidx2_simplemultiply0_trunc_sel_x_b = i_arrayidx2_simplemultiply0_mult_extender_x_q[63:0];

    // valid_fanout_reg1(REG,75)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist5_sync_together29_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4(BLACKBOX,28)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    simpleMultiply_i_llvm_fpga_sync_buffer_pA000001Zffer_simplemultiply0 thei_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4 (
        .in_buffer_in(in_inputA),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_select_63(BITSELECT,31)@7
    assign i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_join(BITJOIN,30)@7
    assign i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_const_9_q};

    // i_arrayidx2_simplemultiply0_add_x(ADD,50)@7
    assign i_arrayidx2_simplemultiply0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_inputa_sync_buffer_simplemultiply4_vt_join_q};
    assign i_arrayidx2_simplemultiply0_add_x_b = {1'b0, i_arrayidx2_simplemultiply0_trunc_sel_x_b};
    assign i_arrayidx2_simplemultiply0_add_x_o = $unsigned(i_arrayidx2_simplemultiply0_add_x_a) + $unsigned(i_arrayidx2_simplemultiply0_add_x_b);
    assign i_arrayidx2_simplemultiply0_add_x_q = i_arrayidx2_simplemultiply0_add_x_o[64:0];

    // i_arrayidx2_simplemultiply0_dupName_0_trunc_sel_x(BITSELECT,59)@7
    assign i_arrayidx2_simplemultiply0_dupName_0_trunc_sel_x_b = i_arrayidx2_simplemultiply0_add_x_q[63:0];

    // i_arrayidx2_simplemultiply5_vt_select_63(BITSELECT,15)@7
    assign i_arrayidx2_simplemultiply5_vt_select_63_b = i_arrayidx2_simplemultiply0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_simplemultiply5_vt_join(BITJOIN,14)@7
    assign i_arrayidx2_simplemultiply5_vt_join_q = {i_arrayidx2_simplemultiply5_vt_select_63_b, i_arrayidx2_simplemultiply5_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,72)@7
    assign out_c0_exi429_0_tpl = GND_q;
    assign out_c0_exi429_1_tpl = i_arrayidx2_simplemultiply5_vt_join_q;
    assign out_c0_exi429_2_tpl = i_arrayidx73_simplemultiply11_vt_join_q;
    assign out_c0_exi429_3_tpl = redist7_bgTrunc_i_inc_simplemultiply12_sel_x_b_1_q;
    assign out_c0_exi429_4_tpl = i_cmp7_guard_simplemultiply16_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_simpleMultiply0 = GND_q;

endmodule
