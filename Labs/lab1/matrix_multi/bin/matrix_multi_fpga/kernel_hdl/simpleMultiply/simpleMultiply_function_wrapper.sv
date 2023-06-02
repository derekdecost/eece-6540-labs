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

// SystemVerilog created from simpleMultiply_function_wrapper
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_function_wrapper (
    input wire [511:0] avm_lm8_simpleMultiply_readdata,
    input wire [0:0] avm_lm8_simpleMultiply_readdatavalid,
    input wire [0:0] avm_lm8_simpleMultiply_waitrequest,
    input wire [0:0] avm_lm8_simpleMultiply_writeack,
    input wire [511:0] avm_lm_simpleMultiply_readdata,
    input wire [0:0] avm_lm_simpleMultiply_readdatavalid,
    input wire [0:0] avm_lm_simpleMultiply_waitrequest,
    input wire [0:0] avm_lm_simpleMultiply_writeack,
    input wire [511:0] avm_unnamed_simpleMultiply1_simpleMultiply_readdata,
    input wire [0:0] avm_unnamed_simpleMultiply1_simpleMultiply_readdatavalid,
    input wire [0:0] avm_unnamed_simpleMultiply1_simpleMultiply_waitrequest,
    input wire [0:0] avm_unnamed_simpleMultiply1_simpleMultiply_writeack,
    input wire [0:0] clock2x,
    input wire [63:0] global_id_0,
    input wire [63:0] global_id_1,
    input wire [63:0] global_id_2,
    input wire [63:0] global_offset_0,
    input wire [63:0] global_offset_1,
    input wire [63:0] global_offset_2,
    input wire [63:0] global_size_0,
    input wire [63:0] global_size_1,
    input wire [63:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [319:0] kernel_arguments,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [32:0] avm_lm8_simpleMultiply_address,
    output wire [4:0] avm_lm8_simpleMultiply_burstcount,
    output wire [63:0] avm_lm8_simpleMultiply_byteenable,
    output wire [0:0] avm_lm8_simpleMultiply_enable,
    output wire [0:0] avm_lm8_simpleMultiply_read,
    output wire [0:0] avm_lm8_simpleMultiply_write,
    output wire [511:0] avm_lm8_simpleMultiply_writedata,
    output wire [32:0] avm_lm_simpleMultiply_address,
    output wire [4:0] avm_lm_simpleMultiply_burstcount,
    output wire [63:0] avm_lm_simpleMultiply_byteenable,
    output wire [0:0] avm_lm_simpleMultiply_enable,
    output wire [0:0] avm_lm_simpleMultiply_read,
    output wire [0:0] avm_lm_simpleMultiply_write,
    output wire [511:0] avm_lm_simpleMultiply_writedata,
    output wire [32:0] avm_unnamed_simpleMultiply1_simpleMultiply_address,
    output wire [4:0] avm_unnamed_simpleMultiply1_simpleMultiply_burstcount,
    output wire [63:0] avm_unnamed_simpleMultiply1_simpleMultiply_byteenable,
    output wire [0:0] avm_unnamed_simpleMultiply1_simpleMultiply_enable,
    output wire [0:0] avm_unnamed_simpleMultiply1_simpleMultiply_read,
    output wire [0:0] avm_unnamed_simpleMultiply1_simpleMultiply_write,
    output wire [511:0] avm_unnamed_simpleMultiply1_simpleMultiply_writedata,
    output wire [0:0] clock2x_output,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] acl_clock2x_dummy_consumer_clock2x;
    wire acl_clock2x_dummy_consumer_clock2x_bitsignaltemp;
    wire [0:0] acl_clock2x_dummy_consumer_myout;
    wire acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    wire [31:0] arg_heightA_select_b;
    wire [31:0] arg_heightB_select_b;
    wire [63:0] arg_inputA_select_b;
    wire [63:0] arg_inputB_select_b;
    wire [63:0] arg_outputC_select_b;
    wire [31:0] arg_widthA_select_b;
    wire [31:0] arg_widthB_select_b;
    wire [32:0] simpleMultiply_function_out_lm8_simpleMultiply_avm_address;
    wire [4:0] simpleMultiply_function_out_lm8_simpleMultiply_avm_burstcount;
    wire [63:0] simpleMultiply_function_out_lm8_simpleMultiply_avm_byteenable;
    wire [0:0] simpleMultiply_function_out_lm8_simpleMultiply_avm_enable;
    wire [0:0] simpleMultiply_function_out_lm8_simpleMultiply_avm_read;
    wire [0:0] simpleMultiply_function_out_lm8_simpleMultiply_avm_write;
    wire [511:0] simpleMultiply_function_out_lm8_simpleMultiply_avm_writedata;
    wire [32:0] simpleMultiply_function_out_lm_simpleMultiply_avm_address;
    wire [4:0] simpleMultiply_function_out_lm_simpleMultiply_avm_burstcount;
    wire [63:0] simpleMultiply_function_out_lm_simpleMultiply_avm_byteenable;
    wire [0:0] simpleMultiply_function_out_lm_simpleMultiply_avm_enable;
    wire [0:0] simpleMultiply_function_out_lm_simpleMultiply_avm_read;
    wire [0:0] simpleMultiply_function_out_lm_simpleMultiply_avm_write;
    wire [511:0] simpleMultiply_function_out_lm_simpleMultiply_avm_writedata;
    wire [0:0] simpleMultiply_function_out_o_active_unnamed_simpleMultiply1;
    wire [0:0] simpleMultiply_function_out_stall_out;
    wire [32:0] simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;
    wire [4:0] simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;
    wire [63:0] simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;
    wire [0:0] simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;
    wire [0:0] simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;
    wire [0:0] simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;
    wire [511:0] simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;
    wire [0:0] simpleMultiply_function_out_valid_out;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_widthB_select(BITSELECT,9)
    assign arg_widthB_select_b = kernel_arguments[159:128];

    // arg_widthA_select(BITSELECT,8)
    assign arg_widthA_select_b = kernel_arguments[95:64];

    // arg_outputC_select(BITSELECT,7)
    assign arg_outputC_select_b = kernel_arguments[63:0];

    // arg_inputB_select(BITSELECT,6)
    assign arg_inputB_select_b = kernel_arguments[319:256];

    // arg_inputA_select(BITSELECT,5)
    assign arg_inputA_select_b = kernel_arguments[255:192];

    // arg_heightB_select(BITSELECT,4)
    assign arg_heightB_select_b = kernel_arguments[191:160];

    // arg_heightA_select(BITSELECT,3)
    assign arg_heightA_select_b = kernel_arguments[127:96];

    // simpleMultiply_function(BLACKBOX,87)
    simpleMultiply_function thesimpleMultiply_function (
        .in_arg_acl_global_id_0(global_id_0),
        .in_arg_acl_global_id_1(global_id_1),
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_heightA(arg_heightA_select_b),
        .in_arg_heightB(arg_heightB_select_b),
        .in_arg_inputA(arg_inputA_select_b),
        .in_arg_inputB(arg_inputB_select_b),
        .in_arg_outputC(arg_outputC_select_b),
        .in_arg_widthA(arg_widthA_select_b),
        .in_arg_widthB(arg_widthB_select_b),
        .in_lm8_simpleMultiply_avm_readdata(avm_lm8_simpleMultiply_readdata),
        .in_lm8_simpleMultiply_avm_readdatavalid(avm_lm8_simpleMultiply_readdatavalid),
        .in_lm8_simpleMultiply_avm_waitrequest(avm_lm8_simpleMultiply_waitrequest),
        .in_lm8_simpleMultiply_avm_writeack(avm_lm8_simpleMultiply_writeack),
        .in_lm_simpleMultiply_avm_readdata(avm_lm_simpleMultiply_readdata),
        .in_lm_simpleMultiply_avm_readdatavalid(avm_lm_simpleMultiply_readdatavalid),
        .in_lm_simpleMultiply_avm_waitrequest(avm_lm_simpleMultiply_waitrequest),
        .in_lm_simpleMultiply_avm_writeack(avm_lm_simpleMultiply_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdata(avm_unnamed_simpleMultiply1_simpleMultiply_readdata),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_readdatavalid(avm_unnamed_simpleMultiply1_simpleMultiply_readdatavalid),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_waitrequest(avm_unnamed_simpleMultiply1_simpleMultiply_waitrequest),
        .in_unnamed_simpleMultiply1_simpleMultiply_avm_writeack(avm_unnamed_simpleMultiply1_simpleMultiply_writeack),
        .in_valid_in(kernel_valid_in),
        .out_lm8_simpleMultiply_avm_address(simpleMultiply_function_out_lm8_simpleMultiply_avm_address),
        .out_lm8_simpleMultiply_avm_burstcount(simpleMultiply_function_out_lm8_simpleMultiply_avm_burstcount),
        .out_lm8_simpleMultiply_avm_byteenable(simpleMultiply_function_out_lm8_simpleMultiply_avm_byteenable),
        .out_lm8_simpleMultiply_avm_enable(simpleMultiply_function_out_lm8_simpleMultiply_avm_enable),
        .out_lm8_simpleMultiply_avm_read(simpleMultiply_function_out_lm8_simpleMultiply_avm_read),
        .out_lm8_simpleMultiply_avm_write(simpleMultiply_function_out_lm8_simpleMultiply_avm_write),
        .out_lm8_simpleMultiply_avm_writedata(simpleMultiply_function_out_lm8_simpleMultiply_avm_writedata),
        .out_lm_simpleMultiply_avm_address(simpleMultiply_function_out_lm_simpleMultiply_avm_address),
        .out_lm_simpleMultiply_avm_burstcount(simpleMultiply_function_out_lm_simpleMultiply_avm_burstcount),
        .out_lm_simpleMultiply_avm_byteenable(simpleMultiply_function_out_lm_simpleMultiply_avm_byteenable),
        .out_lm_simpleMultiply_avm_enable(simpleMultiply_function_out_lm_simpleMultiply_avm_enable),
        .out_lm_simpleMultiply_avm_read(simpleMultiply_function_out_lm_simpleMultiply_avm_read),
        .out_lm_simpleMultiply_avm_write(simpleMultiply_function_out_lm_simpleMultiply_avm_write),
        .out_lm_simpleMultiply_avm_writedata(simpleMultiply_function_out_lm_simpleMultiply_avm_writedata),
        .out_o_active_unnamed_simpleMultiply1(simpleMultiply_function_out_o_active_unnamed_simpleMultiply1),
        .out_stall_out(simpleMultiply_function_out_stall_out),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_address(simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_address),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount(simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable(simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_enable(simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_read(simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_read),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_write(simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_write),
        .out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata(simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata),
        .out_valid_out(simpleMultiply_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm8_simpleMultiply_address(GPOUT,61)
    assign avm_lm8_simpleMultiply_address = simpleMultiply_function_out_lm8_simpleMultiply_avm_address;

    // avm_lm8_simpleMultiply_burstcount(GPOUT,62)
    assign avm_lm8_simpleMultiply_burstcount = simpleMultiply_function_out_lm8_simpleMultiply_avm_burstcount;

    // avm_lm8_simpleMultiply_byteenable(GPOUT,63)
    assign avm_lm8_simpleMultiply_byteenable = simpleMultiply_function_out_lm8_simpleMultiply_avm_byteenable;

    // avm_lm8_simpleMultiply_enable(GPOUT,64)
    assign avm_lm8_simpleMultiply_enable = simpleMultiply_function_out_lm8_simpleMultiply_avm_enable;

    // avm_lm8_simpleMultiply_read(GPOUT,65)
    assign avm_lm8_simpleMultiply_read = simpleMultiply_function_out_lm8_simpleMultiply_avm_read;

    // avm_lm8_simpleMultiply_write(GPOUT,66)
    assign avm_lm8_simpleMultiply_write = simpleMultiply_function_out_lm8_simpleMultiply_avm_write;

    // avm_lm8_simpleMultiply_writedata(GPOUT,67)
    assign avm_lm8_simpleMultiply_writedata = simpleMultiply_function_out_lm8_simpleMultiply_avm_writedata;

    // avm_lm_simpleMultiply_address(GPOUT,68)
    assign avm_lm_simpleMultiply_address = simpleMultiply_function_out_lm_simpleMultiply_avm_address;

    // avm_lm_simpleMultiply_burstcount(GPOUT,69)
    assign avm_lm_simpleMultiply_burstcount = simpleMultiply_function_out_lm_simpleMultiply_avm_burstcount;

    // avm_lm_simpleMultiply_byteenable(GPOUT,70)
    assign avm_lm_simpleMultiply_byteenable = simpleMultiply_function_out_lm_simpleMultiply_avm_byteenable;

    // avm_lm_simpleMultiply_enable(GPOUT,71)
    assign avm_lm_simpleMultiply_enable = simpleMultiply_function_out_lm_simpleMultiply_avm_enable;

    // avm_lm_simpleMultiply_read(GPOUT,72)
    assign avm_lm_simpleMultiply_read = simpleMultiply_function_out_lm_simpleMultiply_avm_read;

    // avm_lm_simpleMultiply_write(GPOUT,73)
    assign avm_lm_simpleMultiply_write = simpleMultiply_function_out_lm_simpleMultiply_avm_write;

    // avm_lm_simpleMultiply_writedata(GPOUT,74)
    assign avm_lm_simpleMultiply_writedata = simpleMultiply_function_out_lm_simpleMultiply_avm_writedata;

    // avm_unnamed_simpleMultiply1_simpleMultiply_address(GPOUT,75)
    assign avm_unnamed_simpleMultiply1_simpleMultiply_address = simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_address;

    // avm_unnamed_simpleMultiply1_simpleMultiply_burstcount(GPOUT,76)
    assign avm_unnamed_simpleMultiply1_simpleMultiply_burstcount = simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_burstcount;

    // avm_unnamed_simpleMultiply1_simpleMultiply_byteenable(GPOUT,77)
    assign avm_unnamed_simpleMultiply1_simpleMultiply_byteenable = simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_byteenable;

    // avm_unnamed_simpleMultiply1_simpleMultiply_enable(GPOUT,78)
    assign avm_unnamed_simpleMultiply1_simpleMultiply_enable = simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_enable;

    // avm_unnamed_simpleMultiply1_simpleMultiply_read(GPOUT,79)
    assign avm_unnamed_simpleMultiply1_simpleMultiply_read = simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_read;

    // avm_unnamed_simpleMultiply1_simpleMultiply_write(GPOUT,80)
    assign avm_unnamed_simpleMultiply1_simpleMultiply_write = simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_write;

    // avm_unnamed_simpleMultiply1_simpleMultiply_writedata(GPOUT,81)
    assign avm_unnamed_simpleMultiply1_simpleMultiply_writedata = simpleMultiply_function_out_unnamed_simpleMultiply1_simpleMultiply_avm_writedata;

    // acl_clock2x_dummy_consumer(EXTIFACE,2)
    assign acl_clock2x_dummy_consumer_clock2x = clock2x;
    assign acl_clock2x_dummy_consumer_clock2x_bitsignaltemp = acl_clock2x_dummy_consumer_clock2x[0];
    assign acl_clock2x_dummy_consumer_myout[0] = acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    acl_clock2x_holder theacl_clock2x_dummy_consumer (
        .clock2x(acl_clock2x_dummy_consumer_clock2x_bitsignaltemp),
        .myout(acl_clock2x_dummy_consumer_myout_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // clock2x_output(GPOUT,82)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,83)
    assign has_a_lsu_active = simpleMultiply_function_out_o_active_unnamed_simpleMultiply1;

    // has_a_write_pending(GPOUT,84)
    assign has_a_write_pending = simpleMultiply_function_out_o_active_unnamed_simpleMultiply1;

    // kernel_stall_out(GPOUT,85)
    assign kernel_stall_out = simpleMultiply_function_out_stall_out;

    // kernel_valid_out(GPOUT,86)
    assign kernel_valid_out = simpleMultiply_function_out_valid_out;

endmodule
