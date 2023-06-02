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

// SystemVerilog created from simpleMultiply_bb_B2
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_bb_B2 (
    input wire [31:0] in_c0_exe12_0,
    input wire [31:0] in_c0_exe12_1,
    input wire [31:0] in_c0_exe23_0,
    input wire [31:0] in_c0_exe23_1,
    input wire [0:0] in_c0_exe36_0,
    input wire [0:0] in_c0_exe36_1,
    input wire [31:0] in_c0_exe47_0,
    input wire [31:0] in_c0_exe47_1,
    input wire [0:0] in_c0_exe58_0,
    input wire [0:0] in_c0_exe58_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_i_021_0,
    input wire [31:0] in_i_021_1,
    input wire [63:0] in_inputA,
    input wire [63:0] in_inputB,
    input wire [511:0] in_lm8_simpleMultiply_avm_readdata,
    input wire [0:0] in_lm8_simpleMultiply_avm_readdatavalid,
    input wire [0:0] in_lm8_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_lm8_simpleMultiply_avm_writeack,
    input wire [511:0] in_lm_simpleMultiply_avm_readdata,
    input wire [0:0] in_lm_simpleMultiply_avm_readdatavalid,
    input wire [0:0] in_lm_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_lm_simpleMultiply_avm_writeack,
    input wire [63:0] in_outputC,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_sum_020_0,
    input wire [31:0] in_sum_020_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_widthA,
    input wire [31:0] in_widthB,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe23,
    output wire [31:0] out_c0_exe333,
    output wire [0:0] out_c0_exe36,
    output wire [31:0] out_c0_exe47,
    output wire [0:0] out_c0_exe58,
    output wire [31:0] out_c1_exe1,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_simpleMultiply_B2_stall_region_out_c0_exe12;
    wire [31:0] bb_simpleMultiply_B2_stall_region_out_c0_exe23;
    wire [31:0] bb_simpleMultiply_B2_stall_region_out_c0_exe333;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_c0_exe36;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_c0_exe434;
    wire [31:0] bb_simpleMultiply_B2_stall_region_out_c0_exe47;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_c0_exe58;
    wire [31:0] bb_simpleMultiply_B2_stall_region_out_c1_exe1;
    wire [32:0] bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_address;
    wire [4:0] bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_burstcount;
    wire [63:0] bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_byteenable;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_enable;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_read;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_write;
    wire [511:0] bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_writedata;
    wire [32:0] bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_address;
    wire [4:0] bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_burstcount;
    wire [63:0] bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_byteenable;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_enable;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_read;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_write;
    wire [511:0] bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_writedata;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_stall_out;
    wire [0:0] bb_simpleMultiply_B2_stall_region_out_valid_out;
    wire [31:0] simpleMultiply_B2_branch_out_c0_exe12;
    wire [31:0] simpleMultiply_B2_branch_out_c0_exe23;
    wire [31:0] simpleMultiply_B2_branch_out_c0_exe333;
    wire [0:0] simpleMultiply_B2_branch_out_c0_exe36;
    wire [31:0] simpleMultiply_B2_branch_out_c0_exe47;
    wire [0:0] simpleMultiply_B2_branch_out_c0_exe58;
    wire [31:0] simpleMultiply_B2_branch_out_c1_exe1;
    wire [0:0] simpleMultiply_B2_branch_out_stall_out;
    wire [0:0] simpleMultiply_B2_branch_out_valid_out_0;
    wire [0:0] simpleMultiply_B2_branch_out_valid_out_1;
    wire [31:0] simpleMultiply_B2_merge_out_c0_exe12;
    wire [31:0] simpleMultiply_B2_merge_out_c0_exe23;
    wire [0:0] simpleMultiply_B2_merge_out_c0_exe36;
    wire [31:0] simpleMultiply_B2_merge_out_c0_exe47;
    wire [0:0] simpleMultiply_B2_merge_out_c0_exe58;
    wire [31:0] simpleMultiply_B2_merge_out_i_021;
    wire [0:0] simpleMultiply_B2_merge_out_stall_out_0;
    wire [0:0] simpleMultiply_B2_merge_out_stall_out_1;
    wire [31:0] simpleMultiply_B2_merge_out_sum_020;
    wire [0:0] simpleMultiply_B2_merge_out_valid_out;


    // simpleMultiply_B2_merge(BLACKBOX,61)
    simpleMultiply_B2_merge thesimpleMultiply_B2_merge (
        .in_c0_exe12_0(in_c0_exe12_0),
        .in_c0_exe12_1(in_c0_exe12_1),
        .in_c0_exe23_0(in_c0_exe23_0),
        .in_c0_exe23_1(in_c0_exe23_1),
        .in_c0_exe36_0(in_c0_exe36_0),
        .in_c0_exe36_1(in_c0_exe36_1),
        .in_c0_exe47_0(in_c0_exe47_0),
        .in_c0_exe47_1(in_c0_exe47_1),
        .in_c0_exe58_0(in_c0_exe58_0),
        .in_c0_exe58_1(in_c0_exe58_1),
        .in_i_021_0(in_i_021_0),
        .in_i_021_1(in_i_021_1),
        .in_stall_in(bb_simpleMultiply_B2_stall_region_out_stall_out),
        .in_sum_020_0(in_sum_020_0),
        .in_sum_020_1(in_sum_020_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c0_exe12(simpleMultiply_B2_merge_out_c0_exe12),
        .out_c0_exe23(simpleMultiply_B2_merge_out_c0_exe23),
        .out_c0_exe36(simpleMultiply_B2_merge_out_c0_exe36),
        .out_c0_exe47(simpleMultiply_B2_merge_out_c0_exe47),
        .out_c0_exe58(simpleMultiply_B2_merge_out_c0_exe58),
        .out_i_021(simpleMultiply_B2_merge_out_i_021),
        .out_stall_out_0(simpleMultiply_B2_merge_out_stall_out_0),
        .out_stall_out_1(simpleMultiply_B2_merge_out_stall_out_1),
        .out_sum_020(simpleMultiply_B2_merge_out_sum_020),
        .out_valid_out(simpleMultiply_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B2_stall_region(BLACKBOX,2)
    simpleMultiply_bb_B2_stall_region thebb_simpleMultiply_B2_stall_region (
        .in_c0_exe12(simpleMultiply_B2_merge_out_c0_exe12),
        .in_c0_exe23(simpleMultiply_B2_merge_out_c0_exe23),
        .in_c0_exe36(simpleMultiply_B2_merge_out_c0_exe36),
        .in_c0_exe47(simpleMultiply_B2_merge_out_c0_exe47),
        .in_c0_exe58(simpleMultiply_B2_merge_out_c0_exe58),
        .in_flush(in_flush),
        .in_i_021(simpleMultiply_B2_merge_out_i_021),
        .in_inputA(in_inputA),
        .in_inputB(in_inputB),
        .in_lm8_simpleMultiply_avm_readdata(in_lm8_simpleMultiply_avm_readdata),
        .in_lm8_simpleMultiply_avm_readdatavalid(in_lm8_simpleMultiply_avm_readdatavalid),
        .in_lm8_simpleMultiply_avm_waitrequest(in_lm8_simpleMultiply_avm_waitrequest),
        .in_lm8_simpleMultiply_avm_writeack(in_lm8_simpleMultiply_avm_writeack),
        .in_lm_simpleMultiply_avm_readdata(in_lm_simpleMultiply_avm_readdata),
        .in_lm_simpleMultiply_avm_readdatavalid(in_lm_simpleMultiply_avm_readdatavalid),
        .in_lm_simpleMultiply_avm_waitrequest(in_lm_simpleMultiply_avm_waitrequest),
        .in_lm_simpleMultiply_avm_writeack(in_lm_simpleMultiply_avm_writeack),
        .in_stall_in(simpleMultiply_B2_branch_out_stall_out),
        .in_sum_020(simpleMultiply_B2_merge_out_sum_020),
        .in_valid_in(simpleMultiply_B2_merge_out_valid_out),
        .in_widthA(in_widthA),
        .in_widthB(in_widthB),
        .out_c0_exe12(bb_simpleMultiply_B2_stall_region_out_c0_exe12),
        .out_c0_exe23(bb_simpleMultiply_B2_stall_region_out_c0_exe23),
        .out_c0_exe333(bb_simpleMultiply_B2_stall_region_out_c0_exe333),
        .out_c0_exe36(bb_simpleMultiply_B2_stall_region_out_c0_exe36),
        .out_c0_exe434(bb_simpleMultiply_B2_stall_region_out_c0_exe434),
        .out_c0_exe47(bb_simpleMultiply_B2_stall_region_out_c0_exe47),
        .out_c0_exe58(bb_simpleMultiply_B2_stall_region_out_c0_exe58),
        .out_c1_exe1(bb_simpleMultiply_B2_stall_region_out_c1_exe1),
        .out_lm8_simpleMultiply_avm_address(bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_address),
        .out_lm8_simpleMultiply_avm_burstcount(bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_burstcount),
        .out_lm8_simpleMultiply_avm_byteenable(bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_byteenable),
        .out_lm8_simpleMultiply_avm_enable(bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_enable),
        .out_lm8_simpleMultiply_avm_read(bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_read),
        .out_lm8_simpleMultiply_avm_write(bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_write),
        .out_lm8_simpleMultiply_avm_writedata(bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_writedata),
        .out_lm_simpleMultiply_avm_address(bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_address),
        .out_lm_simpleMultiply_avm_burstcount(bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_burstcount),
        .out_lm_simpleMultiply_avm_byteenable(bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_byteenable),
        .out_lm_simpleMultiply_avm_enable(bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_enable),
        .out_lm_simpleMultiply_avm_read(bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_read),
        .out_lm_simpleMultiply_avm_write(bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_write),
        .out_lm_simpleMultiply_avm_writedata(bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_writedata),
        .out_stall_out(bb_simpleMultiply_B2_stall_region_out_stall_out),
        .out_valid_out(bb_simpleMultiply_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // simpleMultiply_B2_branch(BLACKBOX,60)
    simpleMultiply_B2_branch thesimpleMultiply_B2_branch (
        .in_c0_exe12(bb_simpleMultiply_B2_stall_region_out_c0_exe12),
        .in_c0_exe23(bb_simpleMultiply_B2_stall_region_out_c0_exe23),
        .in_c0_exe333(bb_simpleMultiply_B2_stall_region_out_c0_exe333),
        .in_c0_exe36(bb_simpleMultiply_B2_stall_region_out_c0_exe36),
        .in_c0_exe434(bb_simpleMultiply_B2_stall_region_out_c0_exe434),
        .in_c0_exe47(bb_simpleMultiply_B2_stall_region_out_c0_exe47),
        .in_c0_exe58(bb_simpleMultiply_B2_stall_region_out_c0_exe58),
        .in_c1_exe1(bb_simpleMultiply_B2_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_simpleMultiply_B2_stall_region_out_valid_out),
        .out_c0_exe12(simpleMultiply_B2_branch_out_c0_exe12),
        .out_c0_exe23(simpleMultiply_B2_branch_out_c0_exe23),
        .out_c0_exe333(simpleMultiply_B2_branch_out_c0_exe333),
        .out_c0_exe36(simpleMultiply_B2_branch_out_c0_exe36),
        .out_c0_exe47(simpleMultiply_B2_branch_out_c0_exe47),
        .out_c0_exe58(simpleMultiply_B2_branch_out_c0_exe58),
        .out_c1_exe1(simpleMultiply_B2_branch_out_c1_exe1),
        .out_stall_out(simpleMultiply_B2_branch_out_stall_out),
        .out_valid_out_0(simpleMultiply_B2_branch_out_valid_out_0),
        .out_valid_out_1(simpleMultiply_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe12(GPOUT,35)
    assign out_c0_exe12 = simpleMultiply_B2_branch_out_c0_exe12;

    // out_c0_exe23(GPOUT,36)
    assign out_c0_exe23 = simpleMultiply_B2_branch_out_c0_exe23;

    // out_c0_exe333(GPOUT,37)
    assign out_c0_exe333 = simpleMultiply_B2_branch_out_c0_exe333;

    // out_c0_exe36(GPOUT,38)
    assign out_c0_exe36 = simpleMultiply_B2_branch_out_c0_exe36;

    // out_c0_exe47(GPOUT,39)
    assign out_c0_exe47 = simpleMultiply_B2_branch_out_c0_exe47;

    // out_c0_exe58(GPOUT,40)
    assign out_c0_exe58 = simpleMultiply_B2_branch_out_c0_exe58;

    // out_c1_exe1(GPOUT,41)
    assign out_c1_exe1 = simpleMultiply_B2_branch_out_c1_exe1;

    // out_lm8_simpleMultiply_avm_address(GPOUT,42)
    assign out_lm8_simpleMultiply_avm_address = bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_address;

    // out_lm8_simpleMultiply_avm_burstcount(GPOUT,43)
    assign out_lm8_simpleMultiply_avm_burstcount = bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_burstcount;

    // out_lm8_simpleMultiply_avm_byteenable(GPOUT,44)
    assign out_lm8_simpleMultiply_avm_byteenable = bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_byteenable;

    // out_lm8_simpleMultiply_avm_enable(GPOUT,45)
    assign out_lm8_simpleMultiply_avm_enable = bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_enable;

    // out_lm8_simpleMultiply_avm_read(GPOUT,46)
    assign out_lm8_simpleMultiply_avm_read = bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_read;

    // out_lm8_simpleMultiply_avm_write(GPOUT,47)
    assign out_lm8_simpleMultiply_avm_write = bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_write;

    // out_lm8_simpleMultiply_avm_writedata(GPOUT,48)
    assign out_lm8_simpleMultiply_avm_writedata = bb_simpleMultiply_B2_stall_region_out_lm8_simpleMultiply_avm_writedata;

    // out_lm_simpleMultiply_avm_address(GPOUT,49)
    assign out_lm_simpleMultiply_avm_address = bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_address;

    // out_lm_simpleMultiply_avm_burstcount(GPOUT,50)
    assign out_lm_simpleMultiply_avm_burstcount = bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_burstcount;

    // out_lm_simpleMultiply_avm_byteenable(GPOUT,51)
    assign out_lm_simpleMultiply_avm_byteenable = bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_byteenable;

    // out_lm_simpleMultiply_avm_enable(GPOUT,52)
    assign out_lm_simpleMultiply_avm_enable = bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_enable;

    // out_lm_simpleMultiply_avm_read(GPOUT,53)
    assign out_lm_simpleMultiply_avm_read = bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_read;

    // out_lm_simpleMultiply_avm_write(GPOUT,54)
    assign out_lm_simpleMultiply_avm_write = bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_write;

    // out_lm_simpleMultiply_avm_writedata(GPOUT,55)
    assign out_lm_simpleMultiply_avm_writedata = bb_simpleMultiply_B2_stall_region_out_lm_simpleMultiply_avm_writedata;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = simpleMultiply_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,57)
    assign out_stall_out_1 = simpleMultiply_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,58)
    assign out_valid_out_0 = simpleMultiply_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,59)
    assign out_valid_out_1 = simpleMultiply_B2_branch_out_valid_out_1;

endmodule
