set lang "C++"
set moduleName "spk_packet_rx"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "pre_in"
set BitWidth0 "192"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "user"
set BitWidth00 "8"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "[list ap_uint 5 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "last"
set BitWidth01 "8"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "bool"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set PortName02 "id"
set BitWidth02 "8"
set ArrayOpt02 ""
set Const02 "0"
set Volatile02 "0"
set Pointer02 "0"
set Reference02 "0"
set Dims02 [list 0]
set Interface02 "wire"
set DataType02 "[list ap_uint 6 ]"
set Port02 [list $PortName02 $Interface02 $DataType02 $Pointer02 $Dims02 $Const02 $Volatile02 $ArrayOpt02]
lappend structMem0 $Port02
set PortName03 "data"
set BitWidth03 "128"
set ArrayOpt03 ""
set Const03 "0"
set Volatile03 "0"
set Pointer03 "0"
set Reference03 "0"
set Dims03 [list 0]
set Interface03 "wire"
set DataType03 "[list ap_uint 96 ]"
set Port03 [list $PortName03 $Interface03 $DataType03 $Pointer03 $Dims03 $Const03 $Volatile03 $ArrayOpt03]
lappend structMem0 $Port03
set structParameter0 [list ]
set structArgument0 [list ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "spk_struct" "struct spk_struct" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "post_in"
set BitWidth1 "192"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "2"
set Reference1 "1"
set Dims1 [list 0]
set Interface1 [list AP_STREAM 0] 
set structMem1 ""
set PortName10 "user"
set BitWidth10 "8"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set DataType10 "[list ap_uint 5 ]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "last"
set BitWidth11 "8"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "bool"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set PortName12 "id"
set BitWidth12 "8"
set ArrayOpt12 ""
set Const12 "0"
set Volatile12 "0"
set Pointer12 "0"
set Reference12 "0"
set Dims12 [list 0]
set Interface12 "wire"
set DataType12 "[list ap_uint 6 ]"
set Port12 [list $PortName12 $Interface12 $DataType12 $Pointer12 $Dims12 $Const12 $Volatile12 $ArrayOpt12]
lappend structMem1 $Port12
set PortName13 "data"
set BitWidth13 "128"
set ArrayOpt13 ""
set Const13 "0"
set Volatile13 "0"
set Pointer13 "0"
set Reference13 "0"
set Dims13 [list 0]
set Interface13 "wire"
set DataType13 "[list ap_uint 96 ]"
set Port13 [list $PortName13 $Interface13 $DataType13 $Pointer13 $Dims13 $Const13 $Volatile13 $ArrayOpt13]
lappend structMem1 $Port13
set structParameter1 [list ]
set structArgument1 [list ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "spk_struct" "struct spk_struct" $structMem1 1 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "time_stamp"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "2"
set Reference2 "1"
set Dims2 [list 0]
set Interface2 [list AP_STREAM 0] 
set DataType2 "int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "spk_out_stream"
set BitWidth3 "256"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "2"
set Reference3 "1"
set Dims3 [list 0]
set Interface3 [list AP_STREAM 0] 
set structMem3 ""
set PortName30 "id"
set BitWidth30 "8"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list 0]
set Interface30 "wire"
set DataType30 "[list ap_uint 6 ]"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set PortName31 "user"
set BitWidth31 "32"
set ArrayOpt31 ""
set Const31 "0"
set Volatile31 "0"
set Pointer31 "0"
set Reference31 "0"
set Dims31 [list 0]
set Interface31 "wire"
set DataType31 "int"
set Port31 [list $PortName31 $Interface31 $DataType31 $Pointer31 $Dims31 $Const31 $Volatile31 $ArrayOpt31]
lappend structMem3 $Port31
set PortName32 "data"
set BitWidth32 "128"
set ArrayOpt32 ""
set Const32 "0"
set Volatile32 "0"
set Pointer32 "0"
set Reference32 "0"
set Dims32 [list 0]
set Interface32 "wire"
set DataType32 "[list ap_uint 96 ]"
set Port32 [list $PortName32 $Interface32 $DataType32 $Pointer32 $Dims32 $Const32 $Volatile32 $ArrayOpt32]
lappend structMem3 $Port32
set PortName33 "dest"
set BitWidth33 "16"
set ArrayOpt33 ""
set Const33 "0"
set Volatile33 "0"
set Pointer33 "0"
set Reference33 "0"
set Dims33 [list 0]
set Interface33 "wire"
set DataType33 "[list ap_uint 16 ]"
set Port33 [list $PortName33 $Interface33 $DataType33 $Pointer33 $Dims33 $Const33 $Volatile33 $ArrayOpt33]
lappend structMem3 $Port33
set structParameter3 [list ]
set structArgument3 [list ]
set NameSpace3 [list ]
set structIsPacked3 "0"
set DataType3 [list "spk_stream" "struct spk_stream" $structMem3 1 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
