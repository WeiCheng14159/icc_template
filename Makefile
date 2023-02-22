ROOT_DIR           =$(PWD)
BUILD              =build
BUILD_DIR          =$(ROOT_DIR)/$(BUILD)
SRC_DIR            =$(ROOT_DIR)/src
SIM_DIR            =$(ROOT_DIR)/sim
SYN_DIR            =$(ROOT_DIR)/syn
APR_DIR            =$(ROOT_DIR)/icc
SCRIPT_DIR         =$(ROOT_DIR)/script
REPORT_DIR         =$(ROOT_DIR)/report
NC_DIR             =$(ROOT_DIR)/conf

TB_TOP             =traffic_light_tb
TOP                =traffic_light

SRC=$(filter-out $(SRC_DIR)/CHIP.v, $(shell ls $(SRC_DIR)/*.v))

TB_SRC=$(SIM_DIR)/ans.txt

# icc, u18, t18
PROC               =u18
ifeq ($(PROC), icc)
	CBDK_DIR         =/usr/cad/lib/CBDK_IC_Contest_v2.1/Verilog
	CORE_CELL        =tsmc13_neg.v
	IO_CELL          =
else ifeq ($(PROC), u18)
	CBDK_DIR         =/usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Verilog
	CORE_CELL        =fsa0m_a_generic_core_21.lib.src
	IO_CELL          =fsa0m_a_t33_generic_io_21.lib.src
else ifeq ($(PROC), t18)
	CBDK_DIR         =/usr/cad/CBDK/CBDK_TSMC018_Arm_f1.0/CIC/Verilog
	CORE_CELL        =tsmc18_neg.v
	IO_CELL          =
else
	CBDK_DIR         =
	CORE_CELL        =
	IO_CELL          =
endif

.PHONY: default init check rtl nw sv syn syn_chip syn_init icc_init autosyn pre pre_chip pre_sv clean

# Show available all command
default:
	@echo "clean       => Clean previous build"
	@echo "rtl         => Run RTL simulation"
	@echo "nw          => Run nWave"
	@echo "synthesize  => Run synthesize in interactive mode"
	@echo "synthesize_chip  => Run chip-level synthesize in interactive mode"
	@echo "syn         => Run gate-level simulation"
	@echo "syn_chip    => Run chip-level gate-level simulation"
	@echo "check       => Run superlint"

$(BUILD):
	mkdir -p $(BUILD)

# Create folders
init: clean
	mkdir -p $(BUILD_DIR) $(SYN_DIR) $(REPORT_DIR)

# Syn directory init
syn_init:
	mkdir -p $(SYN_DIR);

icc_init:
	mkdir -p $(APR_DIR)/design_data; \
	mkdir -p $(APR_DIR)/run; \
	mkdir -p $(APR_DIR)/verify/drc; \
	mkdir -p $(APR_DIR)/verify/lvs;

cp_tb_src: gen_hex
	cd $(BUILD_DIR); \
	cp $(TB_SRC) .;

cp_CHIP_v:
	cp $(SRC_DIR)/CHIP.v $(BUILD_DIR);

# Add your script here
gen_hex:
	cd sw;

# Check HDL syntax
check:
	jg -superlint $(SCRIPT_DIR)/superlint.tcl &

# Format SystemVerilog/Verilog files in $(SRC_DIR)
format:
	find $(SRC_DIR) -name "*.sv" -or -name "*.v" -or -name "*.svh" | xargs verible-verilog-format --inplace

# Run RTL simulation
rtl: $(BUILD) cp_tb_src
	cd $(BUILD_DIR); \
	ncverilog $(SIM_DIR)/$(TB_TOP).v $(SRC) \
	+incdir+$(SRC_DIR) \
	+nc64bit \
	+access+r \
	+define+SHM_FILE=\"$(TOP).shm\" \
	+define+FSDB_FILE=\"$(TOP).fsdb\"

# View waveform using nWave
nw: $(BUILD)
	cd $(BUILD_DIR); \
	nWave -f $(TOP).fsdb -sswr $(NC_DIR)/signal.rc +access+r +nc64bit &

# Run synthesize with Design Compiler
synthesize: $(BUILD) syn_init
	rm -rf $(SYN_DIR)/*; \
	cd $(BUILD_DIR); \
	cp $(SCRIPT_DIR)/${PROC}/synopsys_dc.setup.$(PROC) $(BUILD_DIR)/.synopsys_dc.setup; \
	dcnxt_shell -f $(SCRIPT_DIR)/dc_syn.tcl -x "set proc ${PROC}";

# Run gate-level simulation (nWave)
syn: $(BUILD) cp_tb_src syn_init
	cd $(BUILD_DIR); \
	cp $(SYN_DIR)/$(TOP)_syn.sdf $(BUILD_DIR); \
	ncverilog $(SIM_DIR)/$(TB_TOP).v $(SYN_DIR)/$(TOP)_syn.v \
	-v $(CBDK_DIR)/$(CORE_CELL) \
	+nc64bit \
	+access+r \
	+define+SHM_FILE=\"$(TOP).shm\" \
	+define+FSDB_FILE=\"$(TOP).fsdb\" \
	+define+SDF \
	+define+SDFFILE=\"$(SYN_DIR)/$(TOP)_syn.sdf\"

### chip-level ###

# Run CHIP-level synthesize with Design Compiler
synthesize_chip: $(BUILD) syn_init cp_CHIP_v
	rm -rf $(SYN_DIR)/*; \
	cd $(BUILD_DIR); \
	cp $(SCRIPT_DIR)/${PROC}/synopsys_dc.setup.$(PROC) $(BUILD_DIR)/.synopsys_dc.setup; \
	dcnxt_shell -f $(SCRIPT_DIR)/dc_syn_chip.tcl -x "set proc ${PROC}";

# Run gate-level simulation (nWave)
syn_chip: $(BUILD) cp_tb_src syn_init cp_CHIP_v
	cd $(BUILD_DIR); \
	cp $(SYN_DIR)/CHIP_syn.sdf $(BUILD_DIR); \
	ncverilog $(SIM_DIR)/$(TB_TOP).v $(SYN_DIR)/CHIP_syn.v \
	-v $(CBDK_DIR)/$(CORE_CELL) \
	-v $(CBDK_DIR)/$(IO_CELL) \
	+nc64bit \
	+access+r \
	+define+SHM_FILE=\"$(TOP).shm\" \
	+define+FSDB_FILE=\"$(TOP).fsdb\" \
	+define+SDF \
	+define+SDFFILE=\"$(SYN_DIR)/CHIP_syn.sdf\"

# Run ICC APR flow
icc: syn_init icc_init
	if [ $(PROC) == "icc" ]; then \
		print "$(PROC) doesn't support APR"; \
	else \
		cp $(SYN_DIR)/CHIP_syn.v $(APR_DIR)/design_data; \
		cp $(SYN_DIR)/CHIP.sdc $(APR_DIR)/design_data; \
		cp $(SCRIPT_DIR)/${PROC}/synopsys_dc.setup.$(PROC) $(APR_DIR)/run/.synopsys_dc.setup; \
		cd $(APR_DIR)/run; \
		icc_shell -gui; \
	fi

# Remove all files
clean:
	rm -rf $(BUILD_DIR) $(SYN_DIR) $(APR_DIR) $(REPORT_DIR) *.log
