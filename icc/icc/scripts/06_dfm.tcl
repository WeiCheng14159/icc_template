source ../scripts/addCoreFiller.cmd

verify_zrt_route
route_zrt_detail -incremental true -initial_drc_from_input true

#set_route_detail_options -diode_libcell_names ANTENNA -insert_diodes_during_routing true
#verify_zrt_route
#route_zrt_detail -incremental true -initial_drc_from_input true

derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "dfm"
