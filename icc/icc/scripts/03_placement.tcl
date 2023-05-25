read_sdc -version Latest "../design_data/traffic_light.sdc"
report_clock
report_clock -skew
set_zero_interconnect_delay_mode true
report_timing
report_constraint -all

set_zero_interconnect_delay_mode false

check_physical_constraints

#place_opt
place_opt -congestion
#refine_placement

derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}

set_max_area 0
set physopt_area_critical_range 0.1

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "placement"
