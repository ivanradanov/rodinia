; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local void @_Z6reduceliiPfS_(i64 noundef %0, i32 noundef %1, i32 noundef %2, float* nocapture noundef readonly %3, float* nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %7 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %8 = shl nsw i32 %6, 9
  %9 = add nsw i32 %8, %7
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = mul nsw i32 %9, %2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds float, float* %3, i64 %13
  %15 = load float, float* %14, align 4, !tbaa !12
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %16
  %18 = addrspacecast float addrspace(3)* %17 to float*
  store float %15, float* %18, align 4, !tbaa !12
  %19 = getelementptr inbounds float, float* %4, i64 %13
  %20 = load float, float* %19, align 4, !tbaa !12
  %21 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %16
  %22 = addrspacecast float addrspace(3)* %21 to float*
  store float %20, float* %22, align 4, !tbaa !12
  br label %23

23:                                               ; preds = %11, %5
  tail call void @llvm.nvvm.barrier0()
  %24 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  %25 = add i32 %24, -1
  %26 = icmp eq i32 %6, %25
  br i1 %26, label %178, label %27

27:                                               ; preds = %23
  %28 = add nsw i32 %7, 1
  %29 = sext i32 %7 to i64
  %30 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %29
  %31 = addrspacecast float addrspace(3)* %30 to float*
  %32 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %29
  %33 = addrspacecast float addrspace(3)* %32 to float*
  %34 = and i32 %28, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load float, float* %31, align 4, !tbaa !12
  %38 = add nsw i32 %7, -1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %39
  %41 = addrspacecast float addrspace(3)* %40 to float*
  %42 = load float, float* %41, align 4, !tbaa !12
  %43 = fadd contract float %37, %42
  store float %43, float* %31, align 4, !tbaa !12
  %44 = load float, float* %33, align 4, !tbaa !12
  %45 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %39
  %46 = addrspacecast float addrspace(3)* %45 to float*
  %47 = load float, float* %46, align 4, !tbaa !12
  %48 = fadd contract float %44, %47
  store float %48, float* %33, align 4, !tbaa !12
  br label %49

49:                                               ; preds = %36, %27
  tail call void @llvm.nvvm.barrier0()
  %50 = and i32 %28, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load float, float* %31, align 4, !tbaa !12
  %54 = add nsw i32 %7, -2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %55
  %57 = addrspacecast float addrspace(3)* %56 to float*
  %58 = load float, float* %57, align 4, !tbaa !12
  %59 = fadd contract float %53, %58
  store float %59, float* %31, align 4, !tbaa !12
  %60 = load float, float* %33, align 4, !tbaa !12
  %61 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %55
  %62 = addrspacecast float addrspace(3)* %61 to float*
  %63 = load float, float* %62, align 4, !tbaa !12
  %64 = fadd contract float %60, %63
  store float %64, float* %33, align 4, !tbaa !12
  br label %65

65:                                               ; preds = %52, %49
  tail call void @llvm.nvvm.barrier0()
  %66 = and i32 %28, 7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load float, float* %31, align 4, !tbaa !12
  %70 = add nsw i32 %7, -4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %71
  %73 = addrspacecast float addrspace(3)* %72 to float*
  %74 = load float, float* %73, align 4, !tbaa !12
  %75 = fadd contract float %69, %74
  store float %75, float* %31, align 4, !tbaa !12
  %76 = load float, float* %33, align 4, !tbaa !12
  %77 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %71
  %78 = addrspacecast float addrspace(3)* %77 to float*
  %79 = load float, float* %78, align 4, !tbaa !12
  %80 = fadd contract float %76, %79
  store float %80, float* %33, align 4, !tbaa !12
  br label %81

81:                                               ; preds = %68, %65
  tail call void @llvm.nvvm.barrier0()
  %82 = and i32 %28, 15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load float, float* %31, align 4, !tbaa !12
  %86 = add nsw i32 %7, -8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %87
  %89 = addrspacecast float addrspace(3)* %88 to float*
  %90 = load float, float* %89, align 4, !tbaa !12
  %91 = fadd contract float %85, %90
  store float %91, float* %31, align 4, !tbaa !12
  %92 = load float, float* %33, align 4, !tbaa !12
  %93 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %87
  %94 = addrspacecast float addrspace(3)* %93 to float*
  %95 = load float, float* %94, align 4, !tbaa !12
  %96 = fadd contract float %92, %95
  store float %96, float* %33, align 4, !tbaa !12
  br label %97

97:                                               ; preds = %84, %81
  tail call void @llvm.nvvm.barrier0()
  %98 = and i32 %28, 31
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load float, float* %31, align 4, !tbaa !12
  %102 = add nsw i32 %7, -16
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %103
  %105 = addrspacecast float addrspace(3)* %104 to float*
  %106 = load float, float* %105, align 4, !tbaa !12
  %107 = fadd contract float %101, %106
  store float %107, float* %31, align 4, !tbaa !12
  %108 = load float, float* %33, align 4, !tbaa !12
  %109 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %103
  %110 = addrspacecast float addrspace(3)* %109 to float*
  %111 = load float, float* %110, align 4, !tbaa !12
  %112 = fadd contract float %108, %111
  store float %112, float* %33, align 4, !tbaa !12
  br label %113

113:                                              ; preds = %100, %97
  tail call void @llvm.nvvm.barrier0()
  %114 = and i32 %28, 63
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load float, float* %31, align 4, !tbaa !12
  %118 = add nsw i32 %7, -32
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %119
  %121 = addrspacecast float addrspace(3)* %120 to float*
  %122 = load float, float* %121, align 4, !tbaa !12
  %123 = fadd contract float %117, %122
  store float %123, float* %31, align 4, !tbaa !12
  %124 = load float, float* %33, align 4, !tbaa !12
  %125 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %119
  %126 = addrspacecast float addrspace(3)* %125 to float*
  %127 = load float, float* %126, align 4, !tbaa !12
  %128 = fadd contract float %124, %127
  store float %128, float* %33, align 4, !tbaa !12
  br label %129

129:                                              ; preds = %116, %113
  tail call void @llvm.nvvm.barrier0()
  %130 = and i32 %28, 127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load float, float* %31, align 4, !tbaa !12
  %134 = add nsw i32 %7, -64
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %135
  %137 = addrspacecast float addrspace(3)* %136 to float*
  %138 = load float, float* %137, align 4, !tbaa !12
  %139 = fadd contract float %133, %138
  store float %139, float* %31, align 4, !tbaa !12
  %140 = load float, float* %33, align 4, !tbaa !12
  %141 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %135
  %142 = addrspacecast float addrspace(3)* %141 to float*
  %143 = load float, float* %142, align 4, !tbaa !12
  %144 = fadd contract float %140, %143
  store float %144, float* %33, align 4, !tbaa !12
  br label %145

145:                                              ; preds = %132, %129
  tail call void @llvm.nvvm.barrier0()
  %146 = and i32 %28, 255
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load float, float* %31, align 4, !tbaa !12
  %150 = add nsw i32 %7, -128
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %151
  %153 = addrspacecast float addrspace(3)* %152 to float*
  %154 = load float, float* %153, align 4, !tbaa !12
  %155 = fadd contract float %149, %154
  store float %155, float* %31, align 4, !tbaa !12
  %156 = load float, float* %33, align 4, !tbaa !12
  %157 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %151
  %158 = addrspacecast float addrspace(3)* %157 to float*
  %159 = load float, float* %158, align 4, !tbaa !12
  %160 = fadd contract float %156, %159
  store float %160, float* %33, align 4, !tbaa !12
  br label %161

161:                                              ; preds = %148, %145
  tail call void @llvm.nvvm.barrier0()
  %162 = and i32 %28, 511
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load float, float* %31, align 4, !tbaa !12
  %166 = add nsw i32 %7, -256
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i64 0, i64 %167
  %169 = addrspacecast float addrspace(3)* %168 to float*
  %170 = load float, float* %169, align 4, !tbaa !12
  %171 = fadd contract float %165, %170
  store float %171, float* %31, align 4, !tbaa !12
  %172 = load float, float* %33, align 4, !tbaa !12
  %173 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i64 0, i64 %167
  %174 = addrspacecast float addrspace(3)* %173 to float*
  %175 = load float, float* %174, align 4, !tbaa !12
  %176 = fadd contract float %172, %175
  store float %176, float* %33, align 4, !tbaa !12
  br label %177

177:                                              ; preds = %164, %161
  tail call void @llvm.nvvm.barrier0()
  br label %178

178:                                              ; preds = %177, %23
  ret void
}

; Function Attrs: convergent nocallback nounwind
declare void @llvm.nvvm.barrier0() #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_(float noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32* nocapture noundef readonly %4, i32* nocapture noundef readonly %5, i32* nocapture noundef readonly %6, i32* nocapture noundef readonly %7, float* nocapture noundef writeonly %8, float* nocapture noundef writeonly %9, float* nocapture noundef writeonly %10, float* nocapture noundef writeonly %11, float noundef %12, float* nocapture noundef writeonly %13, float* nocapture noundef readonly %14) local_unnamed_addr #1 {
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
  %33 = getelementptr inbounds float, float* %14, i64 %20
  %34 = load float, float* %33, align 4, !tbaa !12
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds i32, i32* %4, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !16
  %38 = mul nsw i32 %31, %1
  %39 = add nsw i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %14, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !12
  %43 = fsub contract float %42, %34
  %44 = getelementptr inbounds i32, i32* %5, i64 %35
  %45 = load i32, i32* %44, align 4, !tbaa !16
  %46 = add nsw i32 %45, %38
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %14, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !12
  %50 = fsub contract float %49, %34
  %51 = sext i32 %31 to i64
  %52 = getelementptr inbounds i32, i32* %7, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !16
  %54 = mul nsw i32 %53, %1
  %55 = add nsw i32 %54, %32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %14, i64 %56
  %58 = load float, float* %57, align 4, !tbaa !12
  %59 = fsub contract float %58, %34
  %60 = getelementptr inbounds i32, i32* %6, i64 %51
  %61 = load i32, i32* %60, align 4, !tbaa !16
  %62 = mul nsw i32 %61, %1
  %63 = add nsw i32 %62, %32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %14, i64 %64
  %66 = load float, float* %65, align 4, !tbaa !12
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
  %108 = getelementptr inbounds float, float* %8, i64 %20
  store float %43, float* %108, align 4, !tbaa !12
  %109 = getelementptr inbounds float, float* %9, i64 %20
  store float %50, float* %109, align 4, !tbaa !12
  %110 = getelementptr inbounds float, float* %11, i64 %20
  store float %59, float* %110, align 4, !tbaa !12
  %111 = getelementptr inbounds float, float* %10, i64 %20
  store float %67, float* %111, align 4, !tbaa !12
  %112 = getelementptr inbounds float, float* %13, i64 %20
  store float %107, float* %112, align 4, !tbaa !12
  br label %113

113:                                              ; preds = %106, %15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_(float noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32* nocapture noundef readnone %4, i32* nocapture noundef readonly %5, i32* nocapture noundef readonly %6, i32* nocapture noundef readnone %7, float* nocapture noundef readonly %8, float* nocapture noundef readonly %9, float* nocapture noundef readonly %10, float* nocapture noundef readonly %11, float* nocapture noundef readonly %12, float* nocapture noundef %13) local_unnamed_addr #1 {
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
  %32 = getelementptr inbounds float, float* %12, i64 %19
  %33 = load float, float* %32, align 4, !tbaa !12
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i32, i32* %5, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !16
  %37 = mul nsw i32 %30, %1
  %38 = add nsw i32 %37, %36
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %12, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !12
  %42 = sext i32 %30 to i64
  %43 = getelementptr inbounds i32, i32* %6, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !16
  %45 = mul nsw i32 %44, %1
  %46 = add nsw i32 %45, %31
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %12, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !12
  %50 = getelementptr inbounds float, float* %8, i64 %19
  %51 = load float, float* %50, align 4, !tbaa !12
  %52 = fmul contract float %33, %51
  %53 = getelementptr inbounds float, float* %9, i64 %19
  %54 = load float, float* %53, align 4, !tbaa !12
  %55 = fmul contract float %41, %54
  %56 = fadd contract float %52, %55
  %57 = getelementptr inbounds float, float* %11, i64 %19
  %58 = load float, float* %57, align 4, !tbaa !12
  %59 = fmul contract float %33, %58
  %60 = fadd contract float %56, %59
  %61 = getelementptr inbounds float, float* %10, i64 %19
  %62 = load float, float* %61, align 4, !tbaa !12
  %63 = fmul contract float %49, %62
  %64 = fadd contract float %60, %63
  %65 = getelementptr inbounds float, float* %13, i64 %19
  %66 = load float, float* %65, align 4, !tbaa !12
  %67 = fpext float %66 to double
  %68 = fpext float %0 to double
  %69 = fmul contract double %68, 2.500000e-01
  %70 = fpext float %64 to double
  %71 = fmul contract double %69, %70
  %72 = fadd contract double %71, %67
  %73 = fptrunc double %72 to float
  store float %73, float* %65, align 4, !tbaa !12
  br label %74

74:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define dso_local void @_Z8compresslPf(i64 noundef %0, float* nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %5 = shl nsw i32 %3, 9
  %6 = add nsw i32 %5, %4
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %7, %0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = getelementptr inbounds float, float* %1, i64 %7
  %11 = load float, float* %10, align 4, !tbaa !12
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
  store float %40, float* %10, align 4, !tbaa !12
  br label %41

41:                                               ; preds = %9, %2
  ret void
}
