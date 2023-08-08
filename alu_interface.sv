

interface alu_interface(
    input logic clk
);
    logic rst;
    logic a;
    logic b;
    logic alu_sel;
    logic alu_out;
    logic cout;

endinterface: alu_interface