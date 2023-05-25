source ../scripts/create_phy_cell.tcl

read_pin_pad_physical_constraints ../design_data/io.tdf
create_floorplan -core_utilization 0.8 -flip_first_row -left_io2core 18 -bottom_io2core 18 -right_io2core 18 -top_io2core 18

save_mw_cel -design "CHIP.CEL"
save_mw_cel -design "CHIP.CEL" -as "die_init"

create_fp_placement
#create_fp_placement -congestion_driven

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "Before_PNS"

derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}

create_fp_virtual_pad -nets VDD -point {40.0 75.0}
create_fp_virtual_pad -nets VDD -point {40.0  0.0}
create_fp_virtual_pad -nets VDD -point { 0.0 40.0}
create_fp_virtual_pad -nets VDD -point {80.0 40.0}
create_fp_virtual_pad -nets VSS -point {80.0 30.0}

set_fp_rail_constraints -add_layer -layer METAL5 -direction horizontal 
# -max_strap 10 -min_strap 5 -max_width 8 -min_width 4 -spacing minimum
set_fp_rail_constraints -add_layer -layer METAL4 -direction vertical
#  -max_strap 10 -min_strap 5 -max_width 8 -min_width 4 -spacing minimum
set_fp_rail_constraints -set_ring -nets {VDD VSS} -horizontal_ring_layer {METAL5} -vertical_ring_layer {METAL4} -ring_width 4 -extend_strap core_ring

synthesize_fp_rail -nets {VDD VSS} -voltage_supply 2 -synthesize_power_plan -power_budget 80

commit_fp_rail
remove_fp_virtual_pad -all

preroute_standard_cells -extend_for_multiple_connections -extension_gap 16 -connect horizontal -remove_floating_pieces -do_not_route_over_macros -fill_empty_rows -port_filter_mode off -cell_master_filter_mode off -cell_instance_filter_mode off -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "design_planning"
