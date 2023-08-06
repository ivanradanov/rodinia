; ModuleID = 'main.cu'
source_filename = "main.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.FOUR_VECTOR = type { double, double, double, double }
%struct.par_str = type { double }
%struct.dim_str = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.box_str = type { i32, i32, i32, i32, i64, i32, [26 x %struct.nei_str] }
%struct.nei_str = type { i32, i32, i32, i32, i64 }

@_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared = internal unnamed_addr addrspace(3) global [100 x %struct.FOUR_VECTOR] undef, align 8

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local void @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(ptr nocapture noundef readnone byval(%struct.par_str) align 8 %0, ptr nocapture noundef readonly byval(%struct.dim_str) align 8 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readnone %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %8 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds %struct.dim_str, ptr %1, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !7
  %12 = icmp sgt i64 %11, %9
  br i1 %12, label %13, label %86

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.box_str, ptr %2, i64 %9, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !13
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  %18 = getelementptr inbounds %struct.FOUR_VECTOR, ptr %3, i64 %17
  %19 = getelementptr inbounds %struct.FOUR_VECTOR, ptr %5, i64 %17
  %20 = icmp slt i32 %8, 100
  br i1 %20, label %21, label %28

21:                                               ; preds = %13, %21
  %22 = phi i32 [ %26, %21 ], [ %8, %13 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.FOUR_VECTOR, ptr %18, i64 %23
  %25 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], ptr addrspacecast (ptr addrspace(3) @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared to ptr), i64 0, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !15
  %26 = add nsw i32 %22, 128
  %27 = icmp slt i32 %22, -28
  br i1 %27, label %21, label %28, !llvm.loop !18

28:                                               ; preds = %21, %13
  tail call void @llvm.nvvm.barrier0()
  %29 = getelementptr inbounds %struct.box_str, ptr %2, i64 %9, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !20
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %86, label %32

32:                                               ; preds = %28, %82
  %33 = phi i32 [ %83, %82 ], [ 0, %28 ]
  tail call void @llvm.nvvm.barrier0()
  br i1 %20, label %34, label %82

34:                                               ; preds = %32, %79
  %35 = phi i32 [ %80, %79 ], [ %8, %32 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], ptr addrspacecast (ptr addrspace(3) @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared to ptr), i64 0, i64 %36
  %38 = getelementptr inbounds %struct.FOUR_VECTOR, ptr %19, i64 %36
  %39 = getelementptr inbounds %struct.FOUR_VECTOR, ptr %19, i64 %36, i32 1
  %40 = getelementptr inbounds %struct.FOUR_VECTOR, ptr %19, i64 %36, i32 2
  %41 = getelementptr inbounds %struct.FOUR_VECTOR, ptr %19, i64 %36, i32 3
  %42 = load double, ptr %39, align 8, !tbaa !21
  %43 = load double, ptr %40, align 8, !tbaa !23
  %44 = load double, ptr %41, align 8, !tbaa !24
  %45 = load double, ptr %38, align 8, !tbaa !25
  br label %46

46:                                               ; preds = %46, %34
  %47 = phi double [ %45, %34 ], [ %73, %46 ]
  %48 = phi i32 [ 0, %34 ], [ %77, %46 ]
  %49 = phi double [ %42, %34 ], [ %74, %46 ]
  %50 = phi double [ %43, %34 ], [ %75, %46 ]
  %51 = phi double [ %44, %34 ], [ %76, %46 ]
  %52 = load double, ptr %37, align 8, !tbaa !25
  %53 = fadd contract double %52, %47
  store double %53, ptr %38, align 8, !tbaa !25
  %54 = fadd contract double %52, %49
  %55 = fadd contract double %52, %50
  %56 = fadd contract double %52, %51
  %57 = load double, ptr %37, align 8, !tbaa !25
  %58 = fadd contract double %57, %53
  store double %58, ptr %38, align 8, !tbaa !25
  %59 = fadd contract double %57, %54
  %60 = fadd contract double %57, %55
  %61 = fadd contract double %57, %56
  %62 = load double, ptr %37, align 8, !tbaa !25
  %63 = fadd contract double %62, %58
  store double %63, ptr %38, align 8, !tbaa !25
  %64 = fadd contract double %62, %59
  %65 = fadd contract double %62, %60
  %66 = fadd contract double %62, %61
  %67 = load double, ptr %37, align 8, !tbaa !25
  %68 = fadd contract double %67, %63
  store double %68, ptr %38, align 8, !tbaa !25
  %69 = fadd contract double %67, %64
  %70 = fadd contract double %67, %65
  %71 = fadd contract double %67, %66
  %72 = load double, ptr %37, align 8, !tbaa !25
  %73 = fadd contract double %72, %68
  store double %73, ptr %38, align 8, !tbaa !25
  %74 = fadd contract double %72, %69
  %75 = fadd contract double %72, %70
  %76 = fadd contract double %72, %71
  %77 = add nuw nsw i32 %48, 5
  %78 = icmp eq i32 %77, 100
  br i1 %78, label %79, label %46, !llvm.loop !26

79:                                               ; preds = %46
  store double %74, ptr %39, align 8, !tbaa !21
  store double %75, ptr %40, align 8, !tbaa !23
  store double %76, ptr %41, align 8, !tbaa !24
  %80 = add nsw i32 %35, 128
  %81 = icmp slt i32 %35, -28
  br i1 %81, label %34, label %82, !llvm.loop !27

82:                                               ; preds = %79, %32
  tail call void @llvm.nvvm.barrier0()
  %83 = add nuw nsw i32 %33, 1
  %84 = load i32, ptr %29, align 8, !tbaa !20
  %85 = icmp slt i32 %33, %84
  br i1 %85, label %32, label %86, !llvm.loop !28

86:                                               ; preds = %82, %28, %6
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: convergent nocallback nounwind
declare void @llvm.nvvm.barrier0() #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #3

attributes #0 = { convergent mustprogress norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_80" "target-features"="+ptx74,+sm_80" }
attributes #1 = { argmemonly mustprogress nocallback nofree nounwind willreturn }
attributes #2 = { convergent nocallback nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4}
!llvm.ident = !{!5, !6}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_, !"kernel", i32 1}
!5 = !{!"clang version 16.0.0 (https://github.com/llvm/llvm-project.git cbc378ecb87e3f31dd5aff91f2a621d500640412)"}
!6 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!7 = !{!8, !12, i64 16}
!8 = !{!"_ZTS7dim_str", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"long", !10, i64 0}
!13 = !{!14, !12, i64 16}
!14 = !{!"_ZTS7box_str", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16, !9, i64 24, !10, i64 32}
!15 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 8, !16}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !10, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!14, !9, i64 24}
!21 = !{!22, !17, i64 8}
!22 = !{!"_ZTS11FOUR_VECTOR", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!23 = !{!22, !17, i64 16}
!24 = !{!22, !17, i64 24}
!25 = !{!22, !17, i64 0}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
