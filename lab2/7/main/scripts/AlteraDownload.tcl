# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
    if {[string compare $quartus(project) "LogisimToplevelShell"]} {
        puts "Project LogisimToplevelShell is not open"
        set make_assignments 0
    }
} else {
    # Only open if not already open
    if {[project_exists LogisimToplevelShell]} {
        project_open -revision LogisimToplevelShell LogisimToplevelShell
    } else {
        project_new -revision LogisimToplevelShell LogisimToplevelShell
    }
    set need_to_close_project 1
}
# Make assignments
if {$make_assignments} {
    set_global_assignment -name FAMILY "Cyclone V"
    set_global_assignment -name DEVICE 5CSEMA5F31C6
    set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
    set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
    set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
    set_global_assignment -name FMAX_REQUIREMENT "50 MHz "
    set_global_assignment -name RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
    set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"

    # Include all entities and gates

    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/gates/AND_GATE.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/gates/OR_GATE_4_INPUTS.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/gates/OR_GATE_5_INPUTS.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/gates/AND_GATE_3_INPUTS.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/gates/OR_GATE_6_INPUTS.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/gates/NOT_GATE.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/H1.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/H5.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/H2.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/H6.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/main.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/H3.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/H0.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/circuit/H4.v"
    set_global_assignment -name VERILOG_FILE "/Users/yansongwang/Desktop/csc258/lab2//Untitled_2/main/verilog/toplevel/LogisimToplevelShell.v"

    # Map fpga_clk and ionets to fpga pins
    # Commit assignments
    export_assignments

    # Close project
    if {$need_to_close_project} {
        project_close
    }
}
