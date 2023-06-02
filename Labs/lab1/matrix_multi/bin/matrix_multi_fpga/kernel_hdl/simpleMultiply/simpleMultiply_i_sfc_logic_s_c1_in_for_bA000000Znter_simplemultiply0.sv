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

// SystemVerilog created from simpleMultiply_i_sfc_logic_s_c1_in_for_bA000000Znter_simplemultiply0
// SystemVerilog created on Wed May 31 18:52:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module simpleMultiply_i_sfc_logic_s_c1_in_for_bA000000Znter_simplemultiply0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_simpleMultiply0,
    input wire [0:0] in_c1_eni3_0_tpl,
    input wire [31:0] in_c1_eni3_1_tpl,
    input wire [31:0] in_c1_eni3_2_tpl,
    input wire [31:0] in_c1_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_simplemultiply2_out_primWireOut;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together7_aunroll_x_in_i_valid_4(DELAY,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist0_sync_together7_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist0_sync_together7_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist0_sync_together7_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together7_aunroll_x_in_i_valid_4_delay_1 <= redist0_sync_together7_aunroll_x_in_i_valid_4_delay_0;
            redist0_sync_together7_aunroll_x_in_i_valid_4_delay_2 <= redist0_sync_together7_aunroll_x_in_i_valid_4_delay_1;
            redist0_sync_together7_aunroll_x_in_i_valid_4_q <= redist0_sync_together7_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add_simplemultiply2(BLACKBOX,3)@170
    // out out_primWireOut@174
    simpleMultiply_flt_i_sfc_logic_s_c1_in_fA000000Zxk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_simplemultiply2 (
        .in_0(in_c1_eni3_2_tpl),
        .in_1(in_c1_eni3_3_tpl),
        .in_2(in_c1_eni3_1_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_simplemultiply2_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@174
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_llvm_fpga_fp_multadd_mult_add_simplemultiply2_out_primWireOut;
    assign out_o_valid = redist0_sync_together7_aunroll_x_in_i_valid_4_q;
    assign out_unnamed_simpleMultiply0 = GND_q;

endmodule
