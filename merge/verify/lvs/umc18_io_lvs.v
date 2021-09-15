// Verilog HDL NetList 
//   timeStamp 2014 6 25 15 12 31 
//   author "Avanti Corporation."
//   program "A2Hdl" 
//   design library: io_cell
//   cell name     : io_cell.CEL (version 1)
module ZMA2GSD ( SR , PU , SMT , E , PD , O , E4 , I , IO , E2 , E8 );
    input SR ;
    input PU ;
    input SMT ;
    input E ;
    input PD ;
    output O ;
    input E4 ;
    input I ;
    inout IO ;
    input E2 ;
    input E8 ;
endmodule 
module ZMA2GSC ( SR , E , PU , E4 , PD , O , E8 , E2 , IO , I , SMT );
    input SR ;
    input E ;
    input PU ;
    input E4 ;
    input PD ;
    output O ;
    input E8 ;
    input E2 ;
    inout IO ;
    input I ;
    input SMT ;
endmodule 
module YA2GSD ( O , E2 , E8 , SR , E , E4 , I );
    output O ;
    input E2 ;
    input E8 ;
    input SR ;
    input E ;
    input E4 ;
    input I ;
endmodule 
module YA2GSC ( O , E , I , SR , E4 , E8 , E2 );
    output O ;
    input E ;
    input I ;
    input SR ;
    input E4 ;
    input E8 ;
    input E2 ;
endmodule 
module XMD ( I , PU , SMT , PD , O );
    input I ;
    input PU ;
    input SMT ;
    input PD ;
    output O ;
endmodule 
module XMC ( I , SMT , PU , PD , O );
    input I ;
    input SMT ;
    input PU ;
    input PD ;
    output O ;
endmodule 
module VCCKD ();
endmodule 
module VCCKC ();
endmodule 
module VCC3IOD ( VCC3O );
    inout VCC3O ;
endmodule 
module VCC3IOC ( VCC3O );
    inout VCC3O ;
endmodule 
module GNDKD ();
endmodule 
module GNDKC ();
endmodule 
module GNDIOD ( GNDO );
    inout GNDO ;
endmodule 
module GNDIOC ( GNDO );
    inout GNDO ;
endmodule 
module EMPTYGRD ();
endmodule 
module EMPTYGRC ();
endmodule 
module EMPTY8D ();
endmodule 
module EMPTY8C ();
endmodule 
module EMPTY4D ();
endmodule 
module EMPTY4C ();
endmodule 
module EMPTY2D ();
endmodule 
module EMPTY2C ();
endmodule 
module EMPTY1D ();
endmodule 
module EMPTY1C ();
endmodule 
module EMPTY16D ();
endmodule 
module EMPTY16C ();
endmodule 
module CORNERD ();
endmodule 
module CORNERCD ();
endmodule 
module CORNERC ();
endmodule 
