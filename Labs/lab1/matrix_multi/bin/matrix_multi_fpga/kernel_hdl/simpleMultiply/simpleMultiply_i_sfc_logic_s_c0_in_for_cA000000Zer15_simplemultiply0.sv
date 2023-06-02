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

// SystemVerilog created from simpleMultiply_i_sfc_logic_s_c0_in_for_cA000000Zer15_simplemultiply0
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_i_sfc_logic_s_c0_in_for_cA000000Zer15_simplemultiply0 (
    input wire [63:0] in_outputC,
    input wire [31:0] in_widthB,
    output wire [0:0] out_c0_exi118_0_tpl,
    output wire [63:0] out_c0_exi118_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_simpleMultiply0,
    input wire [0:0] in_c0_eni214_0_tpl,
    input wire [31:0] in_c0_eni214_1_tpl,
    input wire [31:0] in_c0_eni214_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] i_add10_simplemultiply4_a;
    wire [32:0] i_add10_simplemultiply4_b;
    logic [32:0] i_add10_simplemultiply4_o;
    wire [32:0] i_add10_simplemultiply4_q;
    wire [1:0] i_arrayidx121_simplemultiply7_vt_const_1_q;
    wire [63:0] i_arrayidx121_simplemultiply7_vt_join_q;
    wire [61:0] i_arrayidx121_simplemultiply7_vt_select_63_b;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer3_simplemultiply2_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_select_63_b;
    wire [63:0] i_unnamed_simplemultiply8_vt_join_q;
    wire [61:0] i_unnamed_simplemultiply8_vt_select_63_b;
    wire [31:0] bgTrunc_i_add10_simplemultiply4_sel_x_b;
    wire [63:0] bgTrunc_i_mul9_simplemultiply3_sel_x_in;
    wire [31:0] bgTrunc_i_mul9_simplemultiply3_sel_x_b;
    wire [64:0] i_arrayidx121_simplemultiply0_add_x_a;
    wire [64:0] i_arrayidx121_simplemultiply0_add_x_b;
    logic [64:0] i_arrayidx121_simplemultiply0_add_x_o;
    wire [64:0] i_arrayidx121_simplemultiply0_add_x_q;
    wire [127:0] i_arrayidx121_simplemultiply0_mult_extender_x_q;
    wire [60:0] i_arrayidx121_simplemultiply0_mult_multconst_x_q;
    wire [63:0] i_arrayidx121_simplemultiply0_trunc_sel_x_b;
    wire [63:0] i_arrayidx121_simplemultiply0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom11_simplemultiply5_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [63:0] i_mul9_simplemultiply3_sums_join_0_q;
    wire [50:0] i_mul9_simplemultiply3_sums_align_1_q;
    wire [50:0] i_mul9_simplemultiply3_sums_align_1_qint;
    wire [64:0] i_mul9_simplemultiply3_sums_result_add_0_0_a;
    wire [64:0] i_mul9_simplemultiply3_sums_result_add_0_0_b;
    logic [64:0] i_mul9_simplemultiply3_sums_result_add_0_0_o;
    wire [64:0] i_mul9_simplemultiply3_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx121_simplemultiply0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx121_simplemultiply0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx121_simplemultiply0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx121_simplemultiply0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx121_simplemultiply0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx121_simplemultiply0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx121_simplemultiply0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx121_simplemultiply0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_q;
    wire [11:0] i_arrayidx121_simplemultiply0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx121_simplemultiply0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx121_simplemultiply0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx121_simplemultiply0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx121_simplemultiply0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx121_simplemultiply0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx121_simplemultiply0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx121_simplemultiply0_mult_x_im9_shift0_qint;
    wire i_mul9_simplemultiply3_im0_cma_reset;
    wire [13:0] i_mul9_simplemultiply3_im0_cma_a0;
    wire [13:0] i_mul9_simplemultiply3_im0_cma_c0;
    wire [27:0] i_mul9_simplemultiply3_im0_cma_s0;
    wire [27:0] i_mul9_simplemultiply3_im0_cma_qq;
    wire [27:0] i_mul9_simplemultiply3_im0_cma_q;
    wire i_mul9_simplemultiply3_im0_cma_ena0;
    wire i_mul9_simplemultiply3_im0_cma_ena1;
    wire i_mul9_simplemultiply3_im0_cma_ena2;
    wire i_mul9_simplemultiply3_im8_cma_reset;
    wire [17:0] i_mul9_simplemultiply3_im8_cma_a0;
    wire [17:0] i_mul9_simplemultiply3_im8_cma_c0;
    wire [35:0] i_mul9_simplemultiply3_im8_cma_s0;
    wire [35:0] i_mul9_simplemultiply3_im8_cma_qq;
    wire [35:0] i_mul9_simplemultiply3_im8_cma_q;
    wire i_mul9_simplemultiply3_im8_cma_ena0;
    wire i_mul9_simplemultiply3_im8_cma_ena1;
    wire i_mul9_simplemultiply3_im8_cma_ena2;
    wire i_mul9_simplemultiply3_ma3_cma_reset;
    wire [13:0] i_mul9_simplemultiply3_ma3_cma_a0;
    wire [17:0] i_mul9_simplemultiply3_ma3_cma_c0;
    wire [13:0] i_mul9_simplemultiply3_ma3_cma_a1;
    wire [17:0] i_mul9_simplemultiply3_ma3_cma_c1;
    wire [32:0] i_mul9_simplemultiply3_ma3_cma_s0;
    wire [32:0] i_mul9_simplemultiply3_ma3_cma_qq;
    wire [32:0] i_mul9_simplemultiply3_ma3_cma_q;
    wire i_mul9_simplemultiply3_ma3_cma_ena0;
    wire i_mul9_simplemultiply3_ma3_cma_ena1;
    wire i_mul9_simplemultiply3_ma3_cma_ena2;
    wire [13:0] i_mul9_simplemultiply3_bs2_merged_bit_select_b;
    wire [17:0] i_mul9_simplemultiply3_bs2_merged_bit_select_c;
    wire [9:0] i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_e;
    wire [13:0] i_mul9_simplemultiply3_bs1_merged_bit_select_b;
    wire [17:0] i_mul9_simplemultiply3_bs1_merged_bit_select_c;
    reg [31:0] redist0_sync_together15_aunroll_x_in_c0_eni214_1_tpl_1_q;
    reg [0:0] redist2_sync_together15_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist2_sync_together15_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist2_sync_together15_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist2_sync_together15_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist2_sync_together15_aunroll_x_in_i_valid_5_delay_3;
    reg [31:0] redist3_bgTrunc_i_mul9_simplemultiply3_sel_x_b_1_q;
    reg [31:0] redist4_bgTrunc_i_add10_simplemultiply4_sel_x_b_1_q;
    reg [31:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_outputreg0_q;
    wire redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_reset0;
    wire [31:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_ia;
    wire [1:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_aa;
    wire [1:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_ab;
    wire [31:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_iq;
    wire [31:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_q;
    wire [1:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i;
    (* preserve *) reg redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_eq;
    reg [1:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_wraddr_q;
    wire [1:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_last_q;
    wire [0:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmpReg_q;
    wire [0:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_notEnable_q;
    wire [0:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_sticky_ena_q;
    wire [0:0] redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together15_aunroll_x_in_i_valid_5(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist2_sync_together15_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_1 <= redist2_sync_together15_aunroll_x_in_i_valid_5_delay_0;
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_2 <= redist2_sync_together15_aunroll_x_in_i_valid_5_delay_1;
            redist2_sync_together15_aunroll_x_in_i_valid_5_delay_3 <= redist2_sync_together15_aunroll_x_in_i_valid_5_delay_2;
            redist2_sync_together15_aunroll_x_in_i_valid_5_q <= redist2_sync_together15_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,40)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together15_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_arrayidx121_simplemultiply0_mult_multconst_x(CONSTANT,34)
    assign i_arrayidx121_simplemultiply0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_notEnable(LOGICAL,101)
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_nor(LOGICAL,102)
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_nor_q = ~ (redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_notEnable_q | redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_sticky_ena_q);

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_last(CONSTANT,98)
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmp(LOGICAL,99)
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmp_q = $unsigned(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_last_q == redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmpReg(REG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmpReg_q <= $unsigned(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmp_q);
        end
    end

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_sticky_ena(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_nor_q == 1'b1)
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_sticky_ena_q <= $unsigned(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_cmpReg_q);
        end
    end

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_enaAnd(LOGICAL,104)
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_enaAnd_q = redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_sticky_ena_q & VCC_q;

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt(COUNTER,96)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i <= 2'd0;
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i == 2'd1)
            begin
                redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i <= $unsigned(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i <= $unsigned(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_q = redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_i[1:0];

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_wraddr(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_wraddr_q <= $unsigned(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_q);
        end
    end

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem(DUALMEM,95)
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_ia = $unsigned(in_c0_eni214_2_tpl);
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_aa = redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_wraddr_q;
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_ab = redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_rdcnt_q;
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_dmem (
        .clocken1(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_aa),
        .data_a(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_ab),
        .q_b(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_iq),
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
    assign redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_q = redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_iq[31:0];

    // redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_outputreg0(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_outputreg0_q <= $unsigned(redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_mem_q);
        end
    end

    // valid_fanout_reg1(REG,41)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer3_simplemultiply2(BLACKBOX,12)@0
    // in in_i_dependence@1
    // in in_valid_in@1
    // out out_buffer_out@1
    // out out_valid_out@1
    simpleMultiply_i_llvm_fpga_sync_buffer_iA000000Zfer3_simplemultiply0 thei_llvm_fpga_sync_buffer_i32_widthb_sync_buffer3_simplemultiply2 (
        .in_buffer_in(in_widthB),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer3_simplemultiply2_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul9_simplemultiply3_bs2_merged_bit_select(BITSELECT,86)@1
    assign i_mul9_simplemultiply3_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer3_simplemultiply2_out_buffer_out[31:18];
    assign i_mul9_simplemultiply3_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_widthb_sync_buffer3_simplemultiply2_out_buffer_out[17:0];

    // redist0_sync_together15_aunroll_x_in_c0_eni214_1_tpl_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together15_aunroll_x_in_c0_eni214_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together15_aunroll_x_in_c0_eni214_1_tpl_1_q <= $unsigned(in_c0_eni214_1_tpl);
        end
    end

    // i_mul9_simplemultiply3_bs1_merged_bit_select(BITSELECT,88)@1
    assign i_mul9_simplemultiply3_bs1_merged_bit_select_b = redist0_sync_together15_aunroll_x_in_c0_eni214_1_tpl_1_q[31:18];
    assign i_mul9_simplemultiply3_bs1_merged_bit_select_c = redist0_sync_together15_aunroll_x_in_c0_eni214_1_tpl_1_q[17:0];

    // i_mul9_simplemultiply3_ma3_cma(CHAINMULTADD,85)@1 + 3
    assign i_mul9_simplemultiply3_ma3_cma_reset = ~ (resetn);
    assign i_mul9_simplemultiply3_ma3_cma_ena0 = 1'b1;
    assign i_mul9_simplemultiply3_ma3_cma_ena1 = i_mul9_simplemultiply3_ma3_cma_ena0;
    assign i_mul9_simplemultiply3_ma3_cma_ena2 = i_mul9_simplemultiply3_ma3_cma_ena0;

    assign i_mul9_simplemultiply3_ma3_cma_a0 = i_mul9_simplemultiply3_bs1_merged_bit_select_b;
    assign i_mul9_simplemultiply3_ma3_cma_c0 = i_mul9_simplemultiply3_bs2_merged_bit_select_c;
    assign i_mul9_simplemultiply3_ma3_cma_a1 = i_mul9_simplemultiply3_bs2_merged_bit_select_b;
    assign i_mul9_simplemultiply3_ma3_cma_c1 = i_mul9_simplemultiply3_bs1_merged_bit_select_c;
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
    ) i_mul9_simplemultiply3_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_simplemultiply3_ma3_cma_ena2, i_mul9_simplemultiply3_ma3_cma_ena1, i_mul9_simplemultiply3_ma3_cma_ena0 }),
        .aclr({ i_mul9_simplemultiply3_ma3_cma_reset, i_mul9_simplemultiply3_ma3_cma_reset }),
        .ay(i_mul9_simplemultiply3_ma3_cma_a1),
        .by(i_mul9_simplemultiply3_ma3_cma_a0),
        .ax(i_mul9_simplemultiply3_ma3_cma_c1),
        .bx(i_mul9_simplemultiply3_ma3_cma_c0),
        .resulta(i_mul9_simplemultiply3_ma3_cma_s0),
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
    i_mul9_simplemultiply3_ma3_cma_delay ( .xin(i_mul9_simplemultiply3_ma3_cma_s0), .xout(i_mul9_simplemultiply3_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_simplemultiply3_ma3_cma_q = $unsigned(i_mul9_simplemultiply3_ma3_cma_qq[32:0]);

    // i_mul9_simplemultiply3_sums_align_1(BITSHIFT,58)@4
    assign i_mul9_simplemultiply3_sums_align_1_qint = { i_mul9_simplemultiply3_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul9_simplemultiply3_sums_align_1_q = i_mul9_simplemultiply3_sums_align_1_qint[50:0];

    // i_mul9_simplemultiply3_im0_cma(CHAINMULTADD,83)@1 + 3
    assign i_mul9_simplemultiply3_im0_cma_reset = ~ (resetn);
    assign i_mul9_simplemultiply3_im0_cma_ena0 = 1'b1;
    assign i_mul9_simplemultiply3_im0_cma_ena1 = i_mul9_simplemultiply3_im0_cma_ena0;
    assign i_mul9_simplemultiply3_im0_cma_ena2 = i_mul9_simplemultiply3_im0_cma_ena0;

    assign i_mul9_simplemultiply3_im0_cma_a0 = i_mul9_simplemultiply3_bs1_merged_bit_select_b;
    assign i_mul9_simplemultiply3_im0_cma_c0 = i_mul9_simplemultiply3_bs2_merged_bit_select_b;
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
    ) i_mul9_simplemultiply3_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_simplemultiply3_im0_cma_ena2, i_mul9_simplemultiply3_im0_cma_ena1, i_mul9_simplemultiply3_im0_cma_ena0 }),
        .aclr({ i_mul9_simplemultiply3_im0_cma_reset, i_mul9_simplemultiply3_im0_cma_reset }),
        .ay(i_mul9_simplemultiply3_im0_cma_a0),
        .ax(i_mul9_simplemultiply3_im0_cma_c0),
        .resulta(i_mul9_simplemultiply3_im0_cma_s0),
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
    i_mul9_simplemultiply3_im0_cma_delay ( .xin(i_mul9_simplemultiply3_im0_cma_s0), .xout(i_mul9_simplemultiply3_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_simplemultiply3_im0_cma_q = $unsigned(i_mul9_simplemultiply3_im0_cma_qq[27:0]);

    // i_mul9_simplemultiply3_im8_cma(CHAINMULTADD,84)@1 + 3
    assign i_mul9_simplemultiply3_im8_cma_reset = ~ (resetn);
    assign i_mul9_simplemultiply3_im8_cma_ena0 = 1'b1;
    assign i_mul9_simplemultiply3_im8_cma_ena1 = i_mul9_simplemultiply3_im8_cma_ena0;
    assign i_mul9_simplemultiply3_im8_cma_ena2 = i_mul9_simplemultiply3_im8_cma_ena0;

    assign i_mul9_simplemultiply3_im8_cma_a0 = i_mul9_simplemultiply3_bs1_merged_bit_select_c;
    assign i_mul9_simplemultiply3_im8_cma_c0 = i_mul9_simplemultiply3_bs2_merged_bit_select_c;
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
    ) i_mul9_simplemultiply3_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul9_simplemultiply3_im8_cma_ena2, i_mul9_simplemultiply3_im8_cma_ena1, i_mul9_simplemultiply3_im8_cma_ena0 }),
        .aclr({ i_mul9_simplemultiply3_im8_cma_reset, i_mul9_simplemultiply3_im8_cma_reset }),
        .ay(i_mul9_simplemultiply3_im8_cma_a0),
        .ax(i_mul9_simplemultiply3_im8_cma_c0),
        .resulta(i_mul9_simplemultiply3_im8_cma_s0),
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
    i_mul9_simplemultiply3_im8_cma_delay ( .xin(i_mul9_simplemultiply3_im8_cma_s0), .xout(i_mul9_simplemultiply3_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_simplemultiply3_im8_cma_q = $unsigned(i_mul9_simplemultiply3_im8_cma_qq[35:0]);

    // i_mul9_simplemultiply3_sums_join_0(BITJOIN,57)@4
    assign i_mul9_simplemultiply3_sums_join_0_q = {i_mul9_simplemultiply3_im0_cma_q, i_mul9_simplemultiply3_im8_cma_q};

    // i_mul9_simplemultiply3_sums_result_add_0_0(ADD,60)@4
    assign i_mul9_simplemultiply3_sums_result_add_0_0_a = {1'b0, i_mul9_simplemultiply3_sums_join_0_q};
    assign i_mul9_simplemultiply3_sums_result_add_0_0_b = {14'b00000000000000, i_mul9_simplemultiply3_sums_align_1_q};
    assign i_mul9_simplemultiply3_sums_result_add_0_0_o = $unsigned(i_mul9_simplemultiply3_sums_result_add_0_0_a) + $unsigned(i_mul9_simplemultiply3_sums_result_add_0_0_b);
    assign i_mul9_simplemultiply3_sums_result_add_0_0_q = i_mul9_simplemultiply3_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul9_simplemultiply3_sel_x(BITSELECT,26)@4
    assign bgTrunc_i_mul9_simplemultiply3_sel_x_in = i_mul9_simplemultiply3_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul9_simplemultiply3_sel_x_b = bgTrunc_i_mul9_simplemultiply3_sel_x_in[31:0];

    // redist3_bgTrunc_i_mul9_simplemultiply3_sel_x_b_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_mul9_simplemultiply3_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_bgTrunc_i_mul9_simplemultiply3_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul9_simplemultiply3_sel_x_b);
        end
    end

    // i_add10_simplemultiply4(ADD,6)@5
    assign i_add10_simplemultiply4_a = {1'b0, redist3_bgTrunc_i_mul9_simplemultiply3_sel_x_b_1_q};
    assign i_add10_simplemultiply4_b = {1'b0, redist1_sync_together15_aunroll_x_in_c0_eni214_2_tpl_5_outputreg0_q};
    assign i_add10_simplemultiply4_o = $unsigned(i_add10_simplemultiply4_a) + $unsigned(i_add10_simplemultiply4_b);
    assign i_add10_simplemultiply4_q = i_add10_simplemultiply4_o[32:0];

    // bgTrunc_i_add10_simplemultiply4_sel_x(BITSELECT,25)@5
    assign bgTrunc_i_add10_simplemultiply4_sel_x_b = i_add10_simplemultiply4_q[31:0];

    // redist4_bgTrunc_i_add10_simplemultiply4_sel_x_b_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_add10_simplemultiply4_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_add10_simplemultiply4_sel_x_b_1_q <= $unsigned(bgTrunc_i_add10_simplemultiply4_sel_x_b);
        end
    end

    // i_idxprom11_simplemultiply5_sel_x(BITSELECT,37)@6
    assign i_idxprom11_simplemultiply5_sel_x_b = $unsigned({{32{redist4_bgTrunc_i_add10_simplemultiply4_sel_x_b_1_q[31]}}, redist4_bgTrunc_i_add10_simplemultiply4_sel_x_b_1_q[31:0]});

    // i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select(BITSELECT,87)@6
    assign i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_b = i_idxprom11_simplemultiply5_sel_x_b[63:54];
    assign i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_c = i_idxprom11_simplemultiply5_sel_x_b[53:36];
    assign i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_d = i_idxprom11_simplemultiply5_sel_x_b[35:18];
    assign i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_e = i_idxprom11_simplemultiply5_sel_x_b[17:0];

    // i_arrayidx121_simplemultiply0_mult_x_im0_shift0(BITSHIFT,79)@6
    assign i_arrayidx121_simplemultiply0_mult_x_im0_shift0_qint = { i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx121_simplemultiply0_mult_x_im0_shift0_q = i_arrayidx121_simplemultiply0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx121_simplemultiply0_mult_x_sums_align_3(BITSHIFT,76)@6
    assign i_arrayidx121_simplemultiply0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx121_simplemultiply0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx121_simplemultiply0_mult_x_sums_align_3_q = i_arrayidx121_simplemultiply0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx121_simplemultiply0_mult_x_im6_shift0(BITSHIFT,81)@6
    assign i_arrayidx121_simplemultiply0_mult_x_im6_shift0_qint = { i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx121_simplemultiply0_mult_x_im6_shift0_q = i_arrayidx121_simplemultiply0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx121_simplemultiply0_mult_x_sums_align_2(BITSHIFT,75)@6
    assign i_arrayidx121_simplemultiply0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx121_simplemultiply0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx121_simplemultiply0_mult_x_sums_align_2_q = i_arrayidx121_simplemultiply0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx121_simplemultiply0_mult_x_sums_join_4(BITJOIN,77)@6
    assign i_arrayidx121_simplemultiply0_mult_x_sums_join_4_q = {i_arrayidx121_simplemultiply0_mult_x_sums_align_3_q, i_arrayidx121_simplemultiply0_mult_x_sums_align_2_q};

    // i_arrayidx121_simplemultiply0_mult_x_im3_shift0(BITSHIFT,80)@6
    assign i_arrayidx121_simplemultiply0_mult_x_im3_shift0_qint = { i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx121_simplemultiply0_mult_x_im3_shift0_q = i_arrayidx121_simplemultiply0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx121_simplemultiply0_mult_x_sums_align_0(BITSHIFT,73)@6
    assign i_arrayidx121_simplemultiply0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx121_simplemultiply0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx121_simplemultiply0_mult_x_sums_align_0_q = i_arrayidx121_simplemultiply0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx121_simplemultiply0_mult_x_im9_shift0(BITSHIFT,82)@6
    assign i_arrayidx121_simplemultiply0_mult_x_im9_shift0_qint = { i_arrayidx121_simplemultiply0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx121_simplemultiply0_mult_x_im9_shift0_q = i_arrayidx121_simplemultiply0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx121_simplemultiply0_mult_x_sums_join_1(BITJOIN,74)@6
    assign i_arrayidx121_simplemultiply0_mult_x_sums_join_1_q = {i_arrayidx121_simplemultiply0_mult_x_sums_align_0_q, {1'b0, i_arrayidx121_simplemultiply0_mult_x_im9_shift0_q}};

    // i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0(ADD,78)@6
    assign i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx121_simplemultiply0_mult_x_sums_join_1_q};
    assign i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx121_simplemultiply0_mult_x_sums_join_4_q};
    assign i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_q = i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx121_simplemultiply0_mult_extender_x(BITJOIN,33)@6
    assign i_arrayidx121_simplemultiply0_mult_extender_x_q = {i_arrayidx121_simplemultiply0_mult_multconst_x_q, i_arrayidx121_simplemultiply0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx121_simplemultiply0_trunc_sel_x(BITSELECT,35)@6
    assign i_arrayidx121_simplemultiply0_trunc_sel_x_b = i_arrayidx121_simplemultiply0_mult_extender_x_q[63:0];

    // valid_fanout_reg2(REG,42)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together15_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6(BLACKBOX,13)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    simpleMultiply_i_llvm_fpga_sync_buffer_pA000000Zffer_simplemultiply0 thei_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6 (
        .in_buffer_in(in_outputC),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_select_63(BITSELECT,16)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_const_9(CONSTANT,14)
    assign i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_join(BITJOIN,15)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_const_9_q};

    // i_arrayidx121_simplemultiply0_add_x(ADD,27)@6
    assign i_arrayidx121_simplemultiply0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_outputc_sync_buffer_simplemultiply6_vt_join_q};
    assign i_arrayidx121_simplemultiply0_add_x_b = {1'b0, i_arrayidx121_simplemultiply0_trunc_sel_x_b};
    assign i_arrayidx121_simplemultiply0_add_x_o = $unsigned(i_arrayidx121_simplemultiply0_add_x_a) + $unsigned(i_arrayidx121_simplemultiply0_add_x_b);
    assign i_arrayidx121_simplemultiply0_add_x_q = i_arrayidx121_simplemultiply0_add_x_o[64:0];

    // i_arrayidx121_simplemultiply0_dupName_0_trunc_sel_x(BITSELECT,36)@6
    assign i_arrayidx121_simplemultiply0_dupName_0_trunc_sel_x_b = i_arrayidx121_simplemultiply0_add_x_q[63:0];

    // i_arrayidx121_simplemultiply7_vt_select_63(BITSELECT,9)@6
    assign i_arrayidx121_simplemultiply7_vt_select_63_b = i_arrayidx121_simplemultiply0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx121_simplemultiply7_vt_join(BITJOIN,8)@6
    assign i_arrayidx121_simplemultiply7_vt_join_q = {i_arrayidx121_simplemultiply7_vt_select_63_b, i_arrayidx121_simplemultiply7_vt_const_1_q};

    // i_unnamed_simplemultiply8_vt_select_63(BITSELECT,20)@6
    assign i_unnamed_simplemultiply8_vt_select_63_b = i_arrayidx121_simplemultiply7_vt_join_q[63:2];

    // i_arrayidx121_simplemultiply7_vt_const_1(CONSTANT,7)
    assign i_arrayidx121_simplemultiply7_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_simplemultiply8_vt_join(BITJOIN,19)@6
    assign i_unnamed_simplemultiply8_vt_join_q = {i_unnamed_simplemultiply8_vt_select_63_b, i_arrayidx121_simplemultiply7_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,38)@6
    assign out_c0_exi118_0_tpl = GND_q;
    assign out_c0_exi118_1_tpl = i_unnamed_simplemultiply8_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_simpleMultiply0 = GND_q;

endmodule
