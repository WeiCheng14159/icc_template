proc pause {{message "Hit Enter to continue ==> "}} {
    puts -nonewline $message
    flush stdout
    gets stdin
}

source ../scripts/addCoreFiller.cmd
verify_zrt_route
route_zrt_detail -incremental true -initial_drc_from_input true

#set_route_detail_options -diode_libcell_names ANTENNA -insert_diodes_during_routing true
#verify_zrt_route
#route_zrt_detail -incremental true -initial_drc_from_input true

derive_pg_connection -power_net {VCC} -ground_net {GND} -power_pin {VCC} -ground_pin {GND}

source ../scripts/add_io_text.tcl
add_io_text m3text 5 portName

pause "Add VCC, GND, IOVCC, IOGND on m3text manually, then hit any key."
#create_text -origin {x x} -layer m3text -height 5 VCC
#create_text -origin {x x} -layer m3text -height 5 GND
#create_text -origin {x x} -layer m3text -height 5 IOVCC
#create_text -origin {x x} -layer m3text -height 5 IOGND

source ../scripts/createNplace_bondpads_umc.tcl
#createNplace_bondpads -inline_pad_ref_name BONDPADCGU_m -stagger true -stagger_pad_ref_name BONDPADCNU_m
createNplace_bondpads -inline_pad_ref_name BONDPADD_m

save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "dfm"
