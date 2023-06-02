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

// SystemVerilog created from simpleMultiply_bb_B0
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_bb_B0 (
    input wire [63:0] in_acl_global_id_0_0,
    input wire [63:0] in_acl_global_id_1_0,
    input wire [63:0] in_inputA,
    input wire [63:0] in_inputB,
    input wire [63:0] in_outputC,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [31:0] in_widthA,
    input wire [31:0] in_widthB,
    output wire [31:0] out_c0_exe1,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_simpleMultiply_B0_stall_region_out_c0_exe1;
    wire [31:0] bb_simpleMultiply_B0_stall_region_out_c0_exe2;
    wire [0:0] bb_simpleMultiply_B0_stall_region_out_c0_exe3;
    wire [31:0] bb_simpleMultiply_B0_stall_region_out_c0_exe4;
    wire [0:0] bb_simpleMultiply_B0_stall_region_out_c0_exe5;
    wire [0:0] bb_simpleMultiply_B0_stall_region_out_stall_out;
    wire [0:0] bb_simpleMultiply_B0_stall_region_out_valid_out;
    wire [31:0] simpleMultiply_B0_branch_out_c0_exe1;
    wire [31:0] simpleMultiply_B0_branch_out_c0_exe2;
    wire [0:0] simpleMultiply_B0_branch_out_c0_exe3;
    wire [31:0] simpleMultiply_B0_branch_out_c0_exe4;
    wire [0:0] simpleMultiply_B0_branch_out_c0_exe5;
    wire [0:0] simpleMultiply_B0_branch_out_stall_out;
    wire [0:0] simpleMultiply_B0_branch_out_valid_out_0;
    wire [63:0] simpleMultiply_B0_merge_out_acl_global_id_0;
    wire [63:0] simpleMultiply_B0_merge_out_acl_global_id_1;
    wire [0:0] simpleMultiply_B0_merge_out_stall_out_0;
    wire [0:0] simpleMultiply_B0_merge_out_valid_out;


    // simpleMultiply_B0_merge(BLACKBOX,20)
    simpleMultiply_B0_merge thesimpleMultiply_B0_merge (
        .in_acl_global_id_0_0(in_acl_global_id_0_0),
        .in_acl_global_id_1_0(in_acl_global_id_1_0),
        .in_stall_in(bb_simpleMultiply_B0_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_acl_global_id_0(simpleMultiply_B0_merge_out_acl_global_id_0),
        .out_acl_global_id_1(simpleMultiply_B0_merge_out_acl_global_id_1),
        .out_stall_out_0(simpleMultiply_B0_merge_out_stall_out_0),
        .out_valid_out(simpleMultiply_B0_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B0_stall_region(BLACKBOX,2)
    simpleMultiply_bb_B0_stall_region thebb_simpleMultiply_B0_stall_region (
        .in_acl_global_id_0(simpleMultiply_B0_merge_out_acl_global_id_0),
        .in_acl_global_id_1(simpleMultiply_B0_merge_out_acl_global_id_1),
        .in_stall_in(simpleMultiply_B0_branch_out_stall_out),
        .in_valid_in(simpleMultiply_B0_merge_out_valid_out),
        .in_widthA(in_widthA),
        .out_c0_exe1(bb_simpleMultiply_B0_stall_region_out_c0_exe1),
        .out_c0_exe2(bb_simpleMultiply_B0_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_simpleMultiply_B0_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_simpleMultiply_B0_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_simpleMultiply_B0_stall_region_out_c0_exe5),
        .out_stall_out(bb_simpleMultiply_B0_stall_region_out_stall_out),
        .out_valid_out(bb_simpleMultiply_B0_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // simpleMultiply_B0_branch(BLACKBOX,19)
    simpleMultiply_B0_branch thesimpleMultiply_B0_branch (
        .in_c0_exe1(bb_simpleMultiply_B0_stall_region_out_c0_exe1),
        .in_c0_exe2(bb_simpleMultiply_B0_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_simpleMultiply_B0_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_simpleMultiply_B0_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_simpleMultiply_B0_stall_region_out_c0_exe5),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_simpleMultiply_B0_stall_region_out_valid_out),
        .out_c0_exe1(simpleMultiply_B0_branch_out_c0_exe1),
        .out_c0_exe2(simpleMultiply_B0_branch_out_c0_exe2),
        .out_c0_exe3(simpleMultiply_B0_branch_out_c0_exe3),
        .out_c0_exe4(simpleMultiply_B0_branch_out_c0_exe4),
        .out_c0_exe5(simpleMultiply_B0_branch_out_c0_exe5),
        .out_stall_out(simpleMultiply_B0_branch_out_stall_out),
        .out_valid_out_0(simpleMultiply_B0_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,12)
    assign out_c0_exe1 = simpleMultiply_B0_branch_out_c0_exe1;

    // out_c0_exe2(GPOUT,13)
    assign out_c0_exe2 = simpleMultiply_B0_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,14)
    assign out_c0_exe3 = simpleMultiply_B0_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,15)
    assign out_c0_exe4 = simpleMultiply_B0_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,16)
    assign out_c0_exe5 = simpleMultiply_B0_branch_out_c0_exe5;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = simpleMultiply_B0_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = simpleMultiply_B0_branch_out_valid_out_0;

endmodule
