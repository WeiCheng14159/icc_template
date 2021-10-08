// Verilog HDL NetList 
//   timeStamp 2014 6 25 15 0 47 
//   author "Avanti Corporation."
//   program "A2Hdl" 
//   design library: cell
//   cell name     : cell.CEL (version 1)
module AN3P ( O , I1 , I2 , I3 );
    inout O ;
    inout I1 ;
    inout I2 ;
    inout I3 ;
endmodule 
module AN3B2T ( O , B1 , B2 , I1 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout I1 ;
endmodule 
module AN3B2S ( O , B1 , B2 , I1 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout I1 ;
endmodule 
module AN3B2P ( I1 , B2 , B1 , O );
    inout I1 ;
    inout B2 ;
    inout B1 ;
    inout O ;
endmodule 
module AN3B2 ( O , B1 , B2 , I1 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout I1 ;
endmodule 
module AN3B1T ( O , B1 , I2 , I1 );
    inout O ;
    inout B1 ;
    inout I2 ;
    inout I1 ;
endmodule 
module AN3B1S ( I1 , I2 , B1 , O );
    inout I1 ;
    inout I2 ;
    inout B1 ;
    inout O ;
endmodule 
module AN3B1P ( I1 , I2 , B1 , O );
    inout I1 ;
    inout I2 ;
    inout B1 ;
    inout O ;
endmodule 
module AN3B1 ( O , B1 , I2 , I1 );
    inout O ;
    inout B1 ;
    inout I2 ;
    inout I1 ;
endmodule 
module AN3 ( I3 , I2 , I1 , O );
    inout I3 ;
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module AN2T ( O , I2 , I1 );
    inout O ;
    inout I2 ;
    inout I1 ;
endmodule 
module AN2S ( I1 , I2 , O );
    inout I1 ;
    inout I2 ;
    inout O ;
endmodule 
module AN2P ( O , I2 , I1 );
    inout O ;
    inout I2 ;
    inout I1 ;
endmodule 
module AN2B1T ( I1 , O , B1 );
    inout I1 ;
    inout O ;
    inout B1 ;
endmodule 
module AN2B1S ( O , I1 , B1 );
    inout O ;
    inout I1 ;
    inout B1 ;
endmodule 
module AN2B1P ( O , B1 , I1 );
    inout O ;
    inout B1 ;
    inout I1 ;
endmodule 
module AN2B1 ( B1 , I1 , O );
    inout B1 ;
    inout I1 ;
    inout O ;
endmodule 
module AN2 ( O , I2 , I1 );
    inout O ;
    inout I2 ;
    inout I1 ;
endmodule 
module AO22P ( A2 , O , B2 , B1 , A1 );
    inout A2 ;
    inout O ;
    inout B2 ;
    inout B1 ;
    inout A1 ;
endmodule 
module AO222T ( B1 , B2 , C2 , A1 , C1 , A2 , O );
    inout B1 ;
    inout B2 ;
    inout C2 ;
    inout A1 ;
    inout C1 ;
    inout A2 ;
    inout O ;
endmodule 
module AO222S ( A2 , C1 , A1 , C2 , B2 , B1 , O );
    inout A2 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout B2 ;
    inout B1 ;
    inout O ;
endmodule 
module AO222P ( A2 , C1 , A1 , C2 , B2 , B1 , O );
    inout A2 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout B2 ;
    inout B1 ;
    inout O ;
endmodule 
module AO222 ( A2 , C1 , A1 , C2 , B1 , B2 , O );
    inout A2 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout B1 ;
    inout B2 ;
    inout O ;
endmodule 
module AO22 ( A2 , O , B2 , A1 , B1 );
    inout A2 ;
    inout O ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
endmodule 
module AO13T ( O , B1 , B2 , A1 , B3 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout B3 ;
endmodule 
module AO13S ( O , B1 , B2 , A1 , B3 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout B3 ;
endmodule 
module AO13P ( O , B1 , B2 , A1 , B3 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout B3 ;
endmodule 
module AO13 ( B3 , A1 , B2 , B1 , O );
    inout B3 ;
    inout A1 ;
    inout B2 ;
    inout B1 ;
    inout O ;
endmodule 
module AO12T ( A1 , O , B2 , B1 );
    inout A1 ;
    inout O ;
    inout B2 ;
    inout B1 ;
endmodule 
module AO12S ( O , B2 , A1 , B1 );
    inout O ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
endmodule 
module AO12P ( B1 , B2 , O , A1 );
    inout B1 ;
    inout B2 ;
    inout O ;
    inout A1 ;
endmodule 
module AO12 ( B1 , B2 , O , A1 );
    inout B1 ;
    inout B2 ;
    inout O ;
    inout A1 ;
endmodule 
module AO112T ( B1 , C1 , A1 , C2 , O );
    inout B1 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout O ;
endmodule 
module AO112S ( B1 , C1 , A1 , C2 , O );
    inout B1 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout O ;
endmodule 
module AO112P ( B1 , C1 , A1 , C2 , O );
    inout B1 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout O ;
endmodule 
module AO112 ( O , C2 , A1 , C1 , B1 );
    inout O ;
    inout C2 ;
    inout A1 ;
    inout C1 ;
    inout B1 ;
endmodule 
module ANTENNA ( A );
    inout A ;
endmodule 
module AN4T ( I3 , I4 , I2 , I1 , O );
    inout I3 ;
    inout I4 ;
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module AN4S ( I3 , I4 , I2 , I1 , O );
    inout I3 ;
    inout I4 ;
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module AN4P ( O , I1 , I2 , I4 , I3 );
    inout O ;
    inout I1 ;
    inout I2 ;
    inout I4 ;
    inout I3 ;
endmodule 
module AN4B1T ( I1 , I2 , I3 , O , B1 );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
    inout B1 ;
endmodule 
module AN4B1S ( B1 , O , I3 , I2 , I1 );
    inout B1 ;
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module AN4B1P ( B1 , O , I3 , I2 , I1 );
    inout B1 ;
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module AN4B1 ( O , B1 , I3 , I2 , I1 );
    inout O ;
    inout B1 ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module AN4 ( O , I1 , I2 , I4 , I3 );
    inout O ;
    inout I1 ;
    inout I2 ;
    inout I4 ;
    inout I3 ;
endmodule 
module AN3T ( I2 , I3 , I1 , O );
    inout I2 ;
    inout I3 ;
    inout I1 ;
    inout O ;
endmodule 
module AN3S ( I2 , I3 , I1 , O );
    inout I2 ;
    inout I3 ;
    inout I1 ;
    inout O ;
endmodule 
module BUF3 ( I , O );
    inout I ;
    inout O ;
endmodule 
module BUF2CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module BUF2 ( O , I );
    inout O ;
    inout I ;
endmodule 
module BUF1S ( O , I );
    inout O ;
    inout I ;
endmodule 
module BUF1CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module BUF12CK ( I , O );
    inout I ;
    inout O ;
endmodule 
module BUF1 ( O , I );
    inout O ;
    inout I ;
endmodule 
module BHD1 ( H );
    inout H ;
endmodule 
module AOI22S ( B2 , O , A1 , A2 , B1 );
    inout B2 ;
    inout O ;
    inout A1 ;
    inout A2 ;
    inout B1 ;
endmodule 
module AOI22HT ( B2 , B1 , A1 , A2 , O );
    inout B2 ;
    inout B1 ;
    inout A1 ;
    inout A2 ;
    inout O ;
endmodule 
module AOI22HP ( O , A2 , A1 , B1 , B2 );
    inout O ;
    inout A2 ;
    inout A1 ;
    inout B1 ;
    inout B2 ;
endmodule 
module AOI22H ( B2 , B1 , A1 , A2 , O );
    inout B2 ;
    inout B1 ;
    inout A1 ;
    inout A2 ;
    inout O ;
endmodule 
module AOI222HS ( C1 , O , B2 , B1 , A1 , A2 , C2 );
    inout C1 ;
    inout O ;
    inout B2 ;
    inout B1 ;
    inout A1 ;
    inout A2 ;
    inout C2 ;
endmodule 
module AOI222HP ( C1 , O , B2 , B1 , A1 , A2 , C2 );
    inout C1 ;
    inout O ;
    inout B2 ;
    inout B1 ;
    inout A1 ;
    inout A2 ;
    inout C2 ;
endmodule 
module AOI222H ( C1 , O , B2 , B1 , A1 , A2 , C2 );
    inout C1 ;
    inout O ;
    inout B2 ;
    inout B1 ;
    inout A1 ;
    inout A2 ;
    inout C2 ;
endmodule 
module AOI13HT ( O , B1 , B2 , A1 , B3 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout B3 ;
endmodule 
module AOI13HS ( O , B1 , B2 , A1 , B3 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout B3 ;
endmodule 
module AOI13HP ( O , B1 , B2 , A1 , B3 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout B3 ;
endmodule 
module AOI13H ( O , B1 , B2 , A1 , B3 );
    inout O ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout B3 ;
endmodule 
module AOI12HT ( B1 , O , B2 , A1 );
    inout B1 ;
    inout O ;
    inout B2 ;
    inout A1 ;
endmodule 
module AOI12HS ( B2 , A1 , B1 , O );
    inout B2 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module AOI12HP ( B1 , O , B2 , A1 );
    inout B1 ;
    inout O ;
    inout B2 ;
    inout A1 ;
endmodule 
module AOI12H ( O , B2 , B1 , A1 );
    inout O ;
    inout B2 ;
    inout B1 ;
    inout A1 ;
endmodule 
module AOI112HT ( A1 , B1 , C1 , C2 , O );
    inout A1 ;
    inout B1 ;
    inout C1 ;
    inout C2 ;
    inout O ;
endmodule 
module AOI112HS ( A1 , B1 , C1 , C2 , O );
    inout A1 ;
    inout B1 ;
    inout C1 ;
    inout C2 ;
    inout O ;
endmodule 
module AOI112HP ( A1 , B1 , C1 , C2 , O );
    inout A1 ;
    inout B1 ;
    inout C1 ;
    inout C2 ;
    inout O ;
endmodule 
module AOI112H ( O , C2 , C1 , B1 , A1 );
    inout O ;
    inout C2 ;
    inout C1 ;
    inout B1 ;
    inout A1 ;
endmodule 
module AO22T ( A1 , B1 , B2 , A2 , O );
    inout A1 ;
    inout B1 ;
    inout B2 ;
    inout A2 ;
    inout O ;
endmodule 
module AO22S ( O , A2 , B2 , A1 , B1 );
    inout O ;
    inout A2 ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
endmodule 
module DFFP ( Q , QB , D , CK );
    inout Q ;
    inout QB ;
    inout D ;
    inout CK ;
endmodule 
module DFFN ( D , CK , QB , Q );
    inout D ;
    inout CK ;
    inout QB ;
    inout Q ;
endmodule 
module DFCRBN ( RB , D , Q , QB , CK );
    inout RB ;
    inout D ;
    inout Q ;
    inout QB ;
    inout CK ;
endmodule 
module DFCLRBN ( Q , QB , CK , RB , D , LD );
    inout Q ;
    inout QB ;
    inout CK ;
    inout RB ;
    inout D ;
    inout LD ;
endmodule 
module DELC ( O , I );
    inout O ;
    inout I ;
endmodule 
module DELB ( O , I );
    inout O ;
    inout I ;
endmodule 
module DELA ( O , I );
    inout O ;
    inout I ;
endmodule 
module DBZRSBN ( TD , SEL , D , RB , Q , CKB , SB , QB );
    inout TD ;
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CKB ;
    inout SB ;
    inout QB ;
endmodule 
module DBZRBN ( TD , SEL , D , RB , Q , CKB , QB );
    inout TD ;
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CKB ;
    inout QB ;
endmodule 
module DBHRBS ( RB , Q , CKB , D , QB );
    inout RB ;
    inout Q ;
    inout CKB ;
    inout D ;
    inout QB ;
endmodule 
module DBHRBN ( RB , Q , CKB , D , QB );
    inout RB ;
    inout Q ;
    inout CKB ;
    inout D ;
    inout QB ;
endmodule 
module DBFRSBN ( D , SB , QB , RB , Q , CKB );
    inout D ;
    inout SB ;
    inout QB ;
    inout RB ;
    inout Q ;
    inout CKB ;
endmodule 
module DBFRBN ( QB , D , RB , Q , CKB );
    inout QB ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CKB ;
endmodule 
module CMPE4S ( B3 , A0 , B0 , B1 , B2 , A3 , OEQ , A1 , A2 );
    inout B3 ;
    inout A0 ;
    inout B0 ;
    inout B1 ;
    inout B2 ;
    inout A3 ;
    inout OEQ ;
    inout A1 ;
    inout A2 ;
endmodule 
module CMPE4 ( B0 , A0 , B3 , A3 , A2 , A1 , OEQ , B2 , B1 );
    inout B0 ;
    inout A0 ;
    inout B3 ;
    inout A3 ;
    inout A2 ;
    inout A1 ;
    inout OEQ ;
    inout B2 ;
    inout B1 ;
endmodule 
module BUFT4 ( O , E , I );
    inout O ;
    inout E ;
    inout I ;
endmodule 
module BUFT3 ( O , E , I );
    inout O ;
    inout E ;
    inout I ;
endmodule 
module BUFT2 ( O , I , E );
    inout O ;
    inout I ;
    inout E ;
endmodule 
module BUFT1 ( I , E , O );
    inout I ;
    inout E ;
    inout O ;
endmodule 
module BUFB3 ( O , I , EB );
    inout O ;
    inout I ;
    inout EB ;
endmodule 
module BUFB2 ( O , I , EB );
    inout O ;
    inout I ;
    inout EB ;
endmodule 
module BUFB1 ( I , EB , O );
    inout I ;
    inout EB ;
    inout O ;
endmodule 
module BUF8CK ( I , O );
    inout I ;
    inout O ;
endmodule 
module BUF8 ( I , O );
    inout I ;
    inout O ;
endmodule 
module BUF6CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module BUF6 ( I , O );
    inout I ;
    inout O ;
endmodule 
module BUF4CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module BUF4 ( O , I );
    inout O ;
    inout I ;
endmodule 
module BUF3CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module FA1 ( CO , A , B , CI , S );
    inout CO ;
    inout A ;
    inout B ;
    inout CI ;
    inout S ;
endmodule 
module DLHS ( Q , QB , CK , D );
    inout Q ;
    inout QB ;
    inout CK ;
    inout D ;
endmodule 
module DLHRBS ( Q , RB , QB , D , CK );
    inout Q ;
    inout RB ;
    inout QB ;
    inout D ;
    inout CK ;
endmodule 
module DLHRBP ( CK , RB , QB , Q , D );
    inout CK ;
    inout RB ;
    inout QB ;
    inout Q ;
    inout D ;
endmodule 
module DLHRBN ( RB , Q , CK , D , QB );
    inout RB ;
    inout Q ;
    inout CK ;
    inout D ;
    inout QB ;
endmodule 
module DLHP ( CK , Q , D , QB );
    inout CK ;
    inout Q ;
    inout D ;
    inout QB ;
endmodule 
module DLHN ( Q , QB , CK , D );
    inout Q ;
    inout QB ;
    inout CK ;
    inout D ;
endmodule 
module DFZTRBS ( SEL , D , RB , Q , CK , E , QZ , TD );
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
    inout E ;
    inout QZ ;
    inout TD ;
endmodule 
module DFZTRBN ( D , RB , CK , E , QZ , Q , TD , SEL );
    inout D ;
    inout RB ;
    inout CK ;
    inout E ;
    inout QZ ;
    inout Q ;
    inout TD ;
    inout SEL ;
endmodule 
module DFZSBN ( SEL , D , QB , Q , SB , CK , TD );
    inout SEL ;
    inout D ;
    inout QB ;
    inout Q ;
    inout SB ;
    inout CK ;
    inout TD ;
endmodule 
module DFZS ( Q , CK , D , SEL , TD , QB );
    inout Q ;
    inout CK ;
    inout D ;
    inout SEL ;
    inout TD ;
    inout QB ;
endmodule 
module DFZRSBN ( RB , Q , CK , D , SEL , TD , SB , QB );
    inout RB ;
    inout Q ;
    inout CK ;
    inout D ;
    inout SEL ;
    inout TD ;
    inout SB ;
    inout QB ;
endmodule 
module DFZRBT ( TD , SEL , D , RB , Q , CK , QB );
    inout TD ;
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
    inout QB ;
endmodule 
module DFZRBS ( TD , SEL , D , RB , Q , CK , QB );
    inout TD ;
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
    inout QB ;
endmodule 
module DFZRBP ( TD , SEL , D , RB , Q , CK , QB );
    inout TD ;
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
    inout QB ;
endmodule 
module DFZRBN ( TD , SEL , D , RB , Q , CK , QB );
    inout TD ;
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
    inout QB ;
endmodule 
module DFZP ( Q , QB , TD , SEL , D , CK );
    inout Q ;
    inout QB ;
    inout TD ;
    inout SEL ;
    inout D ;
    inout CK ;
endmodule 
module DFZN ( TD , SEL , D , CK , QB , Q );
    inout TD ;
    inout SEL ;
    inout D ;
    inout CK ;
    inout QB ;
    inout Q ;
endmodule 
module DFZCRBN ( Q , QB , CK , D , RB , TD , SEL );
    inout Q ;
    inout QB ;
    inout CK ;
    inout D ;
    inout RB ;
    inout TD ;
    inout SEL ;
endmodule 
module DFZCLRBN ( Q , QB , TD , CK , SEL , RB , D , LD );
    inout Q ;
    inout QB ;
    inout TD ;
    inout CK ;
    inout SEL ;
    inout RB ;
    inout D ;
    inout LD ;
endmodule 
module DFTRBS ( D , CK , E , Q , RB , QZ );
    inout D ;
    inout CK ;
    inout E ;
    inout Q ;
    inout RB ;
    inout QZ ;
endmodule 
module DFTRBN ( D , CK , QZ , Q , RB , E );
    inout D ;
    inout CK ;
    inout QZ ;
    inout Q ;
    inout RB ;
    inout E ;
endmodule 
module DFFSBN ( D , CK , SB , Q , QB );
    inout D ;
    inout CK ;
    inout SB ;
    inout Q ;
    inout QB ;
endmodule 
module DFFS ( Q , QB , CK , D );
    inout Q ;
    inout QB ;
    inout CK ;
    inout D ;
endmodule 
module DFFRSBN ( SB , QB , RB , Q , CK , D );
    inout SB ;
    inout QB ;
    inout RB ;
    inout Q ;
    inout CK ;
    inout D ;
endmodule 
module DFFRBT ( QB , D , RB , Q , CK );
    inout QB ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
endmodule 
module DFFRBS ( QB , D , RB , Q , CK );
    inout QB ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
endmodule 
module DFFRBP ( QB , D , RB , Q , CK );
    inout QB ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
endmodule 
module DFFRBN ( QB , D , RB , Q , CK );
    inout QB ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
endmodule 
module GCKETF ( TE , CK , Q , E );
    inout TE ;
    inout CK ;
    inout Q ;
    inout E ;
endmodule 
module FILLERCC ();
endmodule 
module FILLERBC ();
endmodule 
module FILLERAC ();
endmodule 
module FILLER8C ();
endmodule 
module FILLER8 ();
endmodule 
module FILLER64 ();
endmodule 
module FILLER4C ();
endmodule 
module FILLER4 ();
endmodule 
module FILLER32 ();
endmodule 
module FILLER2C ();
endmodule 
module FILLER2 ();
endmodule 
module FILLER16 ();
endmodule 
module FILLER1 ();
endmodule 
module FACS2S ( CI1 , CO1 , CO0 , B , CS , S , CI0 , A );
    inout CI1 ;
    inout CO1 ;
    inout CO0 ;
    inout B ;
    inout CS ;
    inout S ;
    inout CI0 ;
    inout A ;
endmodule 
module FACS2P ( CI0 , S , CS , CO0 , CI1 , CO1 , A , B );
    inout CI0 ;
    inout S ;
    inout CS ;
    inout CO0 ;
    inout CI1 ;
    inout CO1 ;
    inout A ;
    inout B ;
endmodule 
module FACS2 ( S , CS , CO0 , CI1 , A , CO1 , B , CI0 );
    inout S ;
    inout CS ;
    inout CO0 ;
    inout CI1 ;
    inout A ;
    inout CO1 ;
    inout B ;
    inout CI0 ;
endmodule 
module FACS1S ( S , CS , CO0 , CO1 , CI1 , A , B , CI0 );
    inout S ;
    inout CS ;
    inout CO0 ;
    inout CO1 ;
    inout CI1 ;
    inout A ;
    inout B ;
    inout CI0 ;
endmodule 
module FACS1P ( CI1 , CO0 , CS , S , CI0 , B , CO1 , A );
    inout CI1 ;
    inout CO0 ;
    inout CS ;
    inout S ;
    inout CI0 ;
    inout B ;
    inout CO1 ;
    inout A ;
endmodule 
module FACS1 ( CI1 , CO0 , CS , S , CI0 , B , CO1 , A );
    inout CI1 ;
    inout CO0 ;
    inout CS ;
    inout S ;
    inout CI0 ;
    inout B ;
    inout CO1 ;
    inout A ;
endmodule 
module FA3S ( S , CO , B , CI , A );
    inout S ;
    inout CO ;
    inout B ;
    inout CI ;
    inout A ;
endmodule 
module FA3P ( B , CI , CO , A , S );
    inout B ;
    inout CI ;
    inout CO ;
    inout A ;
    inout S ;
endmodule 
module FA3 ( S , CO , B , CI , A );
    inout S ;
    inout CO ;
    inout B ;
    inout CI ;
    inout A ;
endmodule 
module FA2S ( S , CO , B , CI , A );
    inout S ;
    inout CO ;
    inout B ;
    inout CI ;
    inout A ;
endmodule 
module FA2P ( B , CI , A , S , CO );
    inout B ;
    inout CI ;
    inout A ;
    inout S ;
    inout CO ;
endmodule 
module FA2 ( S , CO , B , CI , A );
    inout S ;
    inout CO ;
    inout B ;
    inout CI ;
    inout A ;
endmodule 
module FA1T ( CO , A , B , CI , S );
    inout CO ;
    inout A ;
    inout B ;
    inout CI ;
    inout S ;
endmodule 
module FA1S ( CO , A , S , CI , B );
    inout CO ;
    inout A ;
    inout S ;
    inout CI ;
    inout B ;
endmodule 
module FA1P ( CO , A , B , CI , S );
    inout CO ;
    inout A ;
    inout B ;
    inout CI ;
    inout S ;
endmodule 
module INVT1 ( I , E , O );
    inout I ;
    inout E ;
    inout O ;
endmodule 
module INV8CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV8 ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV6CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV6 ( I , O );
    inout I ;
    inout O ;
endmodule 
module INV4CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV4 ( I , O );
    inout I ;
    inout O ;
endmodule 
module INV3CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV3 ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV2CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV2 ( I , O );
    inout I ;
    inout O ;
endmodule 
module INV1S ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV1CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV12CK ( O , I );
    inout O ;
    inout I ;
endmodule 
module INV12 ( I , O );
    inout I ;
    inout O ;
endmodule 
module INV1 ( O , I );
    inout O ;
    inout I ;
endmodule 
module HA3T ( S , B , A , C );
    inout S ;
    inout B ;
    inout A ;
    inout C ;
endmodule 
module HA3P ( S , B , A , C );
    inout S ;
    inout B ;
    inout A ;
    inout C ;
endmodule 
module HA3 ( S , B , A , C );
    inout S ;
    inout B ;
    inout A ;
    inout C ;
endmodule 
module HA2T ( S , A , B , C );
    inout S ;
    inout A ;
    inout B ;
    inout C ;
endmodule 
module HA2P ( S , C , A , B );
    inout S ;
    inout C ;
    inout A ;
    inout B ;
endmodule 
module HA2 ( S , C , A , B );
    inout S ;
    inout C ;
    inout A ;
    inout B ;
endmodule 
module HA1T ( A , S , B , C );
    inout A ;
    inout S ;
    inout B ;
    inout C ;
endmodule 
module HA1S ( S , B , A , C );
    inout S ;
    inout B ;
    inout A ;
    inout C ;
endmodule 
module HA1P ( C , B , S , A );
    inout C ;
    inout B ;
    inout S ;
    inout A ;
endmodule 
module HA1 ( B , A , S , C );
    inout B ;
    inout A ;
    inout S ;
    inout C ;
endmodule 
module GCKETT ( TE , CK , Q , E );
    inout TE ;
    inout CK ;
    inout Q ;
    inout E ;
endmodule 
module GCKETP ( TE , CK , Q , E );
    inout TE ;
    inout CK ;
    inout Q ;
    inout E ;
endmodule 
module GCKETN ( E , Q , CK , TE );
    inout E ;
    inout Q ;
    inout CK ;
    inout TE ;
endmodule 
module MUX2 ( O , S , B , A );
    inout O ;
    inout S ;
    inout B ;
    inout A ;
endmodule 
module MULPAT ( M1 , S , Z , M , M0 , P );
    inout M1 ;
    inout S ;
    inout Z ;
    inout M ;
    inout M0 ;
    inout P ;
endmodule 
module MULPAP ( P , M0 , M , Z , S , M1 );
    inout P ;
    inout M0 ;
    inout M ;
    inout Z ;
    inout S ;
    inout M1 ;
endmodule 
module MULPA ( M0 , M , Z , S , P , M1 );
    inout M0 ;
    inout M ;
    inout Z ;
    inout S ;
    inout P ;
    inout M1 ;
endmodule 
module MULBET ( M1 , S , M , M0 , Z , M2 );
    inout M1 ;
    inout S ;
    inout M ;
    inout M0 ;
    inout Z ;
    inout M2 ;
endmodule 
module MULBEP ( M1 , M0 , S , M , Z , M2 );
    inout M1 ;
    inout M0 ;
    inout S ;
    inout M ;
    inout Z ;
    inout M2 ;
endmodule 
module MULBE ( M1 , M0 , S , M , Z , M2 );
    inout M1 ;
    inout M0 ;
    inout S ;
    inout M ;
    inout Z ;
    inout M2 ;
endmodule 
module MOAI1S ( B1 , A1 , O , B2 , A2 );
    inout B1 ;
    inout A1 ;
    inout O ;
    inout B2 ;
    inout A2 ;
endmodule 
module MOAI1HT ( O , A2 , A1 , B2 , B1 );
    inout O ;
    inout A2 ;
    inout A1 ;
    inout B2 ;
    inout B1 ;
endmodule 
module MOAI1HP ( O , A2 , A1 , B1 , B2 );
    inout O ;
    inout A2 ;
    inout A1 ;
    inout B1 ;
    inout B2 ;
endmodule 
module MOAI1H ( O , A2 , A1 , B2 , B1 );
    inout O ;
    inout A2 ;
    inout A1 ;
    inout B2 ;
    inout B1 ;
endmodule 
module MOAI1 ( A2 , B1 , B2 , A1 , O );
    inout A2 ;
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout O ;
endmodule 
module MAOI1S ( O , A2 , B2 , A1 , B1 );
    inout O ;
    inout A2 ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
endmodule 
module MAOI1HT ( O , A1 , A2 , B2 , B1 );
    inout O ;
    inout A1 ;
    inout A2 ;
    inout B2 ;
    inout B1 ;
endmodule 
module MAOI1HP ( O , A1 , A2 , B2 , B1 );
    inout O ;
    inout A1 ;
    inout A2 ;
    inout B2 ;
    inout B1 ;
endmodule 
module MAOI1H ( O , A1 , B2 , A2 , B1 );
    inout O ;
    inout A1 ;
    inout B2 ;
    inout A2 ;
    inout B1 ;
endmodule 
module MAOI1 ( B1 , A1 , B2 , A2 , O );
    inout B1 ;
    inout A1 ;
    inout B2 ;
    inout A2 ;
    inout O ;
endmodule 
module MAO222T ( C1 , A1 , B1 , O );
    inout C1 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module MAO222S ( C1 , A1 , B1 , O );
    inout C1 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module MAO222P ( O , B1 , A1 , C1 );
    inout O ;
    inout B1 ;
    inout A1 ;
    inout C1 ;
endmodule 
module MAO222 ( C1 , A1 , B1 , O );
    inout C1 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module JKZRBP ( K , J , TD , RB , CK , QB , SEL , Q );
    inout K ;
    inout J ;
    inout TD ;
    inout RB ;
    inout CK ;
    inout QB ;
    inout SEL ;
    inout Q ;
endmodule 
module JKZRBN ( J , QB , TD , Q , RB , CK , SEL , K );
    inout J ;
    inout QB ;
    inout TD ;
    inout Q ;
    inout RB ;
    inout CK ;
    inout SEL ;
    inout K ;
endmodule 
module JKZN ( CK , QB , Q , TD , J , K , SEL );
    inout CK ;
    inout QB ;
    inout Q ;
    inout TD ;
    inout J ;
    inout K ;
    inout SEL ;
endmodule 
module JKFRBP ( RB , K , J , Q , CK , QB );
    inout RB ;
    inout K ;
    inout J ;
    inout Q ;
    inout CK ;
    inout QB ;
endmodule 
module JKFRBN ( RB , Q , K , J , CK , QB );
    inout RB ;
    inout Q ;
    inout K ;
    inout J ;
    inout CK ;
    inout QB ;
endmodule 
module JKFN ( Q , QB , CK , K , J );
    inout Q ;
    inout QB ;
    inout CK ;
    inout K ;
    inout J ;
endmodule 
module INVT4 ( O , I , E );
    inout O ;
    inout I ;
    inout E ;
endmodule 
module INVT2 ( O , E , I );
    inout O ;
    inout E ;
    inout I ;
endmodule 
module MXL3T ( A , S0 , B , C , OB , S1 );
    inout A ;
    inout S0 ;
    inout B ;
    inout C ;
    inout OB ;
    inout S1 ;
endmodule 
module MXL3S ( S1 , C , B , OB , S0 , A );
    inout S1 ;
    inout C ;
    inout B ;
    inout OB ;
    inout S0 ;
    inout A ;
endmodule 
module MXL3P ( A , B , C , S0 , OB , S1 );
    inout A ;
    inout B ;
    inout C ;
    inout S0 ;
    inout OB ;
    inout S1 ;
endmodule 
module MXL3 ( S1 , C , B , OB , S0 , A );
    inout S1 ;
    inout C ;
    inout B ;
    inout OB ;
    inout S0 ;
    inout A ;
endmodule 
module MXL2HT ( A , S , B , OB );
    inout A ;
    inout S ;
    inout B ;
    inout OB ;
endmodule 
module MXL2HS ( A , S , B , OB );
    inout A ;
    inout S ;
    inout B ;
    inout OB ;
endmodule 
module MXL2HP ( OB , B , S , A );
    inout OB ;
    inout B ;
    inout S ;
    inout A ;
endmodule 
module MXL2HF ( A , S , B , OB );
    inout A ;
    inout S ;
    inout B ;
    inout OB ;
endmodule 
module MXL2H ( A , S , B , OB );
    inout A ;
    inout S ;
    inout B ;
    inout OB ;
endmodule 
module MUXB4T ( S1 , B , A , S0 , D , C , EB , O );
    inout S1 ;
    inout B ;
    inout A ;
    inout S0 ;
    inout D ;
    inout C ;
    inout EB ;
    inout O ;
endmodule 
module MUXB4S ( S1 , B , A , S0 , D , C , EB , O );
    inout S1 ;
    inout B ;
    inout A ;
    inout S0 ;
    inout D ;
    inout C ;
    inout EB ;
    inout O ;
endmodule 
module MUXB4P ( S1 , B , A , S0 , D , C , EB , O );
    inout S1 ;
    inout B ;
    inout A ;
    inout S0 ;
    inout D ;
    inout C ;
    inout EB ;
    inout O ;
endmodule 
module MUXB4 ( C , D , S0 , A , B , S1 , O , EB );
    inout C ;
    inout D ;
    inout S0 ;
    inout A ;
    inout B ;
    inout S1 ;
    inout O ;
    inout EB ;
endmodule 
module MUXB2T ( O , EB , B , A , S );
    inout O ;
    inout EB ;
    inout B ;
    inout A ;
    inout S ;
endmodule 
module MUXB2S ( EB , B , A , S , O );
    inout EB ;
    inout B ;
    inout A ;
    inout S ;
    inout O ;
endmodule 
module MUXB2P ( O , EB , B , A , S );
    inout O ;
    inout EB ;
    inout B ;
    inout A ;
    inout S ;
endmodule 
module MUXB2 ( S , A , B , O , EB );
    inout S ;
    inout A ;
    inout B ;
    inout O ;
    inout EB ;
endmodule 
module MUX4T ( B , S1 , A , S0 , D , C , O );
    inout B ;
    inout S1 ;
    inout A ;
    inout S0 ;
    inout D ;
    inout C ;
    inout O ;
endmodule 
module MUX4S ( C , A , B , S1 , D , S0 , O );
    inout C ;
    inout A ;
    inout B ;
    inout S1 ;
    inout D ;
    inout S0 ;
    inout O ;
endmodule 
module MUX4P ( C , D , S0 , A , S1 , B , O );
    inout C ;
    inout D ;
    inout S0 ;
    inout A ;
    inout S1 ;
    inout B ;
    inout O ;
endmodule 
module MUX4 ( C , A , B , S1 , D , S0 , O );
    inout C ;
    inout A ;
    inout B ;
    inout S1 ;
    inout D ;
    inout S0 ;
    inout O ;
endmodule 
module MUX3T ( S1 , O , C , S0 , B , A );
    inout S1 ;
    inout O ;
    inout C ;
    inout S0 ;
    inout B ;
    inout A ;
endmodule 
module MUX3S ( S1 , O , A , B , S0 , C );
    inout S1 ;
    inout O ;
    inout A ;
    inout B ;
    inout S0 ;
    inout C ;
endmodule 
module MUX3P ( O , S1 , C , S0 , B , A );
    inout O ;
    inout S1 ;
    inout C ;
    inout S0 ;
    inout B ;
    inout A ;
endmodule 
module MUX3 ( O , S1 , C , S0 , B , A );
    inout O ;
    inout S1 ;
    inout C ;
    inout S0 ;
    inout B ;
    inout A ;
endmodule 
module MUX2T ( A , S , O , B );
    inout A ;
    inout S ;
    inout O ;
    inout B ;
endmodule 
module MUX2S ( B , S , A , O );
    inout B ;
    inout S ;
    inout A ;
    inout O ;
endmodule 
module MUX2P ( S , B , A , O );
    inout S ;
    inout B ;
    inout A ;
    inout O ;
endmodule 
module MUX2F ( A , S , O , B );
    inout A ;
    inout S ;
    inout O ;
    inout B ;
endmodule 
module OA112T ( O , C2 , A1 , C1 , B1 );
    inout O ;
    inout C2 ;
    inout A1 ;
    inout C1 ;
    inout B1 ;
endmodule 
module OA112S ( B1 , C1 , A1 , C2 , O );
    inout B1 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout O ;
endmodule 
module OA112P ( O , C2 , A1 , C1 , B1 );
    inout O ;
    inout C2 ;
    inout A1 ;
    inout C1 ;
    inout B1 ;
endmodule 
module OA112 ( B1 , C1 , A1 , C2 , O );
    inout B1 ;
    inout C1 ;
    inout A1 ;
    inout C2 ;
    inout O ;
endmodule 
module NR4T ( O , I4 , I1 , I2 , I3 );
    inout O ;
    inout I4 ;
    inout I1 ;
    inout I2 ;
    inout I3 ;
endmodule 
module NR4S ( O , I2 , I1 , I4 , I3 );
    inout O ;
    inout I2 ;
    inout I1 ;
    inout I4 ;
    inout I3 ;
endmodule 
module NR4P ( I3 , I2 , I1 , I4 , O );
    inout I3 ;
    inout I2 ;
    inout I1 ;
    inout I4 ;
    inout O ;
endmodule 
module NR4 ( I3 , I4 , I2 , I1 , O );
    inout I3 ;
    inout I4 ;
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module NR3HT ( I1 , I2 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
endmodule 
module NR3HP ( I1 , I2 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
endmodule 
module NR3H ( I1 , I2 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
endmodule 
module NR3 ( I3 , I2 , I1 , O );
    inout I3 ;
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module NR2T ( I1 , I2 , O );
    inout I1 ;
    inout I2 ;
    inout O ;
endmodule 
module NR2P ( I2 , I1 , O );
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module NR2F ( O , I2 , I1 );
    inout O ;
    inout I2 ;
    inout I1 ;
endmodule 
module NR2 ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module ND4T ( I1 , I2 , I4 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I4 ;
    inout I3 ;
    inout O ;
endmodule 
module ND4S ( I1 , I2 , I4 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I4 ;
    inout I3 ;
    inout O ;
endmodule 
module ND4P ( O , I3 , I4 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I4 ;
    inout I2 ;
    inout I1 ;
endmodule 
module ND4 ( O , I3 , I4 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I4 ;
    inout I2 ;
    inout I1 ;
endmodule 
module ND3S ( O , I2 , I3 , I1 );
    inout O ;
    inout I2 ;
    inout I3 ;
    inout I1 ;
endmodule 
module ND3P ( I2 , I1 , O , I3 );
    inout I2 ;
    inout I1 ;
    inout O ;
    inout I3 ;
endmodule 
module ND3HT ( O , I1 , I2 , I3 );
    inout O ;
    inout I1 ;
    inout I2 ;
    inout I3 ;
endmodule 
module ND3 ( O , I2 , I3 , I1 );
    inout O ;
    inout I2 ;
    inout I3 ;
    inout I1 ;
endmodule 
module ND2T ( O , I1 , I2 );
    inout O ;
    inout I1 ;
    inout I2 ;
endmodule 
module ND2S ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module ND2P ( I2 , I1 , O );
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module ND2F ( I2 , I1 , O );
    inout I2 ;
    inout I1 ;
    inout O ;
endmodule 
module ND2 ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module OAI222H ( A2 , O , B2 , B1 , C2 , C1 , A1 );
    inout A2 ;
    inout O ;
    inout B2 ;
    inout B1 ;
    inout C2 ;
    inout C1 ;
    inout A1 ;
endmodule 
module OAI13HT ( B3 , B2 , A1 , B1 , O );
    inout B3 ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module OAI13HS ( B3 , B2 , A1 , B1 , O );
    inout B3 ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module OAI13HP ( B3 , B2 , A1 , B1 , O );
    inout B3 ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module OAI13H ( B3 , B2 , A1 , B1 , O );
    inout B3 ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module OAI12HT ( B2 , O , A1 , B1 );
    inout B2 ;
    inout O ;
    inout A1 ;
    inout B1 ;
endmodule 
module OAI12HS ( B2 , A1 , B1 , O );
    inout B2 ;
    inout A1 ;
    inout B1 ;
    inout O ;
endmodule 
module OAI12HP ( A1 , B1 , B2 , O );
    inout A1 ;
    inout B1 ;
    inout B2 ;
    inout O ;
endmodule 
module OAI12H ( A1 , B1 , B2 , O );
    inout A1 ;
    inout B1 ;
    inout B2 ;
    inout O ;
endmodule 
module OAI112HT ( A1 , B1 , C1 , C2 , O );
    inout A1 ;
    inout B1 ;
    inout C1 ;
    inout C2 ;
    inout O ;
endmodule 
module OAI112HS ( A1 , B1 , C1 , C2 , O );
    inout A1 ;
    inout B1 ;
    inout C1 ;
    inout C2 ;
    inout O ;
endmodule 
module OAI112HP ( A1 , B1 , C1 , C2 , O );
    inout A1 ;
    inout B1 ;
    inout C1 ;
    inout C2 ;
    inout O ;
endmodule 
module OAI112H ( A1 , B1 , C1 , C2 , O );
    inout A1 ;
    inout B1 ;
    inout C1 ;
    inout C2 ;
    inout O ;
endmodule 
module OA22T ( O , B2 , A1 , A2 , B1 );
    inout O ;
    inout B2 ;
    inout A1 ;
    inout A2 ;
    inout B1 ;
endmodule 
module OA22S ( A2 , B1 , A1 , B2 , O );
    inout A2 ;
    inout B1 ;
    inout A1 ;
    inout B2 ;
    inout O ;
endmodule 
module OA22P ( B1 , A2 , A1 , B2 , O );
    inout B1 ;
    inout A2 ;
    inout A1 ;
    inout B2 ;
    inout O ;
endmodule 
module OA222T ( C1 , A2 , C2 , A1 , B2 , B1 , O );
    inout C1 ;
    inout A2 ;
    inout C2 ;
    inout A1 ;
    inout B2 ;
    inout B1 ;
    inout O ;
endmodule 
module OA222S ( B1 , B2 , A1 , C2 , A2 , C1 , O );
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout C2 ;
    inout A2 ;
    inout C1 ;
    inout O ;
endmodule 
module OA222P ( B1 , B2 , A1 , C2 , A2 , C1 , O );
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout C2 ;
    inout A2 ;
    inout C1 ;
    inout O ;
endmodule 
module OA222 ( B1 , B2 , A1 , C2 , A2 , C1 , O );
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout C2 ;
    inout A2 ;
    inout C1 ;
    inout O ;
endmodule 
module OA22 ( B1 , A2 , A1 , B2 , O );
    inout B1 ;
    inout A2 ;
    inout A1 ;
    inout B2 ;
    inout O ;
endmodule 
module OA13T ( B3 , A1 , B1 , O , B2 );
    inout B3 ;
    inout A1 ;
    inout B1 ;
    inout O ;
    inout B2 ;
endmodule 
module OA13S ( B3 , A1 , B1 , O , B2 );
    inout B3 ;
    inout A1 ;
    inout B1 ;
    inout O ;
    inout B2 ;
endmodule 
module OA13P ( B3 , A1 , B1 , O , B2 );
    inout B3 ;
    inout A1 ;
    inout B1 ;
    inout O ;
    inout B2 ;
endmodule 
module OA13 ( B2 , O , B1 , A1 , B3 );
    inout B2 ;
    inout O ;
    inout B1 ;
    inout A1 ;
    inout B3 ;
endmodule 
module OA12T ( B1 , B2 , O , A1 );
    inout B1 ;
    inout B2 ;
    inout O ;
    inout A1 ;
endmodule 
module OA12S ( O , B2 , A1 , B1 );
    inout O ;
    inout B2 ;
    inout A1 ;
    inout B1 ;
endmodule 
module OA12P ( A1 , O , B2 , B1 );
    inout A1 ;
    inout O ;
    inout B2 ;
    inout B1 ;
endmodule 
module OA12 ( A1 , O , B2 , B1 );
    inout A1 ;
    inout O ;
    inout B2 ;
    inout B1 ;
endmodule 
module PDIX ( EB , O );
    inout EB ;
    inout O ;
endmodule 
module PDI ( O , EB );
    inout O ;
    inout EB ;
endmodule 
module OR3T ( O , I3 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module OR3S ( I3 , I1 , I2 , O );
    inout I3 ;
    inout I1 ;
    inout I2 ;
    inout O ;
endmodule 
module OR3P ( I1 , I2 , O , I3 );
    inout I1 ;
    inout I2 ;
    inout O ;
    inout I3 ;
endmodule 
module OR3B2T ( I1 , B1 , O , B2 );
    inout I1 ;
    inout B1 ;
    inout O ;
    inout B2 ;
endmodule 
module OR3B2S ( O , B2 , B1 , I1 );
    inout O ;
    inout B2 ;
    inout B1 ;
    inout I1 ;
endmodule 
module OR3B2P ( O , B1 , I1 , B2 );
    inout O ;
    inout B1 ;
    inout I1 ;
    inout B2 ;
endmodule 
module OR3B2 ( I1 , B1 , B2 , O );
    inout I1 ;
    inout B1 ;
    inout B2 ;
    inout O ;
endmodule 
module OR3B1T ( I1 , B1 , O , I2 );
    inout I1 ;
    inout B1 ;
    inout O ;
    inout I2 ;
endmodule 
module OR3B1S ( O , B1 , I1 , I2 );
    inout O ;
    inout B1 ;
    inout I1 ;
    inout I2 ;
endmodule 
module OR3B1P ( I2 , O , B1 , I1 );
    inout I2 ;
    inout O ;
    inout B1 ;
    inout I1 ;
endmodule 
module OR3B1 ( O , I2 , I1 , B1 );
    inout O ;
    inout I2 ;
    inout I1 ;
    inout B1 ;
endmodule 
module OR3 ( O , I3 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module OR2T ( O , I2 , I1 );
    inout O ;
    inout I2 ;
    inout I1 ;
endmodule 
module OR2S ( O , I2 , I1 );
    inout O ;
    inout I2 ;
    inout I1 ;
endmodule 
module OR2P ( I1 , I2 , O );
    inout I1 ;
    inout I2 ;
    inout O ;
endmodule 
module OR2B1T ( B1 , I1 , O );
    inout B1 ;
    inout I1 ;
    inout O ;
endmodule 
module OR2B1S ( I1 , B1 , O );
    inout I1 ;
    inout B1 ;
    inout O ;
endmodule 
module OR2B1P ( I1 , O , B1 );
    inout I1 ;
    inout O ;
    inout B1 ;
endmodule 
module OR2B1 ( B1 , I1 , O );
    inout B1 ;
    inout I1 ;
    inout O ;
endmodule 
module OR2 ( O , I1 , I2 );
    inout O ;
    inout I1 ;
    inout I2 ;
endmodule 
module OAI22S ( B1 , A2 , A1 , O , B2 );
    inout B1 ;
    inout A2 ;
    inout A1 ;
    inout O ;
    inout B2 ;
endmodule 
module OAI22HT ( A1 , A2 , B1 , B2 , O );
    inout A1 ;
    inout A2 ;
    inout B1 ;
    inout B2 ;
    inout O ;
endmodule 
module OAI22HP ( A1 , A2 , B1 , B2 , O );
    inout A1 ;
    inout A2 ;
    inout B1 ;
    inout B2 ;
    inout O ;
endmodule 
module OAI22H ( A1 , A2 , B1 , B2 , O );
    inout A1 ;
    inout A2 ;
    inout B1 ;
    inout B2 ;
    inout O ;
endmodule 
module OAI222S ( B1 , B2 , A1 , C2 , A2 , C1 , O );
    inout B1 ;
    inout B2 ;
    inout A1 ;
    inout C2 ;
    inout A2 ;
    inout C1 ;
    inout O ;
endmodule 
module OAI222HT ( A2 , O , B2 , B1 , C2 , C1 , A1 );
    inout A2 ;
    inout O ;
    inout B2 ;
    inout B1 ;
    inout C2 ;
    inout C1 ;
    inout A1 ;
endmodule 
module OAI222HP ( A2 , O , B2 , B1 , C2 , C1 , A1 );
    inout A2 ;
    inout O ;
    inout B2 ;
    inout B1 ;
    inout C2 ;
    inout C1 ;
    inout A1 ;
endmodule 
module RAM3 ( Q , QZ , RD , W , D );
    inout Q ;
    inout QZ ;
    inout RD ;
    inout W ;
    inout D ;
endmodule 
module RAM2S ( RD , QBZ , D , W , QB );
    inout RD ;
    inout QBZ ;
    inout D ;
    inout W ;
    inout QB ;
endmodule 
module RAM2 ( QB , QBZ , RD , D , W );
    inout QB ;
    inout QBZ ;
    inout RD ;
    inout D ;
    inout W ;
endmodule 
module QDLHSN ( S , Q , CK , D );
    inout S ;
    inout Q ;
    inout CK ;
    inout D ;
endmodule 
module QDLHS ( CK , Q , D );
    inout CK ;
    inout Q ;
    inout D ;
endmodule 
module QDLHRBS ( Q , RB , D , CK );
    inout Q ;
    inout RB ;
    inout D ;
    inout CK ;
endmodule 
module QDLHRBP ( Q , RB , D , CK );
    inout Q ;
    inout RB ;
    inout D ;
    inout CK ;
endmodule 
module QDLHRBN ( Q , RB , D , CK );
    inout Q ;
    inout RB ;
    inout D ;
    inout CK ;
endmodule 
module QDLHP ( CK , Q , D );
    inout CK ;
    inout Q ;
    inout D ;
endmodule 
module QDLHN ( CK , Q , D );
    inout CK ;
    inout Q ;
    inout D ;
endmodule 
module QDFZS ( Q , CK , D , SEL , TD );
    inout Q ;
    inout CK ;
    inout D ;
    inout SEL ;
    inout TD ;
endmodule 
module QDFZRSBN ( CK , Q , RB , D , SEL , TD , SB );
    inout CK ;
    inout Q ;
    inout RB ;
    inout D ;
    inout SEL ;
    inout TD ;
    inout SB ;
endmodule 
module QDFZRBT ( CK , Q , RB , D , SEL , TD );
    inout CK ;
    inout Q ;
    inout RB ;
    inout D ;
    inout SEL ;
    inout TD ;
endmodule 
module QDFZRBS ( TD , SEL , D , RB , Q , CK );
    inout TD ;
    inout SEL ;
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
endmodule 
module QDFZRBP ( CK , Q , RB , D , SEL , TD );
    inout CK ;
    inout Q ;
    inout RB ;
    inout D ;
    inout SEL ;
    inout TD ;
endmodule 
module QDFZRBN ( CK , Q , RB , D , SEL , TD );
    inout CK ;
    inout Q ;
    inout RB ;
    inout D ;
    inout SEL ;
    inout TD ;
endmodule 
module QDFZP ( CK , D , SEL , TD , Q );
    inout CK ;
    inout D ;
    inout SEL ;
    inout TD ;
    inout Q ;
endmodule 
module QDFZN ( TD , SEL , D , CK , Q );
    inout TD ;
    inout SEL ;
    inout D ;
    inout CK ;
    inout Q ;
endmodule 
module QDFFS ( Q , CK , D );
    inout Q ;
    inout CK ;
    inout D ;
endmodule 
module QDFFRSBN ( CK , Q , RB , SB , D );
    inout CK ;
    inout Q ;
    inout RB ;
    inout SB ;
    inout D ;
endmodule 
module QDFFRBT ( CK , Q , RB , D );
    inout CK ;
    inout Q ;
    inout RB ;
    inout D ;
endmodule 
module QDFFRBS ( D , RB , Q , CK );
    inout D ;
    inout RB ;
    inout Q ;
    inout CK ;
endmodule 
module QDFFRBP ( CK , Q , RB , D );
    inout CK ;
    inout Q ;
    inout RB ;
    inout D ;
endmodule 
module QDFFRBN ( CK , Q , RB , D );
    inout CK ;
    inout Q ;
    inout RB ;
    inout D ;
endmodule 
module QDFFP ( Q , D , CK );
    inout Q ;
    inout D ;
    inout CK ;
endmodule 
module QDFFN ( D , CK , Q );
    inout D ;
    inout CK ;
    inout Q ;
endmodule 
module QDBHS ( D , Q , CKB );
    inout D ;
    inout Q ;
    inout CKB ;
endmodule 
module QDBHN ( D , Q , CKB );
    inout D ;
    inout Q ;
    inout CKB ;
endmodule 
module PUI ( O , E );
    inout O ;
    inout E ;
endmodule 
module XOR4T ( I3 , I1 , O , I4 , I2 );
    inout I3 ;
    inout I1 ;
    inout O ;
    inout I4 ;
    inout I2 ;
endmodule 
module XOR4S ( I3 , I1 , O , I4 , I2 );
    inout I3 ;
    inout I1 ;
    inout O ;
    inout I4 ;
    inout I2 ;
endmodule 
module XOR4P ( I2 , I4 , O , I1 , I3 );
    inout I2 ;
    inout I4 ;
    inout O ;
    inout I1 ;
    inout I3 ;
endmodule 
module XOR4 ( I4 , I2 , O , I1 , I3 );
    inout I4 ;
    inout I2 ;
    inout O ;
    inout I1 ;
    inout I3 ;
endmodule 
module XOR3T ( I1 , I2 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
endmodule 
module XOR3S ( I1 , I2 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
endmodule 
module XOR3P ( I1 , I2 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
endmodule 
module XOR3 ( I1 , I2 , I3 , O );
    inout I1 ;
    inout I2 ;
    inout I3 ;
    inout O ;
endmodule 
module XOR2HT ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module XOR2HS ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module XOR2HP ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module XOR2H ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module XNR4T ( I3 , I1 , O , I4 , I2 );
    inout I3 ;
    inout I1 ;
    inout O ;
    inout I4 ;
    inout I2 ;
endmodule 
module XNR4S ( I3 , I1 , O , I4 , I2 );
    inout I3 ;
    inout I1 ;
    inout O ;
    inout I4 ;
    inout I2 ;
endmodule 
module XNR4P ( I3 , I1 , O , I4 , I2 );
    inout I3 ;
    inout I1 ;
    inout O ;
    inout I4 ;
    inout I2 ;
endmodule 
module XNR4 ( I2 , O , I4 , I3 , I1 );
    inout I2 ;
    inout O ;
    inout I4 ;
    inout I3 ;
    inout I1 ;
endmodule 
module XNR3T ( O , I3 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module XNR3S ( O , I3 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module XNR3P ( O , I3 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module XNR3 ( O , I3 , I2 , I1 );
    inout O ;
    inout I3 ;
    inout I2 ;
    inout I1 ;
endmodule 
module XNR2HT ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module XNR2HS ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module XNR2HP ( I1 , I2 , O );
    inout I1 ;
    inout I2 ;
    inout O ;
endmodule 
module XNR2H ( I2 , O , I1 );
    inout I2 ;
    inout O ;
    inout I1 ;
endmodule 
module TIE1 ( O );
    inout O ;
endmodule 
module TIE0 ( O );
    inout O ;
endmodule 
module RAM5S ( QZ0 , QZ1 , RD1 , RD0 , D , W );
    inout QZ0 ;
    inout QZ1 ;
    inout RD1 ;
    inout RD0 ;
    inout D ;
    inout W ;
endmodule 
module RAM5 ( QZ0 , RD0 , QZ1 , RD1 , D , W );
    inout QZ0 ;
    inout RD0 ;
    inout QZ1 ;
    inout RD1 ;
    inout D ;
    inout W ;
endmodule 
module RAM3S ( W , D , RD , QZ , Q );
    inout W ;
    inout D ;
    inout RD ;
    inout QZ ;
    inout Q ;
endmodule 
