; ModuleID = '/vivado_proj/spk_packet_protocol/rx/spk_rx/spk_rx/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spk_packet_rx_str = internal unnamed_addr constant [14 x i8] c"spk_packet_rx\00"
@spk_V = internal global [608 x i96] zeroinitializer
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str2 = private unnamed_addr constant [11 x i8] c"write_loop\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define void @spk_packet_rx(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V, i5* %post_in_V_user_V, i1* %post_in_V_last, i6* %post_in_V_id_V, i96* %post_in_V_data_V, i32* %time_stamp_V, i6* %spk_out_stream_V_id_V, i32* %spk_out_stream_V_user, i96* %spk_out_stream_V_data_V, i16* %spk_out_stream_V_dest_V) {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %pre_in_V_user_V), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pre_in_V_last), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %pre_in_V_id_V), !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i96* %pre_in_V_data_V), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %post_in_V_user_V), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %post_in_V_last), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %post_in_V_id_V), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i96* %post_in_V_data_V), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %time_stamp_V), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %spk_out_stream_V_id_V), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %spk_out_stream_V_user), !map !102
  call void (...)* @_ssdm_op_SpecBitsMap(i96* %spk_out_stream_V_data_V), !map !106
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %spk_out_stream_V_dest_V), !map !110
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @spk_packet_rx_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i6* %spk_out_stream_V_id_V, i32* %spk_out_stream_V_user, i96* %spk_out_stream_V_data_V, i16* %spk_out_stream_V_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i5* %post_in_V_user_V, i1* %post_in_V_last, i6* %post_in_V_id_V, i96* %post_in_V_data_V, [5 x i8]* @p_str, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V, [5 x i8]* @p_str, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %time_stamp_V, [5 x i8]* @p_str, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i5P.i1P.i6P.i96P(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V, i32 1)
  br i1 %tmp, label %0, label %._crit_edge106

; <label>:0                                       ; preds = %.preheader.preheader
  %empty = call { i5, i1, i6, i96 } @_ssdm_op_Read.axis.volatile.i5P.i1P.i6P.i96P(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V)
  %tmp_user_V = extractvalue { i5, i1, i6, i96 } %empty, 0
  %tmp_id_V_1 = extractvalue { i5, i1, i6, i96 } %empty, 2
  %tmp_data_V = extractvalue { i5, i1, i6, i96 } %empty, 3
  %tmp_2_cast = zext i5 %tmp_user_V to i11
  %tmp_3_cast = zext i6 %tmp_id_V_1 to i11
  %tmp_9 = mul i11 %tmp_3_cast, 19
  %tmp_s = add i11 %tmp_9, %tmp_2_cast
  %tmp_10_cast = sext i11 %tmp_s to i64
  %spk_V_addr = getelementptr [608 x i96]* @spk_V, i64 0, i64 %tmp_10_cast
  store i96 %tmp_data_V, i96* %spk_V_addr, align 16
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %0, %.preheader.preheader
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.axis.i5P.i1P.i6P.i96P(i5* %post_in_V_user_V, i1* %post_in_V_last, i6* %post_in_V_id_V, i96* %post_in_V_data_V, i32 1)
  br i1 %tmp_1, label %1, label %._crit_edge107

; <label>:1                                       ; preds = %._crit_edge106
  %empty_2 = call { i5, i1, i6, i96 } @_ssdm_op_Read.axis.volatile.i5P.i1P.i6P.i96P(i5* %post_in_V_user_V, i1* %post_in_V_last, i6* %post_in_V_id_V, i96* %post_in_V_data_V)
  %tmp_user_V_1 = extractvalue { i5, i1, i6, i96 } %empty_2, 0
  %tmp_last = extractvalue { i5, i1, i6, i96 } %empty_2, 1
  %tmp_id_V = extractvalue { i5, i1, i6, i96 } %empty_2, 2
  %tmp_data_V_1 = extractvalue { i5, i1, i6, i96 } %empty_2, 3
  %tmp_6_cast = zext i5 %tmp_user_V_1 to i11
  %tmp_7_cast = zext i6 %tmp_id_V to i11
  %tmp_2 = mul i11 %tmp_7_cast, 19
  %tmp_3 = add i11 %tmp_2, %tmp_6_cast
  %tmp_12_cast = sext i11 %tmp_3 to i64
  %spk_V_addr_1 = getelementptr [608 x i96]* @spk_V, i64 0, i64 %tmp_12_cast
  store i96 %tmp_data_V_1, i96* %spk_V_addr_1, align 16
  br i1 %tmp_last, label %2, label %.loopexit

; <label>:2                                       ; preds = %1
  %tmp_5 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %time_stamp_V)
  br label %3

; <label>:3                                       ; preds = %2, %3
  %i_op_assign1 = phi i5 [ 0, %2 ], [ %j, %3 ]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_5_cast = zext i5 %i_op_assign1 to i11
  %tmp_dest_V = add i11 %tmp_5_cast, %tmp_2
  %tmp_dest_V_1 = zext i11 %tmp_dest_V to i16
  %tmp_13_cast = sext i11 %tmp_dest_V to i64
  %spk_V_addr_2 = getelementptr [608 x i96]* @spk_V, i64 0, i64 %tmp_13_cast
  %tmp_data_V_2 = load i96* %spk_V_addr_2, align 16
  call void @_ssdm_op_Write.axis.volatile.i6P.i32P.i96P.i16P(i6* %spk_out_stream_V_id_V, i32* %spk_out_stream_V_user, i96* %spk_out_stream_V_data_V, i16* %spk_out_stream_V_dest_V, i6 %tmp_id_V, i32 %tmp_5, i96 %tmp_data_V_2, i16 %tmp_dest_V_1)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_8)
  %j = add i5 %i_op_assign1, 1
  %exitcond = icmp eq i5 %i_op_assign1, -14
  br i1 %exitcond, label %.loopexit, label %3

.loopexit:                                        ; preds = %3, %1
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.loopexit, %._crit_edge106
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i6P.i32P.i96P.i16P(i6*, i32*, i96*, i16*, i6, i32, i96, i16) {
entry:
  store i6 %4, i6* %0
  store i32 %5, i32* %1
  store i96 %6, i96* %2
  store i16 %7, i16* %3
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i5, i1, i6, i96 } @_ssdm_op_Read.axis.volatile.i5P.i1P.i6P.i96P(i5*, i1*, i6*, i96*) {
entry:
  %empty = load i5* %0
  %empty_5 = load i1* %1
  %empty_6 = load i6* %2
  %empty_7 = load i96* %3
  %mrv_0 = insertvalue { i5, i1, i6, i96 } undef, i5 %empty, 0
  %mrv1 = insertvalue { i5, i1, i6, i96 } %mrv_0, i1 %empty_5, 1
  %mrv2 = insertvalue { i5, i1, i6, i96 } %mrv1, i6 %empty_6, 2
  %mrv3 = insertvalue { i5, i1, i6, i96 } %mrv2, i96 %empty_7, 3
  ret { i5, i1, i6, i96 } %mrv3
}

define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i1 @_ssdm_op_NbReadReq.axis.i5P.i1P.i6P.i96P(i5*, i1*, i6*, i96*, i32) {
entry:
  ret i1 true
}

declare void @_ssdm_SpecLoopRewind(...) nounwind

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !25, !31, !31, !16, !33, !16, !16, !16, !36, !36, !38, !38, !40, !42, !16, !16, !16, !44, !44, !38, !38, !16, !16, !16, !46, !48, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !50, !53, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!55}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<spk_struct> &", metadata !"hls::stream<spk_struct> &", metadata !"hls::stream<int> &", metadata !"hls::stream<spk_stream> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"pre_in", metadata !"post_in", metadata !"time_stamp", metadata !"spk_out_stream"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct spk_stream &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, true> &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space"}
!18 = metadata !{metadata !"kernel_arg_access_qual"}
!19 = metadata !{metadata !"kernel_arg_type"}
!20 = metadata !{metadata !"kernel_arg_type_qual"}
!21 = metadata !{metadata !"kernel_arg_name"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<38, true> &"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !15, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!33 = metadata !{null, metadata !26, metadata !27, metadata !34, metadata !29, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<38, true> &"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !15, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<38, true> &"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !15, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!40 = metadata !{null, metadata !26, metadata !27, metadata !41, metadata !29, metadata !30, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<6, false> &"}
!42 = metadata !{null, metadata !26, metadata !27, metadata !43, metadata !29, metadata !35, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<6, false> &"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !15, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<6, false> &"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !47, metadata !11, metadata !24, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<96> &"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !24, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const struct spk_struct &"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !""}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !24, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!55 = metadata !{metadata !56, [1 x i32]* @llvm_global_ctors_0}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"llvm.global_ctors.0", metadata !60, metadata !"", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, i32 1}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 4, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"pre_in.V.user.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 0, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"pre_in.V.last", metadata !60, metadata !"bool", i32 0, i32 0}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 5, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"pre_in.V.id.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 95, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"pre_in.V.data.V", metadata !60, metadata !"uint96", i32 0, i32 95}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 4, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"post_in.V.user.V", metadata !60, metadata !"uint5", i32 0, i32 4}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 0, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"post_in.V.last", metadata !60, metadata !"bool", i32 0, i32 0}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 5, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"post_in.V.id.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 95, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"post_in.V.data.V", metadata !60, metadata !"uint96", i32 0, i32 95}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 31, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"time_stamp.V", metadata !60, metadata !"int", i32 0, i32 31}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 5, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"spk_out_stream.V.id.V", metadata !60, metadata !"uint6", i32 0, i32 5}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 31, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"spk_out_stream.V.user", metadata !60, metadata !"int", i32 0, i32 31}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 95, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"spk_out_stream.V.data.V", metadata !60, metadata !"uint96", i32 0, i32 95}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 15, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"spk_out_stream.V.dest.V", metadata !60, metadata !"uint16", i32 0, i32 15}
