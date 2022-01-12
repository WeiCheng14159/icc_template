#VERSION#BRANCH#2015.03
#VERSION#cnlDATE#02/26/2015
#VERSION#cnlENV#Linux.0/64bit
#VERSION#RUNTIME#2021/10/18
#VERSION#PLATFORM#Linux x86_64/64bit
#VERSION#SYSTEM#64-bit
#VERSION#uname#(Linux caidcpuserver1 5.11.0-37-generic #41~20.04.2-Ubuntu SMP Fri Sep 24 09:06:38 UTC 2021 x86_64)
lakerImportStream -file /home/wei/git/icc_template/icc/run/CHIP_pr.gds -tech \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Laker/G-DF-MIXED_MODE_RFCMOS18-1.8V_3.3V-1P6M-20K-MMC-LAKER-TF-2.11-P1.tf \
           -path /home/wei/git/icc_template/merge -lib CHIP -CorrectNon90Inst \
           1 -IoLayerMapMode Map -sumExtraLayer 1 -case Preserve -label \
           Preserve -maxVerti 1024 -instProp 102 -netProp 102 -keepPCell 0
lakerImportStream -file \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Phantom/FSA0M_A_GENERIC_CORE_ANT_V55_cic.gds \
           -tech \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Laker/G-DF-MIXED_MODE_RFCMOS18-1.8V_3.3V-1P6M-20K-MMC-LAKER-TF-2.11-P1.tf \
           -path /home/wei/git/icc_template/merge -lib CHIP -CorrectNon90Inst \
           1 -IoLayerMapMode Map -sumExtraLayer 1 -case Preserve -label \
           Preserve -maxVerti 1024 -instProp 102 -netProp 102 -keepPCell 0
lakerImportStream -file \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Phantom/fsa0m_a_generic_core_cic.gds \
           -tech \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Laker/G-DF-MIXED_MODE_RFCMOS18-1.8V_3.3V-1P6M-20K-MMC-LAKER-TF-2.11-P1.tf \
           -path /home/wei/git/icc_template/merge -lib CHIP -CorrectNon90Inst \
           1 -IoLayerMapMode Map -sumExtraLayer 1 -case Preserve -label \
           Preserve -maxVerti 1024 -instProp 102 -netProp 102 -keepPCell 0
lakerImportStream -file \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Phantom/FSA0M_A_T33_GENERIC_IO_ANT_V55_cic.gds \
           -tech \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Laker/G-DF-MIXED_MODE_RFCMOS18-1.8V_3.3V-1P6M-20K-MMC-LAKER-TF-2.11-P1.tf \
           -path /home/wei/git/icc_template/merge -lib CHIP -CorrectNon90Inst \
           1 -IoLayerMapMode Map -sumExtraLayer 1 -case Preserve -label \
           Preserve -maxVerti 1024 -instProp 102 -netProp 102 -keepPCell 0
lakerImportStream -file \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Phantom/fsa0m_a_t33_generic_io_cic.gds \
           -tech \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Laker/G-DF-MIXED_MODE_RFCMOS18-1.8V_3.3V-1P6M-20K-MMC-LAKER-TF-2.11-P1.tf \
           -path /home/wei/git/icc_template/merge -lib CHIP -CorrectNon90Inst \
           1 -IoLayerMapMode Map -sumExtraLayer 1 -case Preserve -label \
           Preserve -maxVerti 1024 -instProp 102 -netProp 102 -keepPCell 0
lakerImportStream -file \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Phantom/BONDPAD.gds \
           -tech \
           /home/nfs_cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/Laker/G-DF-MIXED_MODE_RFCMOS18-1.8V_3.3V-1P6M-20K-MMC-LAKER-TF-2.11-P1.tf \
           -path /home/wei/git/icc_template/merge -lib CHIP -CorrectNon90Inst \
           1 -IoLayerMapMode Map -sumExtraLayer 1 -case Preserve -label \
           Preserve -maxVerti 1024 -instProp 102 -netProp 102 -keepPCell 0
lakerOpenDesign -lib CHIP -cell CHIP -mode edit
lakerSetActiveLayer -layerName DIFF -purpose drawing
lakerPreSel -point (1040.292,542.292) -traversedist 31.106
lakerSingleSel -point (1040.292,542.292) -traversedist 31.106
lakerPreSel -point (1027.85,551.624) -traversedist 31.106
lakerMaxViewLevel
lakerPreSel -point (209.761,949.776) -traversedist 31.106
lakerZoomAll
lakerPreSel -point (88.235,690.828) -traversedist 18.675
lakerZoomInByArea -point (-123.406,388.299) (619.212,690.827)
lakerPreSel -point (113.565,645.152) -traversedist 5.374
lakerZoomInByArea -point (55.108,527.473) (343.974,645.151)
lakerPreSel -point (99.838,645.36) -traversedist 2.09
lakerZoomAll
lakerPreSel -point (-686.762,948.537) -traversedist 18.675
lakerCloseDesign
lakerExportStream -file CHIP_merge.gds -lib CHIP -topCell {CHIP} -case Preserve \
           -label Preserve -maxVerti 1024 -mergeRefLib 1 -OutAbsCell Off \
           -SmashMCell ExpCont -IoLayerMapMode Map -filterText 0 -filterSysPin \
           1 -reduceMCell 0 -reduceDevice 0 -convertPolyText 0 -pathToPolygon \
           0 -purposeMap 1 -keepPCell 0 -designIntention 0
lakerOpenDesign -lib CHIP -cell CHIP -mode edit
lakerSetActiveLayer -layerName DIFF -purpose drawing
lakerPreSel -point (180.553,948.053) -traversedist 13.834
lakerCalibreRVE
lakerPreSel -point (-53.326,245.4) -traversedist 1.128
lakerCloseDesign
lakerExit
