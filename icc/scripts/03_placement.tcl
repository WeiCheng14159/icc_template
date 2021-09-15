read_sdc -version Latest "../design_data/CHIP.sdc"
report_clock
report_clock -skew
set_zero_interconnect_delay_mode true
report_timing
report_constraint -all

set_zero_interconnect_delay_mode false

check_physical_constraints

source ../scripts/add_tie.tcl

#place_opt
place_opt -congestion
#refine_placement

derive_pg_connection -power_net {VCC} -ground_net {GND} -power_pin {VCC} -ground_pin {GND}

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "placement"
