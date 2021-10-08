###################################################################

# Created by write_sdc on Mon Sep 13 19:09:44 2021

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max WCCOM -max_library                               \
fsa0m_a_generic_core_ss1p62v125c\
                         -min BCCOM -min_library                               \
fsa0m_a_generic_core_ff1p98vm40c
set_wire_load_model -name G5K -library fsa0m_a_generic_core_ss1p62v125c
set_load -pin_load 1 [get_ports R]
set_load -pin_load 1 [get_ports G]
set_load -pin_load 1 [get_ports Y]
set_max_fanout 20 [get_ports clk]
set_max_fanout 20 [get_ports reset]
set_max_fanout 20 [get_ports pass]
set_ideal_network [get_ports clk]
create_clock [get_ports clk]  -period 50  -waveform {0 25}
set_clock_latency 0.5  [get_clocks clk]
set_clock_uncertainty 0.1  [get_clocks clk]
set_clock_transition -min -fall 0.1 [get_clocks clk]
set_clock_transition -min -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_input_delay -clock clk  -clock_fall  5  [get_ports reset]
set_input_delay -clock clk  -clock_fall  5  [get_ports pass]
set_output_delay -clock clk  -clock_fall  0.5  [get_ports R]
set_output_delay -clock clk  -clock_fall  0.5  [get_ports G]
set_output_delay -clock clk  -clock_fall  0.5  [get_ports Y]
set_drive 0.1  [get_ports clk]
set_drive 0.1  [get_ports reset]
set_drive 0.1  [get_ports pass]
