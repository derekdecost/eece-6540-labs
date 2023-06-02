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

// SystemVerilog created from simpleMultiply_B2_merge
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_B2_merge (
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
    input wire [31:0] in_i_021_0,
    input wire [31:0] in_i_021_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sum_020_0,
    input wire [31:0] in_sum_020_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe23,
    output wire [0:0] out_c0_exe36,
    output wire [31:0] out_c0_exe47,
    output wire [0:0] out_c0_exe58,
    output wire [31:0] out_i_021,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sum_020,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe12_mux_s;
    reg [31:0] c0_exe12_mux_q;
    wire [0:0] c0_exe23_mux_s;
    reg [31:0] c0_exe23_mux_q;
    wire [0:0] c0_exe36_mux_s;
    reg [0:0] c0_exe36_mux_q;
    wire [0:0] c0_exe47_mux_s;
    reg [31:0] c0_exe47_mux_q;
    wire [0:0] c0_exe58_mux_s;
    reg [0:0] c0_exe58_mux_q;
    wire [0:0] i_021_mux_s;
    reg [31:0] i_021_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sum_020_mux_s;
    reg [31:0] sum_020_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c0_exe12_mux(MUX,2)
    assign c0_exe12_mux_s = in_valid_in_0;
    always @(c0_exe12_mux_s or in_c0_exe12_1 or in_c0_exe12_0)
    begin
        unique case (c0_exe12_mux_s)
            1'b0 : c0_exe12_mux_q = in_c0_exe12_1;
            1'b1 : c0_exe12_mux_q = in_c0_exe12_0;
            default : c0_exe12_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe12(GPOUT,25)
    assign out_c0_exe12 = c0_exe12_mux_q;

    // c0_exe23_mux(MUX,3)
    assign c0_exe23_mux_s = in_valid_in_0;
    always @(c0_exe23_mux_s or in_c0_exe23_1 or in_c0_exe23_0)
    begin
        unique case (c0_exe23_mux_s)
            1'b0 : c0_exe23_mux_q = in_c0_exe23_1;
            1'b1 : c0_exe23_mux_q = in_c0_exe23_0;
            default : c0_exe23_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe23(GPOUT,26)
    assign out_c0_exe23 = c0_exe23_mux_q;

    // c0_exe36_mux(MUX,4)
    assign c0_exe36_mux_s = in_valid_in_0;
    always @(c0_exe36_mux_s or in_c0_exe36_1 or in_c0_exe36_0)
    begin
        unique case (c0_exe36_mux_s)
            1'b0 : c0_exe36_mux_q = in_c0_exe36_1;
            1'b1 : c0_exe36_mux_q = in_c0_exe36_0;
            default : c0_exe36_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe36(GPOUT,27)
    assign out_c0_exe36 = c0_exe36_mux_q;

    // c0_exe47_mux(MUX,5)
    assign c0_exe47_mux_s = in_valid_in_0;
    always @(c0_exe47_mux_s or in_c0_exe47_1 or in_c0_exe47_0)
    begin
        unique case (c0_exe47_mux_s)
            1'b0 : c0_exe47_mux_q = in_c0_exe47_1;
            1'b1 : c0_exe47_mux_q = in_c0_exe47_0;
            default : c0_exe47_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe47(GPOUT,28)
    assign out_c0_exe47 = c0_exe47_mux_q;

    // c0_exe58_mux(MUX,6)
    assign c0_exe58_mux_s = in_valid_in_0;
    always @(c0_exe58_mux_s or in_c0_exe58_1 or in_c0_exe58_0)
    begin
        unique case (c0_exe58_mux_s)
            1'b0 : c0_exe58_mux_q = in_c0_exe58_1;
            1'b1 : c0_exe58_mux_q = in_c0_exe58_0;
            default : c0_exe58_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe58(GPOUT,29)
    assign out_c0_exe58 = c0_exe58_mux_q;

    // i_021_mux(MUX,7)
    assign i_021_mux_s = in_valid_in_0;
    always @(i_021_mux_s or in_i_021_1 or in_i_021_0)
    begin
        unique case (i_021_mux_s)
            1'b0 : i_021_mux_q = in_i_021_1;
            1'b1 : i_021_mux_q = in_i_021_0;
            default : i_021_mux_q = 32'b0;
        endcase
    end

    // out_i_021(GPOUT,30)
    assign out_i_021 = i_021_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,35)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,36)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // sum_020_mux(MUX,37)
    assign sum_020_mux_s = in_valid_in_0;
    always @(sum_020_mux_s or in_sum_020_1 or in_sum_020_0)
    begin
        unique case (sum_020_mux_s)
            1'b0 : sum_020_mux_q = in_sum_020_1;
            1'b1 : sum_020_mux_q = in_sum_020_0;
            default : sum_020_mux_q = 32'b0;
        endcase
    end

    // out_sum_020(GPOUT,33)
    assign out_sum_020 = sum_020_mux_q;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = valid_or_q;

endmodule
