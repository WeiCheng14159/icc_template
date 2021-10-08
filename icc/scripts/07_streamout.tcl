set_write_stream_options -map_layer ../tech/macro.map -child_depth 20 -flatten_via
write_stream -format gds -lib_name CHIP -cells {CHIP} ./CHIP_pr.gds
