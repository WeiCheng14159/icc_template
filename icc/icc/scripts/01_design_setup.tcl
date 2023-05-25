set_svf traffic_light.svf
set_host_options -max_cores 16

# gui_start
create_mw_lib -technology ../tech/tsmc13_CIC.tf -mw_reference_library {../physical_lib/tsmc13gfsg_fram} -bus_naming_style {[%d]} -open CHIP
import_designs -format verilog -top traffic_light -cel CHIP {../design_data/traffic_light_syn.v}
set_tlu_plus_files -max_tluplus ../tluplus/t013s8mg_fsg_typical.tluplus -tech2itf_map  ../tluplus/t013s8mg_fsg.map

read_sdc  -version Latest "../design_data/traffic_light.sdc"
save_mw_cel -design "CHIP"
save_mw_cel -design "CHIP" -as "design_setup"
