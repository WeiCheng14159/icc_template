report_timing

check_routeability

#source ../tech/antenna_9lm_CIC.clf
 set_route_zrt_common_options  -post_detail_route_redundant_via_insertion high -concurrent_redundant_via_mode insert_at_high_cost -concurrent_redundant_via_effort_level high

route_zrt_group -all_clock_nets
route_zrt_auto
#route_opt -effort high

verify_zrt_route
route_zrt_detail -incremental true -initial_drc_from_input true

#remove_route_by_type -signal_detail_route
#route_opt -effort high

derive_pg_connection -power_net {VCC} -ground_net {GND} -power_pin {VCC} -ground_pin {GND}

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "route"
