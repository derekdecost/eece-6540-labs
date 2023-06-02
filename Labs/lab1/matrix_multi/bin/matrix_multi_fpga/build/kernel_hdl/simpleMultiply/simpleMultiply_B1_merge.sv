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

// SystemVerilog created from simpleMultiply_B1_merge
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_B1_merge (
    input wire [31:0] in_c0_exe11_0,
    input wire [31:0] in_c0_exe24_0,
    input wire [0:0] in_c0_exe35_0,
    input wire [31:0] in_c1_exe19_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe24,
    output wire [0:0] out_c0_exe35,
    output wire [31:0] out_c1_exe19,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe11(GPOUT,8)
    assign out_c0_exe11 = in_c0_exe11_0;

    // out_c0_exe24(GPOUT,9)
    assign out_c0_exe24 = in_c0_exe24_0;

    // out_c0_exe35(GPOUT,10)
    assign out_c0_exe35 = in_c0_exe35_0;

    // out_c1_exe19(GPOUT,11)
    assign out_c1_exe19 = in_c1_exe19_0;

    // stall_out(LOGICAL,14)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,13)
    assign out_valid_out = in_valid_in_0;

endmodule
