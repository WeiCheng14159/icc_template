// This is generated automatically on 2021/07/02-15:06:24
// Check the # of bits for state registers !!!
// Check the # of bits for flag registers !!!

`ifndef __FLAG_DEF__
`define __FLAG_DEF__

// There're 4 interrupt flags in this design
`define INT_INIT               	 0  
`define INT_G                  	 1  
`define INT_Y                  	 2  
`define INT_R                  	 3  
`define INT_FLAG_W             	 4  

// There're 4 output flags in this design
`define CMD_INIT               	 0  
`define CMD_G                  	 1  
`define CMD_Y                  	 2  
`define CMD_R                  	 3  
`define CMD_FLAG_W             	 4  

// There're 5 states in this design
`define S_INIT                 	 0  
`define S_G                    	 1  
`define S_Y                    	 2  
`define S_R                    	 3  
`define S_END                  	 4  
`define S_ZVEC                 	 5'b0
`define STATE_W                	 5  

// Macro from template
`define BUF_SIZE               	 8'd66
`define READ_MEM_DELAY         	 2'd2
`define EMPTY_ADDR             	 {12{1'b0}}
`define EMPTY_DATA             	 {20{1'b0}}
`define LOCAL_IDX_W            	 16 
`define DATA_W                 	 20 

// Self-defined macro
`define COUNTER_W              	 15 

`endif
