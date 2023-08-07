; ModuleID = 'main.cu'
source_filename = "main.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

@_ZZ6reduceliiPfS_E6d_psum = internal unnamed_addr addrspace(3) global [512 x float] undef, align 4
@_ZZ6reduceliiPfS_E7d_psum2 = internal unnamed_addr addrspace(3) global [512 x float] undef, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z7extractlPf(i64 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %5 = shl nsw i32 %3, 9
  %6 = add nsw i32 %5, %4
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %7, %0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  %11 = load float, ptr %10, align 4, !tbaa !12
  %12 = fdiv contract float %11, 2.550000e+02
  %13 = tail call float @llvm.fma.f32(float %12, float 0x3F777313A0000000, float 5.000000e-01)
  %14 = tail call float @llvm.nvvm.saturate.f(float %13) #7
  %15 = tail call float @llvm.nvvm.fma.rm.f(float %14, float 2.520000e+02, float 0x4168000020000000) #7
  %16 = fadd float %15, 0xC168000FE0000000
  %17 = fneg float %16
  %18 = tail call float @llvm.fma.f32(float %12, float 0x3FF7154760000000, float %17)
  %19 = tail call float @llvm.fma.f32(float %12, float 0x3E54AE0C00000000, float %18)
  %20 = bitcast float %15 to i32
  %21 = shl i32 %20, 23
  %22 = bitcast i32 %21 to float
  %23 = tail call float @llvm.nvvm.ex2.approx.ftz.f(float %19) #7
  %24 = fmul float %23, %22
  store float %24, ptr %10, align 4, !tbaa !12
  br label %25

25:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z7preparelPfS_S_(i64 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %6 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %7 = shl nsw i32 %5, 9
  %8 = add nsw i32 %7, %6
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %9, %0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  %13 = load float, ptr %12, align 4, !tbaa !12
  %14 = getelementptr inbounds float, ptr %2, i64 %9
  store float %13, ptr %14, align 4, !tbaa !12
  %15 = load float, ptr %12, align 4, !tbaa !12
  %16 = fmul contract float %15, %15
  %17 = getelementptr inbounds float, ptr %3, i64 %9
  store float %16, ptr %17, align 4, !tbaa !12
  br label %18

18:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local void @_Z6reduceliiPfS_(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %7 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %8 = shl nsw i32 %6, 9
  %9 = add nsw i32 %8, %7
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %12
  %14 = mul nsw i32 %9, %2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %4, i64 %15
  %17 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %12
  %18 = getelementptr inbounds float, ptr %3, i64 %15
  %19 = load float, ptr %18, align 4, !tbaa !12
  store float %19, ptr %17, align 4, !tbaa !12
  %20 = load float, ptr %16, align 4, !tbaa !12
  store float %20, ptr %13, align 4, !tbaa !12
  br label %21

21:                                               ; preds = %11, %5
  tail call void @llvm.nvvm.barrier0()
  %22 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  %23 = add i32 %22, -1
  %24 = icmp eq i32 %6, %23
  br i1 %24, label %156, label %25

25:                                               ; preds = %21
  %26 = add nsw i32 %7, 1
  %27 = sext i32 %7 to i64
  %28 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %27
  %29 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %27
  %30 = and i32 %26, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load float, ptr %28, align 4, !tbaa !12
  %34 = add nsw i32 %7, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !12
  %38 = fadd contract float %33, %37
  store float %38, ptr %28, align 4, !tbaa !12
  %39 = load float, ptr %29, align 4, !tbaa !12
  %40 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %35
  %41 = load float, ptr %40, align 4, !tbaa !12
  %42 = fadd contract float %39, %41
  store float %42, ptr %29, align 4, !tbaa !12
  br label %43

43:                                               ; preds = %32, %25
  tail call void @llvm.nvvm.barrier0()
  %44 = and i32 %26, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load float, ptr %28, align 4, !tbaa !12
  %48 = add nsw i32 %7, -2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !12
  %52 = fadd contract float %47, %51
  store float %52, ptr %28, align 4, !tbaa !12
  %53 = load float, ptr %29, align 4, !tbaa !12
  %54 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %49
  %55 = load float, ptr %54, align 4, !tbaa !12
  %56 = fadd contract float %53, %55
  store float %56, ptr %29, align 4, !tbaa !12
  br label %57

57:                                               ; preds = %46, %43
  tail call void @llvm.nvvm.barrier0()
  %58 = and i32 %26, 7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load float, ptr %28, align 4, !tbaa !12
  %62 = add nsw i32 %7, -4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !12
  %66 = fadd contract float %61, %65
  store float %66, ptr %28, align 4, !tbaa !12
  %67 = load float, ptr %29, align 4, !tbaa !12
  %68 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %63
  %69 = load float, ptr %68, align 4, !tbaa !12
  %70 = fadd contract float %67, %69
  store float %70, ptr %29, align 4, !tbaa !12
  br label %71

71:                                               ; preds = %60, %57
  tail call void @llvm.nvvm.barrier0()
  %72 = and i32 %26, 15
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load float, ptr %28, align 4, !tbaa !12
  %76 = add nsw i32 %7, -8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !12
  %80 = fadd contract float %75, %79
  store float %80, ptr %28, align 4, !tbaa !12
  %81 = load float, ptr %29, align 4, !tbaa !12
  %82 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %77
  %83 = load float, ptr %82, align 4, !tbaa !12
  %84 = fadd contract float %81, %83
  store float %84, ptr %29, align 4, !tbaa !12
  br label %85

85:                                               ; preds = %74, %71
  tail call void @llvm.nvvm.barrier0()
  %86 = and i32 %26, 31
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load float, ptr %28, align 4, !tbaa !12
  %90 = add nsw i32 %7, -16
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !12
  %94 = fadd contract float %89, %93
  store float %94, ptr %28, align 4, !tbaa !12
  %95 = load float, ptr %29, align 4, !tbaa !12
  %96 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %91
  %97 = load float, ptr %96, align 4, !tbaa !12
  %98 = fadd contract float %95, %97
  store float %98, ptr %29, align 4, !tbaa !12
  br label %99

99:                                               ; preds = %88, %85
  tail call void @llvm.nvvm.barrier0()
  %100 = and i32 %26, 63
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load float, ptr %28, align 4, !tbaa !12
  %104 = add nsw i32 %7, -32
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !12
  %108 = fadd contract float %103, %107
  store float %108, ptr %28, align 4, !tbaa !12
  %109 = load float, ptr %29, align 4, !tbaa !12
  %110 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %105
  %111 = load float, ptr %110, align 4, !tbaa !12
  %112 = fadd contract float %109, %111
  store float %112, ptr %29, align 4, !tbaa !12
  br label %113

113:                                              ; preds = %102, %99
  tail call void @llvm.nvvm.barrier0()
  %114 = and i32 %26, 127
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load float, ptr %28, align 4, !tbaa !12
  %118 = add nsw i32 %7, -64
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %119
  %121 = load float, ptr %120, align 4, !tbaa !12
  %122 = fadd contract float %117, %121
  store float %122, ptr %28, align 4, !tbaa !12
  %123 = load float, ptr %29, align 4, !tbaa !12
  %124 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %119
  %125 = load float, ptr %124, align 4, !tbaa !12
  %126 = fadd contract float %123, %125
  store float %126, ptr %29, align 4, !tbaa !12
  br label %127

127:                                              ; preds = %116, %113
  tail call void @llvm.nvvm.barrier0()
  %128 = and i32 %26, 255
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load float, ptr %28, align 4, !tbaa !12
  %132 = add nsw i32 %7, -128
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %133
  %135 = load float, ptr %134, align 4, !tbaa !12
  %136 = fadd contract float %131, %135
  store float %136, ptr %28, align 4, !tbaa !12
  %137 = load float, ptr %29, align 4, !tbaa !12
  %138 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %133
  %139 = load float, ptr %138, align 4, !tbaa !12
  %140 = fadd contract float %137, %139
  store float %140, ptr %29, align 4, !tbaa !12
  br label %141

141:                                              ; preds = %130, %127
  tail call void @llvm.nvvm.barrier0()
  %142 = and i32 %26, 511
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load float, ptr %28, align 4, !tbaa !12
  %146 = add nsw i32 %7, -256
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E6d_psum to ptr), i64 0, i64 %147
  %149 = load float, ptr %148, align 4, !tbaa !12
  %150 = fadd contract float %145, %149
  store float %150, ptr %28, align 4, !tbaa !12
  %151 = load float, ptr %29, align 4, !tbaa !12
  %152 = getelementptr inbounds [512 x float], ptr addrspacecast (ptr addrspace(3) @_ZZ6reduceliiPfS_E7d_psum2 to ptr), i64 0, i64 %147
  %153 = load float, ptr %152, align 4, !tbaa !12
  %154 = fadd contract float %151, %153
  store float %154, ptr %29, align 4, !tbaa !12
  br label %155

155:                                              ; preds = %144, %141
  tail call void @llvm.nvvm.barrier0()
  br label %156

156:                                              ; preds = %155, %21
  ret void
}

; Function Attrs: convergent nocallback nounwind
declare void @llvm.nvvm.barrier0() #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_(float noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, float noundef %12, ptr nocapture noundef writeonly %13, ptr nocapture noundef readonly %14) local_unnamed_addr #1 {
  %16 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %17 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %18 = shl nsw i32 %16, 9
  %19 = add nsw i32 %18, %17
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %20, %3
  br i1 %21, label %22, label %113

22:                                               ; preds = %15
  %23 = add nsw i32 %19, 1
  %24 = freeze i32 %23
  %25 = sdiv i32 %24, %1
  %26 = mul i32 %25, %1
  %27 = sub i32 %24, %26
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %1, i32 %27
  %30 = sext i1 %28 to i32
  %31 = add nsw i32 %25, %30
  %32 = add nsw i32 %29, -1
  %33 = getelementptr inbounds float, ptr %14, i64 %20
  %34 = load float, ptr %33, align 4, !tbaa !12
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds i32, ptr %4, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !16
  %38 = mul nsw i32 %31, %1
  %39 = add nsw i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %14, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !12
  %43 = fsub contract float %42, %34
  %44 = getelementptr inbounds i32, ptr %5, i64 %35
  %45 = load i32, ptr %44, align 4, !tbaa !16
  %46 = add nsw i32 %45, %38
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %14, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !12
  %50 = fsub contract float %49, %34
  %51 = sext i32 %31 to i64
  %52 = getelementptr inbounds i32, ptr %7, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !16
  %54 = mul nsw i32 %53, %1
  %55 = add nsw i32 %54, %32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %14, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !12
  %59 = fsub contract float %58, %34
  %60 = getelementptr inbounds i32, ptr %6, i64 %51
  %61 = load i32, ptr %60, align 4, !tbaa !16
  %62 = mul nsw i32 %61, %1
  %63 = add nsw i32 %62, %32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %14, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !12
  %67 = fsub contract float %66, %34
  %68 = fmul contract float %43, %43
  %69 = fmul contract float %50, %50
  %70 = fadd contract float %68, %69
  %71 = fmul contract float %59, %59
  %72 = fadd contract float %70, %71
  %73 = fmul contract float %67, %67
  %74 = fadd contract float %72, %73
  %75 = fmul contract float %34, %34
  %76 = fdiv contract float %74, %75
  %77 = fadd contract float %43, %50
  %78 = fadd contract float %77, %59
  %79 = fadd contract float %78, %67
  %80 = fdiv contract float %79, %34
  %81 = fpext float %76 to double
  %82 = fmul contract double %81, 5.000000e-01
  %83 = fmul contract float %80, %80
  %84 = fpext float %83 to double
  %85 = fmul contract double %84, 6.250000e-02
  %86 = fsub contract double %82, %85
  %87 = fptrunc double %86 to float
  %88 = fpext float %80 to double
  %89 = fmul contract double %88, 2.500000e-01
  %90 = fadd contract double %89, 1.000000e+00
  %91 = fptrunc double %90 to float
  %92 = fmul contract float %91, %91
  %93 = fdiv contract float %87, %92
  %94 = fsub contract float %93, %12
  %95 = fadd contract float %12, 1.000000e+00
  %96 = fmul contract float %95, %12
  %97 = fdiv contract float %94, %96
  %98 = fpext float %97 to double
  %99 = fadd contract double %98, 1.000000e+00
  %100 = fdiv contract double 1.000000e+00, %99
  %101 = fptrunc double %100 to float
  %102 = fcmp contract olt float %101, 0.000000e+00
  br i1 %102, label %106, label %103

103:                                              ; preds = %22
  %104 = fcmp contract ogt float %101, 1.000000e+00
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %22, %103, %105
  %107 = phi float [ 1.000000e+00, %105 ], [ %101, %103 ], [ 0.000000e+00, %22 ]
  %108 = getelementptr inbounds float, ptr %8, i64 %20
  store float %43, ptr %108, align 4, !tbaa !12
  %109 = getelementptr inbounds float, ptr %9, i64 %20
  store float %50, ptr %109, align 4, !tbaa !12
  %110 = getelementptr inbounds float, ptr %11, i64 %20
  store float %59, ptr %110, align 4, !tbaa !12
  %111 = getelementptr inbounds float, ptr %10, i64 %20
  store float %67, ptr %111, align 4, !tbaa !12
  %112 = getelementptr inbounds float, ptr %13, i64 %20
  store float %107, ptr %112, align 4, !tbaa !12
  br label %113

113:                                              ; preds = %106, %15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_(float noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readnone %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef readonly %11, ptr nocapture noundef readonly %12, ptr nocapture noundef %13) local_unnamed_addr #1 {
  %15 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %16 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %17 = shl nsw i32 %15, 9
  %18 = add nsw i32 %17, %16
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %19, %3
  br i1 %20, label %21, label %74

21:                                               ; preds = %14
  %22 = add nsw i32 %18, 1
  %23 = freeze i32 %22
  %24 = sdiv i32 %23, %1
  %25 = mul i32 %24, %1
  %26 = sub i32 %23, %25
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %1, i32 %26
  %29 = sext i1 %27 to i32
  %30 = add nsw i32 %24, %29
  %31 = add nsw i32 %28, -1
  %32 = getelementptr inbounds float, ptr %12, i64 %19
  %33 = load float, ptr %32, align 4, !tbaa !12
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i32, ptr %5, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !16
  %37 = mul nsw i32 %30, %1
  %38 = add nsw i32 %37, %36
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, ptr %12, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !12
  %42 = sext i32 %30 to i64
  %43 = getelementptr inbounds i32, ptr %6, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !16
  %45 = mul nsw i32 %44, %1
  %46 = add nsw i32 %45, %31
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %12, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !12
  %50 = getelementptr inbounds float, ptr %8, i64 %19
  %51 = load float, ptr %50, align 4, !tbaa !12
  %52 = fmul contract float %33, %51
  %53 = getelementptr inbounds float, ptr %9, i64 %19
  %54 = load float, ptr %53, align 4, !tbaa !12
  %55 = fmul contract float %41, %54
  %56 = fadd contract float %52, %55
  %57 = getelementptr inbounds float, ptr %11, i64 %19
  %58 = load float, ptr %57, align 4, !tbaa !12
  %59 = fmul contract float %33, %58
  %60 = fadd contract float %56, %59
  %61 = getelementptr inbounds float, ptr %10, i64 %19
  %62 = load float, ptr %61, align 4, !tbaa !12
  %63 = fmul contract float %49, %62
  %64 = fadd contract float %60, %63
  %65 = getelementptr inbounds float, ptr %13, i64 %19
  %66 = load float, ptr %65, align 4, !tbaa !12
  %67 = fpext float %66 to double
  %68 = fpext float %0 to double
  %69 = fmul contract double %68, 2.500000e-01
  %70 = fpext float %64 to double
  %71 = fmul contract double %69, %70
  %72 = fadd contract double %71, %67
  %73 = fptrunc double %72 to float
  store float %73, ptr %65, align 4, !tbaa !12
  br label %74

74:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z8compresslPf(i64 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %5 = shl nsw i32 %3, 9
  %6 = add nsw i32 %5, %4
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %7, %0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  %11 = load float, ptr %10, align 4, !tbaa !12
  %12 = fcmp olt float %11, 0x3810000000000000
  %13 = fmul float %11, 0x4160000000000000
  %14 = select i1 %12, float %13, float %11
  %15 = select i1 %12, float -2.300000e+01, float 0.000000e+00
  %16 = bitcast float %14 to i32
  %17 = add nsw i32 %16, -1059760811
  %18 = and i32 %17, -8388608
  %19 = sub nsw i32 %16, %18
  %20 = bitcast i32 %19 to float
  %21 = sitofp i32 %18 to float
  %22 = tail call float @llvm.fma.f32(float %21, float 0x3E80000000000000, float %15)
  %23 = fadd float %20, -1.000000e+00
  %24 = tail call float @llvm.fma.f32(float %23, float 0xBFC0AA04E0000000, float 0x3FC2073EC0000000)
  %25 = tail call float @llvm.fma.f32(float %24, float %23, float 0xBFBF19B980000000)
  %26 = tail call float @llvm.fma.f32(float %25, float %23, float 0x3FC1E52AA0000000)
  %27 = tail call float @llvm.fma.f32(float %26, float %23, float 0xBFC55B1720000000)
  %28 = tail call float @llvm.fma.f32(float %27, float %23, float 0x3FC99DA160000000)
  %29 = tail call float @llvm.fma.f32(float %28, float %23, float 0xBFCFFFE440000000)
  %30 = tail call float @llvm.fma.f32(float %29, float %23, float 0x3FD5554F00000000)
  %31 = tail call float @llvm.fma.f32(float %30, float %23, float -5.000000e-01)
  %32 = fmul float %23, %31
  %33 = tail call float @llvm.fma.f32(float %32, float %23, float %23)
  %34 = tail call float @llvm.fma.f32(float %22, float 0x3FE62E4300000000, float %33)
  %35 = icmp ugt i32 %16, 2139095039
  %36 = tail call float @llvm.fma.f32(float %14, float 0x7FF0000000000000, float 0x7FF0000000000000)
  %37 = select i1 %35, float %36, float %34
  %38 = fcmp oeq float %14, 0.000000e+00
  %39 = fmul contract float %37, 2.550000e+02
  %40 = select i1 %38, float 0xFFF0000000000000, float %39
  store float %40, ptr %10, align 4, !tbaa !12
  br label %41

41:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.nvvm.saturate.f(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.nvvm.fma.rm.f(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare float @llvm.nvvm.ex2.approx.ftz.f(float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_86" "target-features"="+ptx74,+sm_86" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_86" "target-features"="+ptx74,+sm_86" }
attributes #2 = { convergent mustprogress norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_86" "target-features"="+ptx74,+sm_86" }
attributes #3 = { convergent nocallback nounwind }
attributes #4 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10, !11}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 4]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z7extractlPf, !"kernel", i32 1}
!5 = !{ptr @_Z7preparelPfS_S_, !"kernel", i32 1}
!6 = !{ptr @_Z6reduceliiPfS_, !"kernel", i32 1}
!7 = !{ptr @_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_, !"kernel", i32 1}
!8 = !{ptr @_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_, !"kernel", i32 1}
!9 = !{ptr @_Z8compresslPf, !"kernel", i32 1}
!10 = !{!"clang version 16.0.0 (https://github.com/llvm/llvm-project.git cbc378ecb87e3f31dd5aff91f2a621d500640412)"}
!11 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !14, i64 0}
