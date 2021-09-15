write_verilog -unconnected_ports -diode_ports -wire_declaration -keep_backslash_before_hiersep -no_physical_only_cells CHIP_pr.v
write_sdf -version 2.0 -context verilog -load_delay net CHIP_pr.sdf

report_timing
report_power
