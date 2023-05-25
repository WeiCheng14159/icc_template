set cts_enable_clock_at_hierarchical_pin true
set power_cg_auto_identify true

check_clock_tree

report_clock
report_clock -skew
report_constraint -all

check_physical_design -stage pre_clock_opt

set_fix_hold [all_clocks]
clock_opt -fix_hold_all_clocks -no_clock_route

report_timing
report_clock_tree -summary

derive_pg_connection -power_pin {VDD} -ground_pin {VSS} -power_net {VDD} -ground_net {VSS}

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "cts"
