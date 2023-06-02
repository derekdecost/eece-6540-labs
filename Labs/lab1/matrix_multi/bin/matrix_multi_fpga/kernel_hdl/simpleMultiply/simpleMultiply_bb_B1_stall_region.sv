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

// SystemVerilog created from simpleMultiply_bb_B1_stall_region
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_bb_B1_stall_region (
    input wire [511:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid,
    output wire [32:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_address,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_enable,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_read,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_write,
    output wire [511:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata,
    output wire [63:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable,
    output wire [4:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_outputC,
    input wire [31:0] in_widthB,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe11,
    input wire [31:0] in_c0_exe24,
    input wire [0:0] in_c0_exe35,
    input wire [31:0] in_c1_exe19,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_simpleMultiply1_o_active,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_float_0_000000e_0010_q;
    wire [0:0] i_select4_simplemultiply4_s;
    reg [31:0] i_select4_simplemultiply4_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_lsu_unnamed_simpleMultiply1_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_o_valid;
    wire [32:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_c0_exit19_1_tpl;
    wire [0:0] redist0_i_select4_simplemultiply4_q_9_fifo_valid_in;
    wire redist0_i_select4_simplemultiply4_q_9_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_select4_simplemultiply4_q_9_fifo_stall_in;
    wire redist0_i_select4_simplemultiply4_q_9_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist0_i_select4_simplemultiply4_q_9_fifo_data_in;
    wire [0:0] redist0_i_select4_simplemultiply4_q_9_fifo_valid_out;
    wire redist0_i_select4_simplemultiply4_q_9_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_select4_simplemultiply4_q_9_fifo_stall_out;
    wire redist0_i_select4_simplemultiply4_q_9_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist0_i_select4_simplemultiply4_q_9_fifo_data_out;
    wire [96:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_b;
    wire [31:0] bubble_join_redist0_i_select4_simplemultiply4_q_9_fifo_q;
    wire [31:0] bubble_select_redist0_i_select4_simplemultiply4_q_9_fifo_b;
    reg [0:0] SE_i_select4_simplemultiply4_R_v_0;
    wire [0:0] SE_i_select4_simplemultiply4_v_s_0;
    wire [0:0] SE_i_select4_simplemultiply4_s_tv_0;
    wire [0:0] SE_i_select4_simplemultiply4_backEN;
    wire [0:0] SE_i_select4_simplemultiply4_backStall;
    wire [0:0] SE_i_select4_simplemultiply4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_V0;
    wire [0:0] SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_and0;
    wire [0:0] SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_backStall;
    wire [0:0] SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_V0;


    // c_float_0_000000e_0010(FLOATCONSTANT,2)
    assign c_float_0_000000e_0010_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {in_c1_exe19, in_c0_exe35, in_c0_exe24, in_c0_exe11};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);

    // i_select4_simplemultiply4(MUX,8)@0 + 1
    assign i_select4_simplemultiply4_s = bubble_select_stall_entry_d;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_select4_simplemultiply4_q <= 32'b0;
        end
        else if (SE_i_select4_simplemultiply4_backEN == 1'b1)
        begin
            unique case (i_select4_simplemultiply4_s)
                1'b0 : i_select4_simplemultiply4_q <= c_float_0_000000e_0010_q;
                1'b1 : i_select4_simplemultiply4_q <= bubble_select_stall_entry_e;
                default : i_select4_simplemultiply4_q <= 32'b0;
            endcase
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x(BLACKBOX,24)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c0_exit19_0_tpl@9
    // out out_c0_exit19_1_tpl@9
    simpleMultiply_i_sfc_s_c0_in_for_cond_clA000000Zer15_simplemultiply2 thei_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x (
        .in_i_stall(SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_outputC(in_outputC),
        .in_widthB(in_widthB),
        .in_c0_eni214_0_tpl(GND_q),
        .in_c0_eni214_1_tpl(bubble_select_stall_entry_b),
        .in_c0_eni214_2_tpl(bubble_select_stall_entry_c),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_o_valid),
        .out_c0_exit19_0_tpl(),
        .out_c0_exit19_1_tpl(i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_c0_exit19_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_i_select4_simplemultiply4_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_i_select4_simplemultiply4(STALLENABLE,38)
    // Valid signal propagation
    assign SE_i_select4_simplemultiply4_V0 = SE_i_select4_simplemultiply4_R_v_0;
    // Stall signal propagation
    assign SE_i_select4_simplemultiply4_s_tv_0 = redist0_i_select4_simplemultiply4_q_9_fifo_stall_out & SE_i_select4_simplemultiply4_R_v_0;
    // Backward Enable generation
    assign SE_i_select4_simplemultiply4_backEN = ~ (SE_i_select4_simplemultiply4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_select4_simplemultiply4_v_s_0 = SE_i_select4_simplemultiply4_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_i_select4_simplemultiply4_backStall = ~ (SE_i_select4_simplemultiply4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_select4_simplemultiply4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_select4_simplemultiply4_backEN == 1'b0)
            begin
                SE_i_select4_simplemultiply4_R_v_0 <= SE_i_select4_simplemultiply4_R_v_0 & SE_i_select4_simplemultiply4_s_tv_0;
            end
            else
            begin
                SE_i_select4_simplemultiply4_R_v_0 <= SE_i_select4_simplemultiply4_v_s_0;
            end

        end
    end

    // redist0_i_select4_simplemultiply4_q_9_fifo(STALLFIFO,26)
    assign redist0_i_select4_simplemultiply4_q_9_fifo_valid_in = SE_i_select4_simplemultiply4_V0;
    assign redist0_i_select4_simplemultiply4_q_9_fifo_stall_in = SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_backStall;
    assign redist0_i_select4_simplemultiply4_q_9_fifo_data_in = i_select4_simplemultiply4_q;
    assign redist0_i_select4_simplemultiply4_q_9_fifo_valid_in_bitsignaltemp = redist0_i_select4_simplemultiply4_q_9_fifo_valid_in[0];
    assign redist0_i_select4_simplemultiply4_q_9_fifo_stall_in_bitsignaltemp = redist0_i_select4_simplemultiply4_q_9_fifo_stall_in[0];
    assign redist0_i_select4_simplemultiply4_q_9_fifo_valid_out[0] = redist0_i_select4_simplemultiply4_q_9_fifo_valid_out_bitsignaltemp;
    assign redist0_i_select4_simplemultiply4_q_9_fifo_stall_out[0] = redist0_i_select4_simplemultiply4_q_9_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist0_i_select4_simplemultiply4_q_9_fifo (
        .valid_in(redist0_i_select4_simplemultiply4_q_9_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_select4_simplemultiply4_q_9_fifo_stall_in_bitsignaltemp),
        .data_in(i_select4_simplemultiply4_q),
        .valid_out(redist0_i_select4_simplemultiply4_q_9_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_select4_simplemultiply4_q_9_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_select4_simplemultiply4_q_9_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_i_select4_simplemultiply4_q_9_fifo(BITJOIN,36)
    assign bubble_join_redist0_i_select4_simplemultiply4_q_9_fifo_q = redist0_i_select4_simplemultiply4_q_9_fifo_data_out;

    // bubble_select_redist0_i_select4_simplemultiply4_q_9_fifo(BITSELECT,37)
    assign bubble_select_redist0_i_select4_simplemultiply4_q_9_fifo_b = $unsigned(bubble_join_redist0_i_select4_simplemultiply4_q_9_fifo_q[31:0]);

    // SE_out_redist0_i_select4_simplemultiply4_q_9_fifo(STALLENABLE,46)
    // Valid signal propagation
    assign SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_V0 = SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_backStall = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_o_stall | ~ (SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_and0 = redist0_i_select4_simplemultiply4_q_9_fifo_valid_out;
    assign SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_wireValid = i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_o_valid & SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_wireValid = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x(BITJOIN,33)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_out_c0_exit19_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x(BITSELECT,34)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_q[63:0]);

    // i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x(BLACKBOX,23)@9
    // in in_i_stall@20000000
    // out out_lsu_unnamed_simpleMultiply1_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_unnamed_simpleMultiply1_simpleMultiply_avm_address@20000000
    // out out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount@20000000
    // out out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable@20000000
    // out out_unnamed_simpleMultiply1_simpleMultiply_avm_enable@20000000
    // out out_unnamed_simpleMultiply1_simpleMultiply_avm_read@20000000
    // out out_unnamed_simpleMultiply1_simpleMultiply_avm_write@20000000
    // out out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata@20000000
    simpleMultiply_i_llvm_fpga_mem_unnamed_sA000000Zply1_simplemultiply0 thei_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond_cleanup_loopexit_simplemultiplys_c0_enter15_simplemultiply2_aunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_backStall),
        .in_i_valid(SE_out_redist0_i_select4_simplemultiply4_q_9_fifo_V0),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata(in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid(in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest(in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack(in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack),
        .in_i_writedata_0_tpl(bubble_select_redist0_i_select4_simplemultiply4_q_9_fifo_b),
        .out_lsu_unnamed_simpleMultiply1_o_active(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_lsu_unnamed_simpleMultiply1_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_o_valid),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_address(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_address),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_enable(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_read(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_read),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_write(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_write),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata(i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_address = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_enable = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_read = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_write = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_lsu_unnamed_simpleMultiply1_o_active = i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_out_lsu_unnamed_simpleMultiply1_o_active;

    // dupName_0_sync_out_x(GPOUT,22)@11
    assign out_valid_out = SE_out_i_llvm_fpga_mem_unnamed_simplemultiply1_simplemultiply6_vunroll_x_V0;

endmodule
