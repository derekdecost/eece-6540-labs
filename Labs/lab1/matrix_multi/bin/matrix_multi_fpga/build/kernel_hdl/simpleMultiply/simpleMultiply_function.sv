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

// SystemVerilog created from simpleMultiply_function
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_function (
    input wire [63:0] in_arg_acl_global_id_0,
    input wire [63:0] in_arg_acl_global_id_1,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [31:0] in_arg_heightA,
    input wire [31:0] in_arg_heightB,
    input wire [63:0] in_arg_inputA,
    input wire [63:0] in_arg_inputB,
    input wire [63:0] in_arg_outputC,
    input wire [31:0] in_arg_widthA,
    input wire [31:0] in_arg_widthB,
    input wire [511:0] in_lm8_simpleMultiply_avm_readdata,
    input wire [0:0] in_lm8_simpleMultiply_avm_readdatavalid,
    input wire [0:0] in_lm8_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_lm8_simpleMultiply_avm_writeack,
    input wire [511:0] in_lm_simpleMultiply_avm_readdata,
    input wire [0:0] in_lm_simpleMultiply_avm_readdatavalid,
    input wire [0:0] in_lm_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_lm_simpleMultiply_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_lm8_simpleMultiply_avm_address,
    output wire [4:0] out_lm8_simpleMultiply_avm_burstcount,
    output wire [63:0] out_lm8_simpleMultiply_avm_byteenable,
    output wire [0:0] out_lm8_simpleMultiply_avm_enable,
    output wire [0:0] out_lm8_simpleMultiply_avm_read,
    output wire [0:0] out_lm8_simpleMultiply_avm_write,
    output wire [511:0] out_lm8_simpleMultiply_avm_writedata,
    output wire [32:0] out_lm_simpleMultiply_avm_address,
    output wire [4:0] out_lm_simpleMultiply_avm_burstcount,
    output wire [63:0] out_lm_simpleMultiply_avm_byteenable,
    output wire [0:0] out_lm_simpleMultiply_avm_enable,
    output wire [0:0] out_lm_simpleMultiply_avm_read,
    output wire [0:0] out_lm_simpleMultiply_avm_write,
    output wire [511:0] out_lm_simpleMultiply_avm_writedata,
    output wire [0:0] out_o_active_unnamed_simpleMultiply1,
    output wire [0:0] out_stall_out,
    output wire [32:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_address,
    output wire [4:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount,
    output wire [63:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_enable,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_read,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_write,
    output wire [511:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_simpleMultiply_B0_out_c0_exe1;
    wire [31:0] bb_simpleMultiply_B0_out_c0_exe2;
    wire [0:0] bb_simpleMultiply_B0_out_c0_exe3;
    wire [31:0] bb_simpleMultiply_B0_out_c0_exe4;
    wire [0:0] bb_simpleMultiply_B0_out_c0_exe5;
    wire [0:0] bb_simpleMultiply_B0_out_stall_out_0;
    wire [0:0] bb_simpleMultiply_B0_out_valid_out_0;
    wire [0:0] bb_simpleMultiply_B1_out_lsu_unnamed_simpleMultiply1_o_active;
    wire [0:0] bb_simpleMultiply_B1_out_stall_out_0;
    wire [32:0] bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;
    wire [4:0] bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;
    wire [63:0] bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;
    wire [0:0] bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;
    wire [0:0] bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;
    wire [0:0] bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;
    wire [511:0] bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;
    wire [0:0] bb_simpleMultiply_B1_out_valid_out_0;
    wire [31:0] bb_simpleMultiply_B2_out_c0_exe12;
    wire [31:0] bb_simpleMultiply_B2_out_c0_exe23;
    wire [31:0] bb_simpleMultiply_B2_out_c0_exe333;
    wire [0:0] bb_simpleMultiply_B2_out_c0_exe36;
    wire [31:0] bb_simpleMultiply_B2_out_c0_exe47;
    wire [0:0] bb_simpleMultiply_B2_out_c0_exe58;
    wire [31:0] bb_simpleMultiply_B2_out_c1_exe1;
    wire [32:0] bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_address;
    wire [4:0] bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_burstcount;
    wire [63:0] bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_byteenable;
    wire [0:0] bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_enable;
    wire [0:0] bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_read;
    wire [0:0] bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_write;
    wire [511:0] bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_writedata;
    wire [32:0] bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_address;
    wire [4:0] bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_burstcount;
    wire [63:0] bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_byteenable;
    wire [0:0] bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_enable;
    wire [0:0] bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_read;
    wire [0:0] bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_write;
    wire [511:0] bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_writedata;
    wire [0:0] bb_simpleMultiply_B2_out_stall_out_0;
    wire [0:0] bb_simpleMultiply_B2_out_stall_out_1;
    wire [0:0] bb_simpleMultiply_B2_out_valid_out_0;
    wire [0:0] bb_simpleMultiply_B2_out_valid_out_1;
    wire [31:0] c_float_0_000000e_0022_q;
    wire [31:0] c_i32_020_q;
    wire [0:0] loop_limiter_simpleMultiply0_out_o_stall;
    wire [0:0] loop_limiter_simpleMultiply0_out_o_valid;
    wire [0:0] bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_6_tpl;


    // bb_simpleMultiply_B1(BLACKBOX,3)
    simpleMultiply_bb_B1 thebb_simpleMultiply_B1 (
        .in_c0_exe11_0(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe24_0(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe35_0(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe19_0(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_outputC(in_arg_outputC),
        .in_stall_in_0(in_stall_in),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata(in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid(in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest(in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack(in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack),
        .in_valid_in_0(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_valid),
        .in_widthB(in_arg_widthB),
        .out_lsu_unnamed_simpleMultiply1_o_active(bb_simpleMultiply_B1_out_lsu_unnamed_simpleMultiply1_o_active),
        .out_stall_out_0(bb_simpleMultiply_B1_out_stall_out_0),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_address(bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_address),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount(bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable(bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_enable(bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_read(bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_read),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_write(bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_write),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata(bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata),
        .out_valid_out_0(bb_simpleMultiply_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B1_sr_0_aunroll_x(BLACKBOX,62)
    simpleMultiply_bb_B1_sr_0 thebb_simpleMultiply_B1_sr_0_aunroll_x (
        .in_i_stall(bb_simpleMultiply_B1_out_stall_out_0),
        .in_i_valid(bb_simpleMultiply_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_simpleMultiply_B2_out_c0_exe12),
        .in_i_data_1_tpl(bb_simpleMultiply_B2_out_c0_exe23),
        .in_i_data_2_tpl(bb_simpleMultiply_B2_out_c0_exe36),
        .in_i_data_3_tpl(bb_simpleMultiply_B2_out_c1_exe1),
        .out_o_stall(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B0(BLACKBOX,2)
    simpleMultiply_bb_B0 thebb_simpleMultiply_B0 (
        .in_acl_global_id_0_0(in_arg_acl_global_id_0),
        .in_acl_global_id_1_0(in_arg_acl_global_id_1),
        .in_inputA(in_arg_inputA),
        .in_inputB(in_arg_inputB),
        .in_outputC(in_arg_outputC),
        .in_stall_in_0(loop_limiter_simpleMultiply0_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .in_widthA(in_arg_widthA),
        .in_widthB(in_arg_widthB),
        .out_c0_exe1(bb_simpleMultiply_B0_out_c0_exe1),
        .out_c0_exe2(bb_simpleMultiply_B0_out_c0_exe2),
        .out_c0_exe3(bb_simpleMultiply_B0_out_c0_exe3),
        .out_c0_exe4(bb_simpleMultiply_B0_out_c0_exe4),
        .out_c0_exe5(bb_simpleMultiply_B0_out_c0_exe5),
        .out_stall_out_0(bb_simpleMultiply_B0_out_stall_out_0),
        .out_valid_out_0(bb_simpleMultiply_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_0_000000e_0022(FLOATCONSTANT,5)
    assign c_float_0_000000e_0022_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_020(CONSTANT,6)
    assign c_i32_020_q = $unsigned(32'b00000000000000000000000000000000);

    // loop_limiter_simpleMultiply0(BLACKBOX,37)
    simpleMultiply_loop_limiter_0 theloop_limiter_simpleMultiply0 (
        .in_i_stall(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_simpleMultiply_B0_out_valid_out_0),
        .in_i_valid_exit(bb_simpleMultiply_B2_out_valid_out_0),
        .out_o_stall(loop_limiter_simpleMultiply0_out_o_stall),
        .out_o_valid(loop_limiter_simpleMultiply0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B2_sr_1_aunroll_x(BLACKBOX,64)
    simpleMultiply_bb_B2_sr_1 thebb_simpleMultiply_B2_sr_1_aunroll_x (
        .in_i_stall(bb_simpleMultiply_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_simpleMultiply0_out_o_valid),
        .in_i_data_0_tpl(c_i32_020_q),
        .in_i_data_1_tpl(c_float_0_000000e_0022_q),
        .in_i_data_2_tpl(bb_simpleMultiply_B0_out_c0_exe1),
        .in_i_data_3_tpl(bb_simpleMultiply_B0_out_c0_exe2),
        .in_i_data_4_tpl(bb_simpleMultiply_B0_out_c0_exe3),
        .in_i_data_5_tpl(bb_simpleMultiply_B0_out_c0_exe4),
        .in_i_data_6_tpl(bb_simpleMultiply_B0_out_c0_exe5),
        .out_o_stall(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B2_sr_0_aunroll_x(BLACKBOX,63)
    simpleMultiply_bb_B2_sr_0 thebb_simpleMultiply_B2_sr_0_aunroll_x (
        .in_i_stall(bb_simpleMultiply_B2_out_stall_out_0),
        .in_i_valid(bb_simpleMultiply_B2_out_valid_out_1),
        .in_i_data_0_tpl(bb_simpleMultiply_B2_out_c0_exe333),
        .in_i_data_1_tpl(bb_simpleMultiply_B2_out_c1_exe1),
        .in_i_data_2_tpl(bb_simpleMultiply_B2_out_c0_exe12),
        .in_i_data_3_tpl(bb_simpleMultiply_B2_out_c0_exe23),
        .in_i_data_4_tpl(bb_simpleMultiply_B2_out_c0_exe36),
        .in_i_data_5_tpl(bb_simpleMultiply_B2_out_c0_exe47),
        .in_i_data_6_tpl(bb_simpleMultiply_B2_out_c0_exe58),
        .out_o_stall(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B2(BLACKBOX,4)
    simpleMultiply_bb_B2 thebb_simpleMultiply_B2 (
        .in_c0_exe12_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe12_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe23_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe23_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe36_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe36_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe47_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe47_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe58_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe58_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_i_021_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_i_021_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inputA(in_arg_inputA),
        .in_inputB(in_arg_inputB),
        .in_lm8_simpleMultiply_avm_readdata(in_lm8_simpleMultiply_avm_readdata),
        .in_lm8_simpleMultiply_avm_readdatavalid(in_lm8_simpleMultiply_avm_readdatavalid),
        .in_lm8_simpleMultiply_avm_waitrequest(in_lm8_simpleMultiply_avm_waitrequest),
        .in_lm8_simpleMultiply_avm_writeack(in_lm8_simpleMultiply_avm_writeack),
        .in_lm_simpleMultiply_avm_readdata(in_lm_simpleMultiply_avm_readdata),
        .in_lm_simpleMultiply_avm_readdatavalid(in_lm_simpleMultiply_avm_readdatavalid),
        .in_lm_simpleMultiply_avm_waitrequest(in_lm_simpleMultiply_avm_waitrequest),
        .in_lm_simpleMultiply_avm_writeack(in_lm_simpleMultiply_avm_writeack),
        .in_outputC(in_arg_outputC),
        .in_stall_in_0(bb_simpleMultiply_B1_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_stall),
        .in_sum_020_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_sum_020_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_valid_in_0(bb_simpleMultiply_B2_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_simpleMultiply_B2_sr_1_aunroll_x_out_o_valid),
        .in_widthA(in_arg_widthA),
        .in_widthB(in_arg_widthB),
        .out_c0_exe12(bb_simpleMultiply_B2_out_c0_exe12),
        .out_c0_exe23(bb_simpleMultiply_B2_out_c0_exe23),
        .out_c0_exe333(bb_simpleMultiply_B2_out_c0_exe333),
        .out_c0_exe36(bb_simpleMultiply_B2_out_c0_exe36),
        .out_c0_exe47(bb_simpleMultiply_B2_out_c0_exe47),
        .out_c0_exe58(bb_simpleMultiply_B2_out_c0_exe58),
        .out_c1_exe1(bb_simpleMultiply_B2_out_c1_exe1),
        .out_lm8_simpleMultiply_avm_address(bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_address),
        .out_lm8_simpleMultiply_avm_burstcount(bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_burstcount),
        .out_lm8_simpleMultiply_avm_byteenable(bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_byteenable),
        .out_lm8_simpleMultiply_avm_enable(bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_enable),
        .out_lm8_simpleMultiply_avm_read(bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_read),
        .out_lm8_simpleMultiply_avm_write(bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_write),
        .out_lm8_simpleMultiply_avm_writedata(bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_writedata),
        .out_lm_simpleMultiply_avm_address(bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_address),
        .out_lm_simpleMultiply_avm_burstcount(bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_burstcount),
        .out_lm_simpleMultiply_avm_byteenable(bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_byteenable),
        .out_lm_simpleMultiply_avm_enable(bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_enable),
        .out_lm_simpleMultiply_avm_read(bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_read),
        .out_lm_simpleMultiply_avm_write(bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_write),
        .out_lm_simpleMultiply_avm_writedata(bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_writedata),
        .out_stall_out_0(bb_simpleMultiply_B2_out_stall_out_0),
        .out_stall_out_1(bb_simpleMultiply_B2_out_stall_out_1),
        .out_valid_out_0(bb_simpleMultiply_B2_out_valid_out_0),
        .out_valid_out_1(bb_simpleMultiply_B2_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm8_simpleMultiply_avm_address(GPOUT,38)
    assign out_lm8_simpleMultiply_avm_address = bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_address;

    // out_lm8_simpleMultiply_avm_burstcount(GPOUT,39)
    assign out_lm8_simpleMultiply_avm_burstcount = bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_burstcount;

    // out_lm8_simpleMultiply_avm_byteenable(GPOUT,40)
    assign out_lm8_simpleMultiply_avm_byteenable = bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_byteenable;

    // out_lm8_simpleMultiply_avm_enable(GPOUT,41)
    assign out_lm8_simpleMultiply_avm_enable = bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_enable;

    // out_lm8_simpleMultiply_avm_read(GPOUT,42)
    assign out_lm8_simpleMultiply_avm_read = bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_read;

    // out_lm8_simpleMultiply_avm_write(GPOUT,43)
    assign out_lm8_simpleMultiply_avm_write = bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_write;

    // out_lm8_simpleMultiply_avm_writedata(GPOUT,44)
    assign out_lm8_simpleMultiply_avm_writedata = bb_simpleMultiply_B2_out_lm8_simpleMultiply_avm_writedata;

    // out_lm_simpleMultiply_avm_address(GPOUT,45)
    assign out_lm_simpleMultiply_avm_address = bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_address;

    // out_lm_simpleMultiply_avm_burstcount(GPOUT,46)
    assign out_lm_simpleMultiply_avm_burstcount = bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_burstcount;

    // out_lm_simpleMultiply_avm_byteenable(GPOUT,47)
    assign out_lm_simpleMultiply_avm_byteenable = bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_byteenable;

    // out_lm_simpleMultiply_avm_enable(GPOUT,48)
    assign out_lm_simpleMultiply_avm_enable = bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_enable;

    // out_lm_simpleMultiply_avm_read(GPOUT,49)
    assign out_lm_simpleMultiply_avm_read = bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_read;

    // out_lm_simpleMultiply_avm_write(GPOUT,50)
    assign out_lm_simpleMultiply_avm_write = bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_write;

    // out_lm_simpleMultiply_avm_writedata(GPOUT,51)
    assign out_lm_simpleMultiply_avm_writedata = bb_simpleMultiply_B2_out_lm_simpleMultiply_avm_writedata;

    // out_o_active_unnamed_simpleMultiply1(GPOUT,52)
    assign out_o_active_unnamed_simpleMultiply1 = bb_simpleMultiply_B1_out_lsu_unnamed_simpleMultiply1_o_active;

    // out_stall_out(GPOUT,53)
    assign out_stall_out = bb_simpleMultiply_B0_out_stall_out_0;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_address(GPOUT,54)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_address = bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount(GPOUT,55)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount = bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable(GPOUT,56)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable = bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_enable(GPOUT,57)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_enable = bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_read(GPOUT,58)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_read = bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_write(GPOUT,59)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_write = bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata(GPOUT,60)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata = bb_simpleMultiply_B1_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;

    // out_valid_out(GPOUT,61)
    assign out_valid_out = bb_simpleMultiply_B1_out_valid_out_0;

endmodule
