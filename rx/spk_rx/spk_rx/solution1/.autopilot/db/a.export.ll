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

define void @spk_packet_rx(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V, i5* %post_in_V_user_V, i1* %post_in_V_last, i6* %post_in_V_id_V, i96* %post_in_V_data_V, i32* %time_stamp_V, i6* %spk_out_stream_V_id_V, i32* %spk_out_stream_V_user, i96* %spk_out_stream_V_data_V) {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %pre_in_V_user_V), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %pre_in_V_last), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %pre_in_V_id_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i96* %pre_in_V_data_V), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %post_in_V_user_V), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %post_in_V_last), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %post_in_V_id_V), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i96* %post_in_V_data_V), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %time_stamp_V), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %spk_out_stream_V_id_V), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %spk_out_stream_V_user), !map !76
  call void (...)* @_ssdm_op_SpecBitsMap(i96* %spk_out_stream_V_data_V), !map !80
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @spk_packet_rx_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i6* %spk_out_stream_V_id_V, i32* %spk_out_stream_V_user, i96* %spk_out_stream_V_data_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i5* %post_in_V_user_V, i1* %post_in_V_last, i6* %post_in_V_id_V, i96* %post_in_V_data_V, [5 x i8]* @p_str, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V, [5 x i8]* @p_str, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %time_stamp_V, [5 x i8]* @p_str, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i5P.i1P.i6P.i96P(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V, i32 1)
  br i1 %tmp, label %0, label %._crit_edge35

; <label>:0                                       ; preds = %.preheader.preheader
  %empty = call { i5, i1, i6, i96 } @_ssdm_op_Read.axis.volatile.i5P.i1P.i6P.i96P(i5* %pre_in_V_user_V, i1* %pre_in_V_last, i6* %pre_in_V_id_V, i96* %pre_in_V_data_V)
  %tmp_user_V = extractvalue { i5, i1, i6, i96 } %empty, 0
  %tmp_id_V_1 = extractvalue { i5, i1, i6, i96 } %empty, 2
  %tmp_data_V = extractvalue { i5, i1, i6, i96 } %empty, 3
  %tmp_2_cast = zext i5 %tmp_user_V to i11
  %tmp_3_cast = zext i6 %tmp_id_V_1 to i11
  %tmp_8 = mul i11 %tmp_3_cast, 19
  %tmp_s = add i11 %tmp_8, %tmp_2_cast
  %tmp_10_cast = sext i11 %tmp_s to i64
  %spk_V_addr = getelementptr [608 x i96]* @spk_V, i64 0, i64 %tmp_10_cast
  store i96 %tmp_data_V, i96* %spk_V_addr, align 16
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %0, %.preheader.preheader
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.axis.i5P.i1P.i6P.i96P(i5* %post_in_V_user_V, i1* %post_in_V_last, i6* %post_in_V_id_V, i96* %post_in_V_data_V, i32 1)
  br i1 %tmp_1, label %1, label %._crit_edge36

; <label>:1                                       ; preds = %._crit_edge35
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
  %tmp_6 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %time_stamp_V)
  br label %3

; <label>:3                                       ; preds = %2, %3
  %j1 = phi i5 [ 0, %2 ], [ %j, %3 ]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 19, i64 19, i64 19)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str2) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_9_cast = zext i5 %j1 to i11
  %tmp_4 = add i11 %tmp_2, %tmp_9_cast
  %tmp_13_cast = sext i11 %tmp_4 to i64
  %spk_V_addr_2 = getelementptr [608 x i96]* @spk_V, i64 0, i64 %tmp_13_cast
  %tmp_data_V_2 = load i96* %spk_V_addr_2, align 16
  call void @_ssdm_op_Write.axis.volatile.i6P.i32P.i96P(i6* %spk_out_stream_V_id_V, i32* %spk_out_stream_V_user, i96* %spk_out_stream_V_data_V, i6 %tmp_id_V, i32 %tmp_6, i96 %tmp_data_V_2)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str2, i32 %tmp_5)
  %j = add i5 %j1, 1
  %exitcond = icmp eq i5 %j1, -14
  br i1 %exitcond, label %.loopexit, label %3

.loopexit:                                        ; preds = %3, %1
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %.loopexit, %._crit_edge35
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i6P.i32P.i96P(i6*, i32*, i96*, i6, i32, i96) {
entry:
  store i6 %3, i6* %0
  store i32 %4, i32* %1
  store i96 %5, i96* %2
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

!opencl.kernels = !{!0, !7, !13, !13, !13, !19, !22, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !24, !27, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!29}

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
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<96> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !21, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const struct spk_struct &"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !""}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !21, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!29 = metadata !{metadata !30, [1 x i32]* @llvm_global_ctors_0}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"llvm.global_ctors.0", metadata !34, metadata !"", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, i32 1}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 4, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"pre_in.V.user.V", metadata !34, metadata !"uint5", i32 0, i32 4}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"pre_in.V.last", metadata !34, metadata !"bool", i32 0, i32 0}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 5, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"pre_in.V.id.V", metadata !34, metadata !"uint6", i32 0, i32 5}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 95, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"pre_in.V.data.V", metadata !34, metadata !"uint96", i32 0, i32 95}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 4, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"post_in.V.user.V", metadata !34, metadata !"uint5", i32 0, i32 4}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 0, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"post_in.V.last", metadata !34, metadata !"bool", i32 0, i32 0}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 5, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"post_in.V.id.V", metadata !34, metadata !"uint6", i32 0, i32 5}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 95, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"post_in.V.data.V", metadata !34, metadata !"uint96", i32 0, i32 95}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 31, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"time_stamp.V", metadata !34, metadata !"int", i32 0, i32 31}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 5, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"spk_out_stream.V.id.V", metadata !34, metadata !"uint6", i32 0, i32 5}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 31, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"spk_out_stream.V.user", metadata !34, metadata !"int", i32 0, i32 31}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 95, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"spk_out_stream.V.data.V", metadata !34, metadata !"uint96", i32 0, i32 95}
