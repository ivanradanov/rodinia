; Function Attrs: nounwind
define void @main_kernel94871588470640(i64 %0, i32 %1, i32 %2, float* nocapture readonly %3, float* nocapture readonly %4) local_unnamed_addr #1 {
  %6 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %7 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %8 = sext i32 %7 to i64
  %9 = shl i32 %6, 9
  %10 = add i32 %9, %7
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %8
  %14 = mul i32 %10, %2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %4, i64 %15
  %17 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %8
  %18 = getelementptr inbounds float, float* %3, i64 %15
  %19 = load float, float* %18, align 4
  store float %19, float addrspace(3)* %17, align 4
  %20 = load float, float* %16, align 4
  store float %20, float addrspace(3)* %13, align 4
  br label %21

21:                                               ; preds = %12, %5
  tail call void @llvm.nvvm.barrier0()
  %22 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  %23 = add i32 %22, -1
  %.not.i.i = icmp eq i32 %6, %23
  br i1 %.not.i.i, label %_Z21__device_stub__reduceliiPfS_.exit, label %24

24:                                               ; preds = %21
  %25 = add i32 %7, 1
  %26 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %8
  %27 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %8
  %28 = and i32 %25, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load float, float addrspace(3)* %26, align 4
  %32 = add i32 %7, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %33
  %35 = load float, float addrspace(3)* %34, align 4
  %36 = fadd contract float %31, %35
  store float %36, float addrspace(3)* %26, align 4
  %37 = load float, float addrspace(3)* %27, align 4
  %38 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %33
  %39 = load float, float addrspace(3)* %38, align 4
  %40 = fadd contract float %37, %39
  store float %40, float addrspace(3)* %27, align 4
  br label %41

41:                                               ; preds = %30, %24
  tail call void @llvm.nvvm.barrier0()
  %42 = and i32 %25, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load float, float addrspace(3)* %26, align 4
  %46 = add i32 %7, -2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %47
  %49 = load float, float addrspace(3)* %48, align 4
  %50 = fadd contract float %45, %49
  store float %50, float addrspace(3)* %26, align 4
  %51 = load float, float addrspace(3)* %27, align 4
  %52 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %47
  %53 = load float, float addrspace(3)* %52, align 4
  %54 = fadd contract float %51, %53
  store float %54, float addrspace(3)* %27, align 4
  br label %55

55:                                               ; preds = %44, %41
  tail call void @llvm.nvvm.barrier0()
  %56 = and i32 %25, 7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load float, float addrspace(3)* %26, align 4
  %60 = add i32 %7, -4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %61
  %63 = load float, float addrspace(3)* %62, align 4
  %64 = fadd contract float %59, %63
  store float %64, float addrspace(3)* %26, align 4
  %65 = load float, float addrspace(3)* %27, align 4
  %66 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %61
  %67 = load float, float addrspace(3)* %66, align 4
  %68 = fadd contract float %65, %67
  store float %68, float addrspace(3)* %27, align 4
  br label %69

69:                                               ; preds = %58, %55
  tail call void @llvm.nvvm.barrier0()
  %70 = and i32 %25, 15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load float, float addrspace(3)* %26, align 4
  %74 = add i32 %7, -8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %75
  %77 = load float, float addrspace(3)* %76, align 4
  %78 = fadd contract float %73, %77
  store float %78, float addrspace(3)* %26, align 4
  %79 = load float, float addrspace(3)* %27, align 4
  %80 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %75
  %81 = load float, float addrspace(3)* %80, align 4
  %82 = fadd contract float %79, %81
  store float %82, float addrspace(3)* %27, align 4
  br label %83

83:                                               ; preds = %72, %69
  tail call void @llvm.nvvm.barrier0()
  %84 = and i32 %25, 31
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load float, float addrspace(3)* %26, align 4
  %88 = add i32 %7, -16
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %89
  %91 = load float, float addrspace(3)* %90, align 4
  %92 = fadd contract float %87, %91
  store float %92, float addrspace(3)* %26, align 4
  %93 = load float, float addrspace(3)* %27, align 4
  %94 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %89
  %95 = load float, float addrspace(3)* %94, align 4
  %96 = fadd contract float %93, %95
  store float %96, float addrspace(3)* %27, align 4
  br label %97

97:                                               ; preds = %86, %83
  tail call void @llvm.nvvm.barrier0()
  %98 = and i32 %25, 63
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load float, float addrspace(3)* %26, align 4
  %102 = add i32 %7, -32
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %103
  %105 = load float, float addrspace(3)* %104, align 4
  %106 = fadd contract float %101, %105
  store float %106, float addrspace(3)* %26, align 4
  %107 = load float, float addrspace(3)* %27, align 4
  %108 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %103
  %109 = load float, float addrspace(3)* %108, align 4
  %110 = fadd contract float %107, %109
  store float %110, float addrspace(3)* %27, align 4
  br label %111

111:                                              ; preds = %100, %97
  tail call void @llvm.nvvm.barrier0()
  %112 = and i32 %25, 127
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load float, float addrspace(3)* %26, align 4
  %116 = add i32 %7, -64
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %117
  %119 = load float, float addrspace(3)* %118, align 4
  %120 = fadd contract float %115, %119
  store float %120, float addrspace(3)* %26, align 4
  %121 = load float, float addrspace(3)* %27, align 4
  %122 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %117
  %123 = load float, float addrspace(3)* %122, align 4
  %124 = fadd contract float %121, %123
  store float %124, float addrspace(3)* %27, align 4
  br label %125

125:                                              ; preds = %114, %111
  tail call void @llvm.nvvm.barrier0()
  %126 = and i32 %25, 255
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load float, float addrspace(3)* %26, align 4
  %130 = add i32 %7, -128
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %131
  %133 = load float, float addrspace(3)* %132, align 4
  %134 = fadd contract float %129, %133
  store float %134, float addrspace(3)* %26, align 4
  %135 = load float, float addrspace(3)* %27, align 4
  %136 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %131
  %137 = load float, float addrspace(3)* %136, align 4
  %138 = fadd contract float %135, %137
  store float %138, float addrspace(3)* %27, align 4
  br label %139

139:                                              ; preds = %128, %125
  tail call void @llvm.nvvm.barrier0()
  %140 = and i32 %25, 511
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %.loopexit.loopexit.i.i

142:                                              ; preds = %139
  %143 = load float, float addrspace(3)* %26, align 4
  %144 = add i32 %7, -256
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595392944, i64 0, i64 %145
  %147 = load float, float addrspace(3)* %146, align 4
  %148 = fadd contract float %143, %147
  store float %148, float addrspace(3)* %26, align 4
  %149 = load float, float addrspace(3)* %27, align 4
  %150 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @shared_mem_94871595394128, i64 0, i64 %145
  %151 = load float, float addrspace(3)* %150, align 4
  %152 = fadd contract float %149, %151
  store float %152, float addrspace(3)* %27, align 4
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %142, %139
  tail call void @llvm.nvvm.barrier0()
  br label %_Z21__device_stub__reduceliiPfS_.exit

_Z21__device_stub__reduceliiPfS_.exit:            ; preds = %21, %.loopexit.loopexit.i.i
  ret void
}
