# Force multicore
set_host_options -max_cores 16

# Read all Files
set top traffic_light
#read_verilog ../src/${top}.v
read_file -autoread -top ${top} -recursive {../src} -library ${top}
current_design ${top}
link

# Setting Clock Constraits
source -echo -verbose ../script/${top}.sdc

# High fanout threshold
set high_fanout_net_threshold 0
report_net_fanout -high_fanout

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
 
set_structure -timing true
 
check_design

### Old command
## Auto CG
#insert_clock_gating
#report_clock_gating
## Synthesis (quick try)
#compile -map_effort medium -area_effort low
#compile -map_effort medium -area_effort low -inc
## Synthesize (high effort)
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
## Register retiming (dcnxt only)
# optimize_registers

# Synthesize (ultimate)
# compile_ultra -no_autoungroup -no_boundary_optimization -retime -gate_clock
compile_ultra
compile_ultra -incremental

current_design [get_designs ${top}]
 
remove_unconnected_ports -blast_buses [get_cells -hierarchical *]
 
set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _}   -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule

write -format ddc  -hierarchy -output "${top}_syn.ddc"
write_sdf ../syn/${top}_syn.sdf
write_file -format verilog -hierarchy -output ../syn/${top}_syn.v
report_area > area.log
report_timing > timing.log
report_qor > ${top}_syn.qor

# exit
