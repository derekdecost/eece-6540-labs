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

// SystemVerilog created from simpleMultiply_bb_B1
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_bb_B1 (
    input wire [31:0] in_c0_exe11_0,
    input wire [31:0] in_c0_exe24_0,
    input wire [0:0] in_c0_exe35_0,
    input wire [31:0] in_c1_exe19_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_outputC,
    input wire [0:0] in_stall_in_0,
    input wire [511:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest,
    input wire [0:0] in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [31:0] in_widthB,
    output wire [0:0] out_lsu_unnamed_simpleMultiply1_o_active,
    output wire [0:0] out_stall_out_0,
    output wire [32:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_address,
    output wire [4:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount,
    output wire [63:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_enable,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_read,
    output wire [0:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_write,
    output wire [511:0] out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_simpleMultiply_B1_stall_region_out_lsu_unnamed_simpleMultiply1_o_active;
    wire [0:0] bb_simpleMultiply_B1_stall_region_out_stall_out;
    wire [32:0] bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;
    wire [4:0] bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;
    wire [63:0] bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;
    wire [0:0] bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;
    wire [0:0] bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;
    wire [0:0] bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;
    wire [511:0] bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;
    wire [0:0] bb_simpleMultiply_B1_stall_region_out_valid_out;
    wire [0:0] simpleMultiply_B1_branch_out_stall_out;
    wire [0:0] simpleMultiply_B1_branch_out_valid_out_0;
    wire [31:0] simpleMultiply_B1_merge_out_c0_exe11;
    wire [31:0] simpleMultiply_B1_merge_out_c0_exe24;
    wire [0:0] simpleMultiply_B1_merge_out_c0_exe35;
    wire [31:0] simpleMultiply_B1_merge_out_c1_exe19;
    wire [0:0] simpleMultiply_B1_merge_out_stall_out_0;
    wire [0:0] simpleMultiply_B1_merge_out_valid_out;


    // simpleMultiply_B1_branch(BLACKBOX,26)
    simpleMultiply_B1_branch thesimpleMultiply_B1_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_simpleMultiply_B1_stall_region_out_valid_out),
        .out_stall_out(simpleMultiply_B1_branch_out_stall_out),
        .out_valid_out_0(simpleMultiply_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // simpleMultiply_B1_merge(BLACKBOX,27)
    simpleMultiply_B1_merge thesimpleMultiply_B1_merge (
        .in_c0_exe11_0(in_c0_exe11_0),
        .in_c0_exe24_0(in_c0_exe24_0),
        .in_c0_exe35_0(in_c0_exe35_0),
        .in_c1_exe19_0(in_c1_exe19_0),
        .in_stall_in(bb_simpleMultiply_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe11(simpleMultiply_B1_merge_out_c0_exe11),
        .out_c0_exe24(simpleMultiply_B1_merge_out_c0_exe24),
        .out_c0_exe35(simpleMultiply_B1_merge_out_c0_exe35),
        .out_c1_exe19(simpleMultiply_B1_merge_out_c1_exe19),
        .out_stall_out_0(simpleMultiply_B1_merge_out_stall_out_0),
        .out_valid_out(simpleMultiply_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_simpleMultiply_B1_stall_region(BLACKBOX,2)
    simpleMultiply_bb_B1_stall_region thebb_simpleMultiply_B1_stall_region (
        .in_c0_exe11(simpleMultiply_B1_merge_out_c0_exe11),
        .in_c0_exe24(simpleMultiply_B1_merge_out_c0_exe24),
        .in_c0_exe35(simpleMultiply_B1_merge_out_c0_exe35),
        .in_c1_exe19(simpleMultiply_B1_merge_out_c1_exe19),
        .in_flush(in_flush),
        .in_outputC(in_outputC),
        .in_stall_in(simpleMultiply_B1_branch_out_stall_out),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata(in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid(in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest(in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack(in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack),
        .in_valid_in(simpleMultiply_B1_merge_out_valid_out),
        .in_widthB(in_widthB),
        .out_lsu_unnamed_simpleMultiply1_o_active(bb_simpleMultiply_B1_stall_region_out_lsu_unnamed_simpleMultiply1_o_active),
        .out_stall_out(bb_simpleMultiply_B1_stall_region_out_stall_out),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_address(bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_address),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount(bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable(bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_enable(bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_read(bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_read),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_write(bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_write),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata(bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata),
        .out_valid_out(bb_simpleMultiply_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lsu_unnamed_simpleMultiply1_o_active(GPOUT,16)
    assign out_lsu_unnamed_simpleMultiply1_o_active = bb_simpleMultiply_B1_stall_region_out_lsu_unnamed_simpleMultiply1_o_active;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = simpleMultiply_B1_merge_out_stall_out_0;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_address(GPOUT,18)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_address = bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount(GPOUT,19)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount = bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable(GPOUT,20)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable = bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_enable(GPOUT,21)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_enable = bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_read(GPOUT,22)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_read = bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_write(GPOUT,23)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_write = bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;

    // out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata(GPOUT,24)
    assign out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata = bb_simpleMultiply_B1_stall_region_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = simpleMultiply_B1_branch_out_valid_out_0;

endmodule
