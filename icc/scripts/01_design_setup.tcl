set_svf CHIP.svf
set_host_options -max_cores 16

# gui_start
create_mw_lib  -technology ../tech/umc_018_1p6m_mk_20ka_cic.tf -mw_reference_library {../physical_lib/FSA0M_A_GENERIC_CORE ../physical_lib/FSA0M_A_T33_GENERIC_IO ../physical_lib/BONDPAD} -bus_naming_style {[%d]}  -open  CHIP
import_designs -format verilog -top CHIP -cel CHIP {../design_data/CHIP_syn.v}
set_tlu_plus_files -max_tluplus ../tluplus/u18_typ.tluplus -tech2itf_map  ../tluplus/u18.map

read_sdc  -version Latest "../design_data/CHIP.sdc"
save_mw_cel  -design "CHIP"
save_mw_cel  -design "CHIP" -as "design_setup"
