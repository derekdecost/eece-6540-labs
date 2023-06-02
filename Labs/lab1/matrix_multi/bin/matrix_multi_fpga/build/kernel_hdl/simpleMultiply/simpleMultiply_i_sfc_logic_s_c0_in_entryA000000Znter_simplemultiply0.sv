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

// SystemVerilog created from simpleMultiply_i_sfc_logic_s_c0_in_entryA000000Znter_simplemultiply0
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_i_sfc_logic_s_c0_in_entryA000000Znter_simplemultiply0 (
    input wire [31:0] in_widthA,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [31:0] out_c0_exi5_1_tpl,
    output wire [31:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [31:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_simpleMultiply0,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [63:0] in_c0_eni2_1_tpl,
    input wire [63:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [33:0] i_cmp19_simplemultiply5_a;
    wire [33:0] i_cmp19_simplemultiply5_b;
    logic [33:0] i_cmp19_simplemultiply5_o;
    wire [0:0] i_cmp19_simplemultiply5_c;
    wire [0:0] i_cmp7_neg_simplemultiply9_q;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer1_simplemultiply7_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer_simplemultiply4_out_buffer_out;
    wire [63:0] bgTrunc_i_mul_simplemultiply8_sel_x_in;
    wire [31:0] bgTrunc_i_mul_simplemultiply8_sel_x_b;
    wire [31:0] c_i32_013_recast_x_q;
    wire [31:0] i_conv2_simplemultiply3_sel_x_b;
    wire [31:0] i_conv_simplemultiply2_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [63:0] i_mul_simplemultiply8_sums_join_0_q;
    wire [50:0] i_mul_simplemultiply8_sums_align_1_q;
    wire [50:0] i_mul_simplemultiply8_sums_align_1_qint;
    wire [64:0] i_mul_simplemultiply8_sums_result_add_0_0_a;
    wire [64:0] i_mul_simplemultiply8_sums_result_add_0_0_b;
    logic [64:0] i_mul_simplemultiply8_sums_result_add_0_0_o;
    wire [64:0] i_mul_simplemultiply8_sums_result_add_0_0_q;
    wire i_mul_simplemultiply8_im0_cma_reset;
    wire [13:0] i_mul_simplemultiply8_im0_cma_a0;
    wire [13:0] i_mul_simplemultiply8_im0_cma_c0;
    wire [27:0] i_mul_simplemultiply8_im0_cma_s0;
    wire [27:0] i_mul_simplemultiply8_im0_cma_qq;
    wire [27:0] i_mul_simplemultiply8_im0_cma_q;
    wire i_mul_simplemultiply8_im0_cma_ena0;
    wire i_mul_simplemultiply8_im0_cma_ena1;
    wire i_mul_simplemultiply8_im0_cma_ena2;
    wire i_mul_simplemultiply8_im8_cma_reset;
    wire [17:0] i_mul_simplemultiply8_im8_cma_a0;
    wire [17:0] i_mul_simplemultiply8_im8_cma_c0;
    wire [35:0] i_mul_simplemultiply8_im8_cma_s0;
    wire [35:0] i_mul_simplemultiply8_im8_cma_qq;
    wire [35:0] i_mul_simplemultiply8_im8_cma_q;
    wire i_mul_simplemultiply8_im8_cma_ena0;
    wire i_mul_simplemultiply8_im8_cma_ena1;
    wire i_mul_simplemultiply8_im8_cma_ena2;
    wire i_mul_simplemultiply8_ma3_cma_reset;
    wire [13:0] i_mul_simplemultiply8_ma3_cma_a0;
    wire [17:0] i_mul_simplemultiply8_ma3_cma_c0;
    wire [13:0] i_mul_simplemultiply8_ma3_cma_a1;
    wire [17:0] i_mul_simplemultiply8_ma3_cma_c1;
    wire [32:0] i_mul_simplemultiply8_ma3_cma_s0;
    wire [32:0] i_mul_simplemultiply8_ma3_cma_qq;
    wire [32:0] i_mul_simplemultiply8_ma3_cma_q;
    wire i_mul_simplemultiply8_ma3_cma_ena0;
    wire i_mul_simplemultiply8_ma3_cma_ena1;
    wire i_mul_simplemultiply8_ma3_cma_ena2;
    wire [13:0] i_mul_simplemultiply8_bs2_merged_bit_select_b;
    wire [17:0] i_mul_simplemultiply8_bs2_merged_bit_select_c;
    wire [13:0] i_mul_simplemultiply8_bs1_merged_bit_select_b;
    wire [17:0] i_mul_simplemultiply8_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together17_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist0_sync_together17_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist0_sync_together17_aunroll_x_in_i_valid_3_delay_1;
    reg [31:0] redist1_i_conv_simplemultiply2_sel_x_b_1_q;
    wire redist2_i_conv_simplemultiply2_sel_x_b_4_mem_reset0;
    wire [31:0] redist2_i_conv_simplemultiply2_sel_x_b_4_mem_ia;
    wire [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_mem_aa;
    wire [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_mem_ab;
    wire [31:0] redist2_i_conv_simplemultiply2_sel_x_b_4_mem_iq;
    wire [31:0] redist2_i_conv_simplemultiply2_sel_x_b_4_mem_q;
    wire [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_i;
    reg [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_cmpReg_q;
    wire [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_notEnable_q;
    wire [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist2_i_conv_simplemultiply2_sel_x_b_4_enaAnd_q;
    wire redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_reset0;
    wire [31:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_ia;
    wire [1:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_aa;
    wire [1:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_ab;
    wire [31:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_iq;
    wire [31:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_q;
    wire [1:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [1:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i;
    (* preserve *) reg redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_eq;
    reg [1:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_wraddr_q;
    wire [1:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_last_q;
    wire [0:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_cmp_q;
    (* dont_merge *) reg [0:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_cmpReg_q;
    wire [0:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_notEnable_q;
    wire [0:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist3_i_conv2_simplemultiply3_sel_x_b_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together17_aunroll_x_in_i_valid_3(DELAY,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together17_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist0_sync_together17_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist0_sync_together17_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist0_sync_together17_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together17_aunroll_x_in_i_valid_3_delay_1 <= redist0_sync_together17_aunroll_x_in_i_valid_3_delay_0;
            redist0_sync_together17_aunroll_x_in_i_valid_3_q <= redist0_sync_together17_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,22)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist0_sync_together17_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_cmp7_neg_simplemultiply9(LOGICAL,7)@5
    assign i_cmp7_neg_simplemultiply9_q = i_cmp19_simplemultiply5_c ^ VCC_q;

    // valid_fanout_reg2(REG,24)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer1_simplemultiply7(BLACKBOX,10)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    simpleMultiply_i_llvm_fpga_sync_buffer_iA000000Zfer1_simplemultiply0 thei_llvm_fpga_sync_buffer_i32_widtha_sync_buffer1_simplemultiply7 (
        .in_buffer_in(in_widthA),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer1_simplemultiply7_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_simplemultiply8_bs2_merged_bit_select(BITSELECT,46)@2
    assign i_mul_simplemultiply8_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer1_simplemultiply7_out_buffer_out[31:18];
    assign i_mul_simplemultiply8_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer1_simplemultiply7_out_buffer_out[17:0];

    // i_conv_simplemultiply2_sel_x(BITSELECT,19)@1
    assign i_conv_simplemultiply2_sel_x_b = in_c0_eni2_1_tpl[31:0];

    // redist1_i_conv_simplemultiply2_sel_x_b_1(DELAY,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_conv_simplemultiply2_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist1_i_conv_simplemultiply2_sel_x_b_1_q <= $unsigned(i_conv_simplemultiply2_sel_x_b);
        end
    end

    // i_mul_simplemultiply8_bs1_merged_bit_select(BITSELECT,47)@2
    assign i_mul_simplemultiply8_bs1_merged_bit_select_b = redist1_i_conv_simplemultiply2_sel_x_b_1_q[31:18];
    assign i_mul_simplemultiply8_bs1_merged_bit_select_c = redist1_i_conv_simplemultiply2_sel_x_b_1_q[17:0];

    // i_mul_simplemultiply8_ma3_cma(CHAINMULTADD,45)@2 + 3
    assign i_mul_simplemultiply8_ma3_cma_reset = ~ (resetn);
    assign i_mul_simplemultiply8_ma3_cma_ena0 = 1'b1;
    assign i_mul_simplemultiply8_ma3_cma_ena1 = i_mul_simplemultiply8_ma3_cma_ena0;
    assign i_mul_simplemultiply8_ma3_cma_ena2 = i_mul_simplemultiply8_ma3_cma_ena0;

    assign i_mul_simplemultiply8_ma3_cma_a0 = i_mul_simplemultiply8_bs1_merged_bit_select_b;
    assign i_mul_simplemultiply8_ma3_cma_c0 = i_mul_simplemultiply8_bs2_merged_bit_select_c;
    assign i_mul_simplemultiply8_ma3_cma_a1 = i_mul_simplemultiply8_bs2_merged_bit_select_b;
    assign i_mul_simplemultiply8_ma3_cma_c1 = i_mul_simplemultiply8_bs1_merged_bit_select_c;
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
    ) i_mul_simplemultiply8_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_simplemultiply8_ma3_cma_ena2, i_mul_simplemultiply8_ma3_cma_ena1, i_mul_simplemultiply8_ma3_cma_ena0 }),
        .aclr({ i_mul_simplemultiply8_ma3_cma_reset, i_mul_simplemultiply8_ma3_cma_reset }),
        .ay(i_mul_simplemultiply8_ma3_cma_a1),
        .by(i_mul_simplemultiply8_ma3_cma_a0),
        .ax(i_mul_simplemultiply8_ma3_cma_c1),
        .bx(i_mul_simplemultiply8_ma3_cma_c0),
        .resulta(i_mul_simplemultiply8_ma3_cma_s0),
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
    i_mul_simplemultiply8_ma3_cma_delay ( .xin(i_mul_simplemultiply8_ma3_cma_s0), .xout(i_mul_simplemultiply8_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_simplemultiply8_ma3_cma_q = $unsigned(i_mul_simplemultiply8_ma3_cma_qq[32:0]);

    // i_mul_simplemultiply8_sums_align_1(BITSHIFT,40)@5
    assign i_mul_simplemultiply8_sums_align_1_qint = { i_mul_simplemultiply8_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_simplemultiply8_sums_align_1_q = i_mul_simplemultiply8_sums_align_1_qint[50:0];

    // i_mul_simplemultiply8_im0_cma(CHAINMULTADD,43)@2 + 3
    assign i_mul_simplemultiply8_im0_cma_reset = ~ (resetn);
    assign i_mul_simplemultiply8_im0_cma_ena0 = 1'b1;
    assign i_mul_simplemultiply8_im0_cma_ena1 = i_mul_simplemultiply8_im0_cma_ena0;
    assign i_mul_simplemultiply8_im0_cma_ena2 = i_mul_simplemultiply8_im0_cma_ena0;

    assign i_mul_simplemultiply8_im0_cma_a0 = i_mul_simplemultiply8_bs1_merged_bit_select_b;
    assign i_mul_simplemultiply8_im0_cma_c0 = i_mul_simplemultiply8_bs2_merged_bit_select_b;
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
    ) i_mul_simplemultiply8_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_simplemultiply8_im0_cma_ena2, i_mul_simplemultiply8_im0_cma_ena1, i_mul_simplemultiply8_im0_cma_ena0 }),
        .aclr({ i_mul_simplemultiply8_im0_cma_reset, i_mul_simplemultiply8_im0_cma_reset }),
        .ay(i_mul_simplemultiply8_im0_cma_a0),
        .ax(i_mul_simplemultiply8_im0_cma_c0),
        .resulta(i_mul_simplemultiply8_im0_cma_s0),
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
    i_mul_simplemultiply8_im0_cma_delay ( .xin(i_mul_simplemultiply8_im0_cma_s0), .xout(i_mul_simplemultiply8_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_simplemultiply8_im0_cma_q = $unsigned(i_mul_simplemultiply8_im0_cma_qq[27:0]);

    // i_mul_simplemultiply8_im8_cma(CHAINMULTADD,44)@2 + 3
    assign i_mul_simplemultiply8_im8_cma_reset = ~ (resetn);
    assign i_mul_simplemultiply8_im8_cma_ena0 = 1'b1;
    assign i_mul_simplemultiply8_im8_cma_ena1 = i_mul_simplemultiply8_im8_cma_ena0;
    assign i_mul_simplemultiply8_im8_cma_ena2 = i_mul_simplemultiply8_im8_cma_ena0;

    assign i_mul_simplemultiply8_im8_cma_a0 = i_mul_simplemultiply8_bs1_merged_bit_select_c;
    assign i_mul_simplemultiply8_im8_cma_c0 = i_mul_simplemultiply8_bs2_merged_bit_select_c;
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
    ) i_mul_simplemultiply8_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_simplemultiply8_im8_cma_ena2, i_mul_simplemultiply8_im8_cma_ena1, i_mul_simplemultiply8_im8_cma_ena0 }),
        .aclr({ i_mul_simplemultiply8_im8_cma_reset, i_mul_simplemultiply8_im8_cma_reset }),
        .ay(i_mul_simplemultiply8_im8_cma_a0),
        .ax(i_mul_simplemultiply8_im8_cma_c0),
        .resulta(i_mul_simplemultiply8_im8_cma_s0),
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
    i_mul_simplemultiply8_im8_cma_delay ( .xin(i_mul_simplemultiply8_im8_cma_s0), .xout(i_mul_simplemultiply8_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_simplemultiply8_im8_cma_q = $unsigned(i_mul_simplemultiply8_im8_cma_qq[35:0]);

    // i_mul_simplemultiply8_sums_join_0(BITJOIN,39)@5
    assign i_mul_simplemultiply8_sums_join_0_q = {i_mul_simplemultiply8_im0_cma_q, i_mul_simplemultiply8_im8_cma_q};

    // i_mul_simplemultiply8_sums_result_add_0_0(ADD,42)@5
    assign i_mul_simplemultiply8_sums_result_add_0_0_a = {1'b0, i_mul_simplemultiply8_sums_join_0_q};
    assign i_mul_simplemultiply8_sums_result_add_0_0_b = {14'b00000000000000, i_mul_simplemultiply8_sums_align_1_q};
    assign i_mul_simplemultiply8_sums_result_add_0_0_o = $unsigned(i_mul_simplemultiply8_sums_result_add_0_0_a) + $unsigned(i_mul_simplemultiply8_sums_result_add_0_0_b);
    assign i_mul_simplemultiply8_sums_result_add_0_0_q = i_mul_simplemultiply8_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_simplemultiply8_sel_x(BITSELECT,16)@5
    assign bgTrunc_i_mul_simplemultiply8_sel_x_in = i_mul_simplemultiply8_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_simplemultiply8_sel_x_b = bgTrunc_i_mul_simplemultiply8_sel_x_in[31:0];

    // valid_fanout_reg1(REG,23)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist0_sync_together17_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer_simplemultiply4(BLACKBOX,11)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    simpleMultiply_i_llvm_fpga_sync_buffer_iA000000Zffer_simplemultiply0 thei_llvm_fpga_sync_buffer_i32_widtha_sync_buffer_simplemultiply4 (
        .in_buffer_in(in_widthA),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer_simplemultiply4_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_013_recast_x(CONSTANT,17)
    assign c_i32_013_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp19_simplemultiply5(COMPARE,6)@5
    assign i_cmp19_simplemultiply5_a = $unsigned({{2{c_i32_013_recast_x_q[31]}}, c_i32_013_recast_x_q});
    assign i_cmp19_simplemultiply5_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer_simplemultiply4_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_widtha_sync_buffer_simplemultiply4_out_buffer_out});
    assign i_cmp19_simplemultiply5_o = $unsigned($signed(i_cmp19_simplemultiply5_a) - $signed(i_cmp19_simplemultiply5_b));
    assign i_cmp19_simplemultiply5_c[0] = i_cmp19_simplemultiply5_o[33];

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_notEnable(LOGICAL,66)
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_nor(LOGICAL,67)
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_nor_q = ~ (redist3_i_conv2_simplemultiply3_sel_x_b_4_notEnable_q | redist3_i_conv2_simplemultiply3_sel_x_b_4_sticky_ena_q);

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_last(CONSTANT,63)
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_last_q = $unsigned(2'b01);

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_cmp(LOGICAL,64)
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_cmp_q = $unsigned(redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_last_q == redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_cmpReg(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv2_simplemultiply3_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_i_conv2_simplemultiply3_sel_x_b_4_cmpReg_q <= $unsigned(redist3_i_conv2_simplemultiply3_sel_x_b_4_cmp_q);
        end
    end

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_sticky_ena(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv2_simplemultiply3_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_i_conv2_simplemultiply3_sel_x_b_4_nor_q == 1'b1)
        begin
            redist3_i_conv2_simplemultiply3_sel_x_b_4_sticky_ena_q <= $unsigned(redist3_i_conv2_simplemultiply3_sel_x_b_4_cmpReg_q);
        end
    end

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_enaAnd(LOGICAL,69)
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_enaAnd_q = redist3_i_conv2_simplemultiply3_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt(COUNTER,61)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i <= 2'd0;
            redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i == 2'd1)
            begin
                redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_eq <= 1'b0;
            end
            if (redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_eq == 1'b1)
            begin
                redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i <= $unsigned(redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i <= $unsigned(redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_q = redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_i[1:0];

    // i_conv2_simplemultiply3_sel_x(BITSELECT,18)@1
    assign i_conv2_simplemultiply3_sel_x_b = in_c0_eni2_2_tpl[31:0];

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_wraddr(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv2_simplemultiply3_sel_x_b_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist3_i_conv2_simplemultiply3_sel_x_b_4_wraddr_q <= $unsigned(redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_q);
        end
    end

    // redist3_i_conv2_simplemultiply3_sel_x_b_4_mem(DUALMEM,60)
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_ia = $unsigned(i_conv2_simplemultiply3_sel_x_b);
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_aa = redist3_i_conv2_simplemultiply3_sel_x_b_4_wraddr_q;
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_ab = redist3_i_conv2_simplemultiply3_sel_x_b_4_rdcnt_q;
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_dmem (
        .clocken1(redist3_i_conv2_simplemultiply3_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_aa),
        .data_a(redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_ab),
        .q_b(redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_iq),
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
    assign redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_q = redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_iq[31:0];

    // redist2_i_conv_simplemultiply2_sel_x_b_4_notEnable(LOGICAL,56)
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_i_conv_simplemultiply2_sel_x_b_4_nor(LOGICAL,57)
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_nor_q = ~ (redist2_i_conv_simplemultiply2_sel_x_b_4_notEnable_q | redist2_i_conv_simplemultiply2_sel_x_b_4_sticky_ena_q);

    // redist2_i_conv_simplemultiply2_sel_x_b_4_cmpReg(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist2_i_conv_simplemultiply2_sel_x_b_4_sticky_ena(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_i_conv_simplemultiply2_sel_x_b_4_nor_q == 1'b1)
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_sticky_ena_q <= $unsigned(redist2_i_conv_simplemultiply2_sel_x_b_4_cmpReg_q);
        end
    end

    // redist2_i_conv_simplemultiply2_sel_x_b_4_enaAnd(LOGICAL,59)
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_enaAnd_q = redist2_i_conv_simplemultiply2_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt(COUNTER,53)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_i <= $unsigned(redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_q = redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_i[0:0];

    // redist2_i_conv_simplemultiply2_sel_x_b_4_wraddr(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist2_i_conv_simplemultiply2_sel_x_b_4_wraddr_q <= $unsigned(redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_q);
        end
    end

    // redist2_i_conv_simplemultiply2_sel_x_b_4_mem(DUALMEM,52)
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_mem_ia = $unsigned(redist1_i_conv_simplemultiply2_sel_x_b_1_q);
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_mem_aa = redist2_i_conv_simplemultiply2_sel_x_b_4_wraddr_q;
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_mem_ab = redist2_i_conv_simplemultiply2_sel_x_b_4_rdcnt_q;
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist2_i_conv_simplemultiply2_sel_x_b_4_mem_dmem (
        .clocken1(redist2_i_conv_simplemultiply2_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_i_conv_simplemultiply2_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist2_i_conv_simplemultiply2_sel_x_b_4_mem_aa),
        .data_a(redist2_i_conv_simplemultiply2_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_i_conv_simplemultiply2_sel_x_b_4_mem_ab),
        .q_b(redist2_i_conv_simplemultiply2_sel_x_b_4_mem_iq),
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
    assign redist2_i_conv_simplemultiply2_sel_x_b_4_mem_q = redist2_i_conv_simplemultiply2_sel_x_b_4_mem_iq[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,20)@5
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist2_i_conv_simplemultiply2_sel_x_b_4_mem_q;
    assign out_c0_exi5_2_tpl = redist3_i_conv2_simplemultiply3_sel_x_b_4_mem_q;
    assign out_c0_exi5_3_tpl = i_cmp19_simplemultiply5_c;
    assign out_c0_exi5_4_tpl = bgTrunc_i_mul_simplemultiply8_sel_x_b;
    assign out_c0_exi5_5_tpl = i_cmp7_neg_simplemultiply9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_simpleMultiply0 = GND_q;

endmodule
