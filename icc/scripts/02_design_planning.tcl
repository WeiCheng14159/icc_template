### Config
set RING_GAP 14

source ../scripts/create_phy_cell.tcl

read_pin_pad_physical_constraints ../design_data/io.tdf
create_floorplan -core_utilization 0.7 -flip_first_row -left_io2core 90.0 -bottom_io2core 90.0 -right_io2core 90.0 -top_io2core 90.0

insert_pad_filler -cell {EMPTY16D EMPTY8D EMPTY4D EMPTY2D EMPTY1D} -overlap_cell {EMPTY1D}

save_mw_cel -design "CHIP.CEL"
save_mw_cel -design "CHIP.CEL" -as "die_init"

create_fp_placement
#create_fp_placement -congestion_driven

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "Before_PNS"

derive_pg_connection -power_net {VCC} -ground_net {GND} -power_pin {VCC} -ground_pin {GND}

set_fp_rail_constraints -add_layer  -layer metal2 -direction vertical -max_strap 6 -min_strap 4 -max_width 8 -min_width 8 -spacing minimum
set_fp_rail_constraints -add_layer  -layer metal3 -direction horizontal -max_strap 6 -min_strap 4 -max_width 8 -min_width 8 -spacing minimum
set_fp_rail_constraints  -set_ring -nets  {VCC GND VCC GND VCC GND}  -horizontal_ring_layer { metal3 } -vertical_ring_layer { metal2 } -ring_width 8 -ring_spacing 3 -extend_strap core_ring

set_fp_rail_constraints -set_global -no_routing_over_hard_macros
synthesize_fp_rail -nets {VCC GND} -voltage_supply 1.8 -synthesize_power_plan -power_budget 2.00
commit_fp_rail

set_preroute_drc_strategy -use_fat_via -min_layer metal1 -max_layer metal6

preroute_instances  -ignore_macros -ignore_cover_cells -primary_routing_layer pin -extend_for_multiple_connections -extension_gap $RING_GAP

preroute_standard_cells -extend_for_multiple_connections  -extension_gap $RING_GAP -connect horizontal  -remove_floating_pieces  -do_not_route_over_macros  -fill_empty_rows  -port_filter_mode off -cell_master_filter_mode off -cell_instance_filter_mode off -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}

analyze_fp_rail -nets {VCC GND} -power_budget 2.00 -voltage_supply 1.8

set_pnet_options -complete "metal2 metal3"
create_fp_placement -incremental all

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "design_planning"
