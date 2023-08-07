// UVM for ALU verif
// top level module
// based on https://www.youtube.com/watch?v=2026Ei1wGTU

`timescale 1ns/1ns

import uvm_pkg::*;
`include "uvm_macros.svh";


// INCLUDE FILES

module top;

    // INSTANTIATION
    logic clk;

    alu dut(
        .clk(clk),
        .Reset(rst),
        .A(a),
        .B(b),
        .ALU_Sel(alu_sel),
        .ALU_Out(alu_out),
        .CarryOut(cout)
    );

    // generate clock
    initial begin
        clk = 0;
        #5;
        forever begin
            clk = ~clk;
            #2;
        end
    end

    // sim end condition
    initial begin
        #5000;
        $display("Simulation has ended.");
        $finish();
    end

    // dump waveform signals
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars();
    end


endmodule: top