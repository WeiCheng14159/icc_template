set top traffic_light
set SDF_VERSION 2.1; # 1.0 or 2.1

# Don't change anything below this line
set_host_options -max_cores 16

# Read all Files
read_file -autoread -top ${top} -recursive {../src} -library ${top}
current_design [get_designs ${top}]
link

# Setting Clock Constraits
source -echo -verbose ../script/${proc}/${top}.sdc.${proc}

# Check design
check_design

# High fanout threshold
set high_fanout_net_threshold 0
report_net_fanout -high_fanout

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
 
# Synthesize design
## compile_ultra ##
#compile_ultra -no_autoungroup -no_boundary_optimization -retime
## compile ##
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
compile

remove_unconnected_ports -blast_buses [get_cells -hierarchical *]

# Change name rule script (flow suggested by TSMC)
set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _}   -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule

# Write sdf
write -format ddc -hierarchy -output "${top}_syn.ddc"
write_file -format verilog -hierarchy -output ../syn/${top}_syn.v
write_sdf -version ${SDF_VERSION} -context verilog -load_delay net ../syn/${top}_syn.sdf
write_sdc -version 2.0 ${top}.sdc
report_area > area.log
report_timing > timing.log
report_qor > ${top}_syn.qor

# exit
