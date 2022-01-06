module attributes {llvm.data_layout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64", llvm.target_triple = "nvptx64-nvidia-cuda"}  {
  llvm.mlir.global internal constant @str11("memcpy device > device\00")
  memref.global "private" @_ZN8dwt_cudaL10scale97MulE : memref<1xf32> = uninitialized
  memref.global "private" @_ZN8dwt_cudaL10scale97DivE : memref<1xf32> = uninitialized
  memref.global "private" @_ZN8dwt_cudaL10f97Update2E : memref<1xf32> = uninitialized
  memref.global "private" @_ZN8dwt_cudaL11f97Predict2E : memref<1xf32> = uninitialized
  memref.global "private" @_ZN8dwt_cudaL10f97Update1E : memref<1xf32> = uninitialized
  memref.global "private" @_ZN8dwt_cudaL11f97Predict1E : memref<1xf32> = uninitialized
  llvm.func @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
  llvm.mlir.global internal constant @str10("%s, %s, %.17g, %s, %s, %d,\0A\00")
  llvm.mlir.global internal constant @str9("polygeist\00")
  llvm.mlir.global internal constant @str8("HOSTNAME\00")
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str7("could not open timing file %s, errno %d, %s\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str6("a\00")
  llvm.mlir.global external @stdout() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str5("-\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  llvm.mlir.global internal constant @str4("\00")
  llvm.func @getenv(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str3("MY_TIMING_FILE\00")
  llvm.mlir.global internal constant @str2("FDWT 9/7 kernel\00")
  llvm.mlir.global internal constant @str1("fdwt97Kernel\00")
  llvm.mlir.global internal constant @str0("dwt2d\00")
  func @_ZN8dwt_cuda18launchFDWT97KernelILi192ELi8EEEvPfS1_ii(%arg0: memref<?xf32>, %arg1: memref<?xf32>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c4 = arith.constant 4 : index
    %c32_i32 = arith.constant 32 : i32
    %c1512_i32 = arith.constant 1512 : i32
    %c31_i32 = arith.constant 31 : i32
    %c15 = arith.constant 15 : index
    %c7_i32 = arith.constant 7 : i32
    %c96_i32 = arith.constant 96 : i32
    %c191_i32 = arith.constant 191 : i32
    %c3 = arith.constant 3 : index
    %c124_i32 = arith.constant 124 : i32
    %c123_i32 = arith.constant 123 : i32
    %c-2_i32 = arith.constant -2 : i32
    %c4_i32 = arith.constant 4 : i32
    %c-4_i32 = arith.constant -4 : i32
    %c1_i64 = arith.constant 1 : i64
    %c-7_i32 = arith.constant -7 : i32
    %c12 = arith.constant 12 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c120_i32 = arith.constant 120 : i32
    %c192_i32 = arith.constant 192 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst = arith.constant 1.000000e-09 : f64
    %c192 = arith.constant 192 : index
    %c400_i64 = arith.constant 400 : i64
    %c300_i64 = arith.constant 300 : i64
    %c500_i64 = arith.constant 500 : i64
    %c200_i64 = arith.constant 200 : i64
    %c600_i64 = arith.constant 600 : i64
    %c100_i64 = arith.constant 100 : i64
    %c192_i64 = arith.constant 192 : i64
    %c1512_i64 = arith.constant 1512 : i64
    %c576_i64 = arith.constant 576 : i64
    %c577_i64 = arith.constant 577 : i64
    %c2088_i64 = arith.constant 2088 : i64
    %c1513_i64 = arith.constant 1513 : i64
    %c2089_i64 = arith.constant 2089 : i64
    %c700_i64 = arith.constant 700 : i64
    %c701_i64 = arith.constant 701 : i64
    %c2212_i64 = arith.constant 2212 : i64
    %c1468_i64 = arith.constant 1468 : i64
    %c1469_i64 = arith.constant 1469 : i64
    %c2980_i64 = arith.constant 2980 : i64
    %c2213_i64 = arith.constant 2213 : i64
    %c2981_i64 = arith.constant 2981 : i64
    %c8_i64 = arith.constant 8 : i64
    %c2_i64 = arith.constant 2 : i64
    %c3_i64 = arith.constant 3 : i64
    %0 = memref.alloca() : memref<1x2xi64>
    %1 = memref.alloca() : memref<1x2xi64>
    %2 = arith.divsi %arg3, %c120_i32 : i32
    %3 = arith.index_cast %2 : i32 to index
    %4 = arith.remsi %arg3, %c120_i32 : i32
    %5 = arith.trunci %4 : i32 to i8
    %6 = arith.trunci %5 : i8 to i1
    %7 = select %6, %c1_i32, %c0_i32 : i32
    %8 = arith.index_cast %7 : i32 to index
    %9 = arith.addi %2, %7 : i32
    %10 = arith.divsi %arg2, %c192_i32 : i32
    %11 = arith.index_cast %10 : i32 to index
    %12 = arith.remsi %arg2, %c192_i32 : i32
    %13 = arith.trunci %12 : i32 to i8
    %14 = arith.trunci %13 : i8 to i1
    %15 = select %14, %c1_i32, %c0_i32 : i32
    %16 = arith.index_cast %15 : i32 to index
    %17 = arith.muli %9, %c8_i32 : i32
    %18 = arith.divsi %arg3, %17 : i32
    %19 = arith.index_cast %18 : i32 to index
    %20 = arith.remsi %arg3, %17 : i32
    %21 = arith.trunci %20 : i32 to i8
    %22 = arith.trunci %21 : i8 to i1
    %23 = select %22, %c1_i32, %c0_i32 : i32
    %24 = arith.index_cast %23 : i32 to index
    %26 = memref.cast %1 : memref<1x2xi64> to memref<?x2xi64>
    %28 = arith.addi %11, %16 : index
    %29 = arith.addi %19, %24 : index
    scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%28, %29) step (%c1, %c1) {
      %50 = arith.index_cast %arg4 : index to i32
      %51 = arith.index_cast %arg5 : index to i32
      %52 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(array<3012 x f32>)>)> : (i64) -> !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>>
      %53 = llvm.addrspacecast %52 : !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>> to !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>, 5>
      scf.parallel (%arg6) = (%c0) to (%c192) step (%c1) {
        %54 = arith.index_cast %arg6 : index to i32
        %55 = arith.index_cast %arg6 : index to i64
        %56 = arith.addi %50, %c1_i32 : i32
        %57 = arith.muli %56, %c192_i32 : i32
        %58 = arith.addi %57, %c3_i32 : i32
        %59 = arith.addi %51, %c1_i32 : i32
        %60 = arith.muli %59, %c8_i32 : i32
        %61 = arith.muli %60, %9 : i32
        %62 = arith.addi %61, %c3_i32 : i32
        %63 = arith.cmpi uge, %58, %arg2 : i32
        %64 = arith.cmpi uge, %62, %arg3 : i32
        scf.if %64 {
          %65 = llvm.addrspacecast %53 : !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>, 5> to !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>>
          %66 = memref.alloca() : memref<7xf32>
          %67 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i32, i32, i32)>, i32)> : (i64) -> !llvm.ptr<struct<(struct<(i32, i32, i32)>, i32)>>
          %68 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i32, i32)>, i32)>, i32)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>
          %69 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i32, i32)>, i32)>, i32)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>
          %70 = arith.muli %51, %c8_i32 : i32
          %71 = arith.muli %70, %9 : i32
          %72 = llvm.getelementptr %69[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %73 = llvm.getelementptr %65[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(array<3012 x f32>)>)>>, i32, i32) -> !llvm.ptr<struct<(array<3012 x f32>)>>
          %74 = arith.addi %54, %c4_i32 : i32
          %75 = arith.divsi %74, %c2_i32 : i32
          %76 = arith.andi %74, %c1_i32 : i32
          %77 = arith.muli %76, %c1512_i32 : i32
          %78 = arith.addi %75, %77 : i32
          llvm.store %78, %72 : !llvm.ptr<i32>
          %79 = arith.muli %50, %c192_i32 : i32
          %80 = arith.addi %79, %54 : i32
          %81 = arith.cmpi eq, %51, %c0_i32 : i32
          scf.if %81 {
            %119 = llvm.getelementptr %69[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<struct<(struct<(i32, i32)>, i32)>>
            %120 = arith.cmpi uge, %80, %arg2 : i32
            %121 = scf.if %120 -> (i32) {
              %227 = arith.muli %arg2, %c2_i32 : i32
              %228 = arith.addi %227, %c-2_i32 : i32
              %229 = arith.subi %228, %80 : i32
              scf.yield %229 : i32
            } else {
              %227 = arith.cmpi ult, %80, %c0_i32 : i32
              %228 = scf.if %227 -> (i32) {
                %229 = arith.subi %c0_i32, %80 : i32
                scf.yield %229 : i32
              } else {
                scf.yield %80 : i32
              }
              scf.yield %228 : i32
            }
            %122 = llvm.getelementptr %119[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
            %123 = llvm.bitcast %119 : !llvm.ptr<struct<(struct<(i32, i32)>, i32)>> to !llvm.ptr<struct<(i32, i32)>>
            %124 = llvm.getelementptr %123[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
            %125 = arith.muli %arg3, %arg2 : i32
            %126 = arith.addi %125, %121 : i32
            llvm.store %126, %124 : !llvm.ptr<i32>
            %127 = llvm.getelementptr %123[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
            llvm.store %arg2, %127 : !llvm.ptr<i32>
            %128 = arith.muli %arg2, %71 : i32
            %129 = arith.addi %121, %128 : i32
            %130 = arith.subi %129, %arg2 : i32
            llvm.store %130, %122 : !llvm.ptr<i32>
            %131 = llvm.load %72 : !llvm.ptr<i32>
            %132 = arith.index_cast %131 : i32 to index
            %133 = arith.index_cast %132 : index to i64
            %134 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<3012 x f32>)>>, i32, i32) -> !llvm.ptr<array<3012 x f32>>
            %135 = llvm.getelementptr %134[%c0_i32, %c0_i32] : (!llvm.ptr<array<3012 x f32>>, i32, i32) -> !llvm.ptr<f32>
            %136 = arith.addi %133, %c400_i64 : i64
            %137 = llvm.getelementptr %135[%136] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %138 = llvm.load %127 : !llvm.ptr<i32>
            %139 = llvm.load %122 : !llvm.ptr<i32>
            %140 = arith.addi %139, %138 : i32
            llvm.store %140, %122 : !llvm.ptr<i32>
            %141 = llvm.load %122 : !llvm.ptr<i32>
            %142 = llvm.load %124 : !llvm.ptr<i32>
            %143 = arith.cmpi eq, %141, %142 : i32
            scf.if %143 {
              %227 = llvm.load %127 : !llvm.ptr<i32>
              %228 = arith.muli %227, %c2_i32 : i32
              %229 = llvm.load %122 : !llvm.ptr<i32>
              %230 = arith.subi %229, %228 : i32
              llvm.store %230, %122 : !llvm.ptr<i32>
              %231 = llvm.load %127 : !llvm.ptr<i32>
              %232 = arith.subi %c0_i32, %231 : i32
              llvm.store %232, %127 : !llvm.ptr<i32>
            }
            %144 = llvm.load %122 : !llvm.ptr<i32>
            %145 = arith.index_cast %144 : i32 to index
            %146 = memref.load %arg0[%145] : memref<?xf32>
            %147 = llvm.getelementptr %137[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            llvm.store %146, %147 : !llvm.ptr<f32>
            %148 = llvm.load %72 : !llvm.ptr<i32>
            %149 = arith.index_cast %148 : i32 to index
            %150 = arith.index_cast %149 : index to i64
            %151 = arith.addi %150, %c300_i64 : i64
            %152 = llvm.getelementptr %135[%151] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %153 = llvm.load %72 : !llvm.ptr<i32>
            %154 = arith.index_cast %153 : i32 to index
            %155 = arith.index_cast %154 : index to i64
            %156 = arith.addi %155, %c500_i64 : i64
            %157 = llvm.getelementptr %135[%156] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %158 = llvm.load %127 : !llvm.ptr<i32>
            %159 = llvm.load %122 : !llvm.ptr<i32>
            %160 = arith.addi %159, %158 : i32
            llvm.store %160, %122 : !llvm.ptr<i32>
            %161 = llvm.load %122 : !llvm.ptr<i32>
            %162 = llvm.load %124 : !llvm.ptr<i32>
            %163 = arith.cmpi eq, %161, %162 : i32
            scf.if %163 {
              %227 = llvm.load %127 : !llvm.ptr<i32>
              %228 = arith.muli %227, %c2_i32 : i32
              %229 = llvm.load %122 : !llvm.ptr<i32>
              %230 = arith.subi %229, %228 : i32
              llvm.store %230, %122 : !llvm.ptr<i32>
              %231 = llvm.load %127 : !llvm.ptr<i32>
              %232 = arith.subi %c0_i32, %231 : i32
              llvm.store %232, %127 : !llvm.ptr<i32>
            }
            %164 = llvm.load %122 : !llvm.ptr<i32>
            %165 = arith.index_cast %164 : i32 to index
            %166 = memref.load %arg0[%165] : memref<?xf32>
            %167 = llvm.getelementptr %157[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            llvm.store %166, %167 : !llvm.ptr<f32>
            %168 = llvm.load %167 : !llvm.ptr<f32>
            %169 = llvm.getelementptr %152[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            llvm.store %168, %169 : !llvm.ptr<f32>
            %170 = llvm.load %72 : !llvm.ptr<i32>
            %171 = arith.index_cast %170 : i32 to index
            %172 = arith.index_cast %171 : index to i64
            %173 = arith.addi %172, %c200_i64 : i64
            %174 = llvm.getelementptr %135[%173] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %175 = llvm.load %72 : !llvm.ptr<i32>
            %176 = arith.index_cast %175 : i32 to index
            %177 = arith.index_cast %176 : index to i64
            %178 = arith.addi %177, %c600_i64 : i64
            %179 = llvm.getelementptr %135[%178] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %180 = llvm.load %127 : !llvm.ptr<i32>
            %181 = llvm.load %122 : !llvm.ptr<i32>
            %182 = arith.addi %181, %180 : i32
            llvm.store %182, %122 : !llvm.ptr<i32>
            %183 = llvm.load %122 : !llvm.ptr<i32>
            %184 = llvm.load %124 : !llvm.ptr<i32>
            %185 = arith.cmpi eq, %183, %184 : i32
            scf.if %185 {
              %227 = llvm.load %127 : !llvm.ptr<i32>
              %228 = arith.muli %227, %c2_i32 : i32
              %229 = llvm.load %122 : !llvm.ptr<i32>
              %230 = arith.subi %229, %228 : i32
              llvm.store %230, %122 : !llvm.ptr<i32>
              %231 = llvm.load %127 : !llvm.ptr<i32>
              %232 = arith.subi %c0_i32, %231 : i32
              llvm.store %232, %127 : !llvm.ptr<i32>
            }
            %186 = llvm.load %122 : !llvm.ptr<i32>
            %187 = arith.index_cast %186 : i32 to index
            %188 = memref.load %arg0[%187] : memref<?xf32>
            %189 = llvm.getelementptr %179[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            llvm.store %188, %189 : !llvm.ptr<f32>
            %190 = llvm.load %189 : !llvm.ptr<f32>
            %191 = llvm.getelementptr %174[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            llvm.store %190, %191 : !llvm.ptr<f32>
            %192 = llvm.load %72 : !llvm.ptr<i32>
            %193 = arith.index_cast %192 : i32 to index
            %194 = arith.index_cast %193 : index to i64
            %195 = arith.addi %194, %c100_i64 : i64
            %196 = llvm.getelementptr %135[%195] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %197 = llvm.load %127 : !llvm.ptr<i32>
            %198 = llvm.load %122 : !llvm.ptr<i32>
            %199 = arith.addi %198, %197 : i32
            llvm.store %199, %122 : !llvm.ptr<i32>
            %200 = llvm.load %122 : !llvm.ptr<i32>
            %201 = llvm.load %124 : !llvm.ptr<i32>
            %202 = arith.cmpi eq, %200, %201 : i32
            scf.if %202 {
              %227 = llvm.load %127 : !llvm.ptr<i32>
              %228 = arith.muli %227, %c2_i32 : i32
              %229 = llvm.load %122 : !llvm.ptr<i32>
              %230 = arith.subi %229, %228 : i32
              llvm.store %230, %122 : !llvm.ptr<i32>
              %231 = llvm.load %127 : !llvm.ptr<i32>
              %232 = arith.subi %c0_i32, %231 : i32
              llvm.store %232, %127 : !llvm.ptr<i32>
            }
            %203 = llvm.load %122 : !llvm.ptr<i32>
            %204 = arith.index_cast %203 : i32 to index
            %205 = memref.load %arg0[%204] : memref<?xf32>
            %206 = llvm.getelementptr %196[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            llvm.store %205, %206 : !llvm.ptr<f32>
            %207 = llvm.load %72 : !llvm.ptr<i32>
            %208 = arith.index_cast %207 : i32 to index
            %209 = arith.index_cast %208 : index to i64
            %210 = llvm.getelementptr %135[%209] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %211 = llvm.load %127 : !llvm.ptr<i32>
            %212 = llvm.load %122 : !llvm.ptr<i32>
            %213 = arith.addi %212, %211 : i32
            llvm.store %213, %122 : !llvm.ptr<i32>
            %214 = llvm.load %122 : !llvm.ptr<i32>
            %215 = llvm.load %124 : !llvm.ptr<i32>
            %216 = arith.cmpi eq, %214, %215 : i32
            scf.if %216 {
              %227 = llvm.load %127 : !llvm.ptr<i32>
              %228 = arith.muli %227, %c2_i32 : i32
              %229 = llvm.load %122 : !llvm.ptr<i32>
              %230 = arith.subi %229, %228 : i32
              llvm.store %230, %122 : !llvm.ptr<i32>
              %231 = llvm.load %127 : !llvm.ptr<i32>
              %232 = arith.subi %c0_i32, %231 : i32
              llvm.store %232, %127 : !llvm.ptr<i32>
            }
            %217 = llvm.load %122 : !llvm.ptr<i32>
            %218 = arith.index_cast %217 : i32 to index
            %219 = memref.load %arg0[%218] : memref<?xf32>
            %220 = llvm.getelementptr %210[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            llvm.store %219, %220 : !llvm.ptr<f32>
            %221 = arith.addi %71, %c3_i32 : i32
            %222 = scf.if %120 -> (i32) {
              %227 = arith.muli %arg2, %c2_i32 : i32
              %228 = arith.addi %227, %c-2_i32 : i32
              %229 = arith.subi %228, %80 : i32
              scf.yield %229 : i32
            } else {
              %227 = arith.cmpi ult, %80, %c0_i32 : i32
              %228 = scf.if %227 -> (i32) {
                %229 = arith.subi %c0_i32, %80 : i32
                scf.yield %229 : i32
              } else {
                scf.yield %80 : i32
              }
              scf.yield %228 : i32
            }
            %223 = arith.addi %125, %222 : i32
            llvm.store %223, %124 : !llvm.ptr<i32>
            llvm.store %arg2, %127 : !llvm.ptr<i32>
            %224 = arith.muli %arg2, %221 : i32
            %225 = arith.addi %222, %224 : i32
            %226 = arith.subi %225, %arg2 : i32
            llvm.store %226, %122 : !llvm.ptr<i32>
          } else {
            %119 = llvm.getelementptr %69[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<struct<(struct<(i32, i32)>, i32)>>
            %120 = arith.addi %71, %c-4_i32 : i32
            %121 = arith.cmpi uge, %80, %arg2 : i32
            %122 = scf.if %121 -> (i32) {
              %132 = arith.muli %arg2, %c2_i32 : i32
              %133 = arith.addi %132, %c-2_i32 : i32
              %134 = arith.subi %133, %80 : i32
              scf.yield %134 : i32
            } else {
              %132 = arith.cmpi ult, %80, %c0_i32 : i32
              %133 = scf.if %132 -> (i32) {
                %134 = arith.subi %c0_i32, %80 : i32
                scf.yield %134 : i32
              } else {
                scf.yield %80 : i32
              }
              scf.yield %133 : i32
            }
            %123 = llvm.getelementptr %119[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
            %124 = llvm.bitcast %119 : !llvm.ptr<struct<(struct<(i32, i32)>, i32)>> to !llvm.ptr<struct<(i32, i32)>>
            %125 = llvm.getelementptr %124[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
            %126 = arith.muli %arg3, %arg2 : i32
            %127 = arith.addi %126, %122 : i32
            llvm.store %127, %125 : !llvm.ptr<i32>
            %128 = llvm.getelementptr %124[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
            llvm.store %arg2, %128 : !llvm.ptr<i32>
            %129 = arith.muli %arg2, %120 : i32
            %130 = arith.addi %122, %129 : i32
            %131 = arith.subi %130, %arg2 : i32
            llvm.store %131, %123 : !llvm.ptr<i32>
            scf.for %arg7 = %c0 to %c7 step %c1 {
              %132 = arith.index_cast %arg7 : index to i64
              %133 = llvm.load %72 : !llvm.ptr<i32>
              %134 = arith.index_cast %133 : i32 to index
              %135 = arith.index_cast %134 : index to i64
              %136 = arith.muli %132, %c100_i64 : i64
              %137 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<3012 x f32>)>>, i32, i32) -> !llvm.ptr<array<3012 x f32>>
              %138 = llvm.getelementptr %137[%c0_i32, %c0_i32] : (!llvm.ptr<array<3012 x f32>>, i32, i32) -> !llvm.ptr<f32>
              %139 = arith.addi %135, %136 : i64
              %140 = llvm.getelementptr %138[%139] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %141 = llvm.load %128 : !llvm.ptr<i32>
              %142 = llvm.load %123 : !llvm.ptr<i32>
              %143 = arith.addi %142, %141 : i32
              llvm.store %143, %123 : !llvm.ptr<i32>
              %144 = llvm.load %123 : !llvm.ptr<i32>
              %145 = llvm.load %125 : !llvm.ptr<i32>
              %146 = arith.cmpi eq, %144, %145 : i32
              scf.if %146 {
                %151 = llvm.load %128 : !llvm.ptr<i32>
                %152 = arith.muli %151, %c2_i32 : i32
                %153 = llvm.load %123 : !llvm.ptr<i32>
                %154 = arith.subi %153, %152 : i32
                llvm.store %154, %123 : !llvm.ptr<i32>
                %155 = llvm.load %128 : !llvm.ptr<i32>
                %156 = arith.subi %c0_i32, %155 : i32
                llvm.store %156, %128 : !llvm.ptr<i32>
              }
              %147 = llvm.load %123 : !llvm.ptr<i32>
              %148 = arith.index_cast %147 : i32 to index
              %149 = memref.load %arg0[%148] : memref<?xf32>
              %150 = llvm.getelementptr %140[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %149, %150 : !llvm.ptr<f32>
            }
          }
          %82 = llvm.getelementptr %68[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %82 : !llvm.ptr<i32>
          %83 = llvm.getelementptr %68[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<struct<(struct<(i32, i32)>, i32)>>
          %84 = llvm.bitcast %83 : !llvm.ptr<struct<(struct<(i32, i32)>, i32)>> to !llvm.ptr<struct<(i32, i32)>>
          %85 = llvm.getelementptr %84[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %85 : !llvm.ptr<i32>
          %86 = llvm.getelementptr %84[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %86 : !llvm.ptr<i32>
          %87 = llvm.getelementptr %83[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %87 : !llvm.ptr<i32>
          %88 = arith.cmpi ult, %54, %c7_i32 : i32
          scf.if %88 {
            %119 = arith.cmpi ult, %54, %c3_i32 : i32
            %120 = select %119, %c192_i32, %c-7_i32 : i32
            %121 = arith.addi %54, %120 : i32
            %122 = arith.addi %121, %c4_i32 : i32
            %123 = arith.divsi %122, %c2_i32 : i32
            %124 = arith.andi %122, %c1_i32 : i32
            %125 = arith.muli %124, %c1512_i32 : i32
            %126 = arith.addi %123, %125 : i32
            llvm.store %126, %82 : !llvm.ptr<i32>
            %127 = arith.addi %79, %121 : i32
            scf.if %81 {
              %128 = arith.cmpi uge, %127, %arg2 : i32
              %129 = scf.if %128 -> (i32) {
                %231 = arith.muli %arg2, %c2_i32 : i32
                %232 = arith.addi %231, %c-2_i32 : i32
                %233 = arith.subi %232, %127 : i32
                scf.yield %233 : i32
              } else {
                %231 = arith.cmpi ult, %127, %c0_i32 : i32
                %232 = scf.if %231 -> (i32) {
                  %233 = arith.subi %c0_i32, %127 : i32
                  scf.yield %233 : i32
                } else {
                  scf.yield %127 : i32
                }
                scf.yield %232 : i32
              }
              %130 = arith.muli %arg3, %arg2 : i32
              %131 = arith.addi %130, %129 : i32
              llvm.store %131, %85 : !llvm.ptr<i32>
              llvm.store %arg2, %86 : !llvm.ptr<i32>
              %132 = arith.muli %arg2, %71 : i32
              %133 = arith.addi %129, %132 : i32
              %134 = arith.subi %133, %arg2 : i32
              llvm.store %134, %87 : !llvm.ptr<i32>
              %135 = llvm.load %82 : !llvm.ptr<i32>
              %136 = arith.index_cast %135 : i32 to index
              %137 = arith.index_cast %136 : index to i64
              %138 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<3012 x f32>)>>, i32, i32) -> !llvm.ptr<array<3012 x f32>>
              %139 = llvm.getelementptr %138[%c0_i32, %c0_i32] : (!llvm.ptr<array<3012 x f32>>, i32, i32) -> !llvm.ptr<f32>
              %140 = arith.addi %137, %c400_i64 : i64
              %141 = llvm.getelementptr %139[%140] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %142 = llvm.load %86 : !llvm.ptr<i32>
              %143 = llvm.load %87 : !llvm.ptr<i32>
              %144 = arith.addi %143, %142 : i32
              llvm.store %144, %87 : !llvm.ptr<i32>
              %145 = llvm.load %87 : !llvm.ptr<i32>
              %146 = llvm.load %85 : !llvm.ptr<i32>
              %147 = arith.cmpi eq, %145, %146 : i32
              scf.if %147 {
                %231 = llvm.load %86 : !llvm.ptr<i32>
                %232 = arith.muli %231, %c2_i32 : i32
                %233 = llvm.load %87 : !llvm.ptr<i32>
                %234 = arith.subi %233, %232 : i32
                llvm.store %234, %87 : !llvm.ptr<i32>
                %235 = llvm.load %86 : !llvm.ptr<i32>
                %236 = arith.subi %c0_i32, %235 : i32
                llvm.store %236, %86 : !llvm.ptr<i32>
              }
              %148 = llvm.load %87 : !llvm.ptr<i32>
              %149 = arith.index_cast %148 : i32 to index
              %150 = memref.load %arg0[%149] : memref<?xf32>
              %151 = llvm.getelementptr %141[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %150, %151 : !llvm.ptr<f32>
              %152 = llvm.load %82 : !llvm.ptr<i32>
              %153 = arith.index_cast %152 : i32 to index
              %154 = arith.index_cast %153 : index to i64
              %155 = arith.addi %154, %c300_i64 : i64
              %156 = llvm.getelementptr %139[%155] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %157 = llvm.load %82 : !llvm.ptr<i32>
              %158 = arith.index_cast %157 : i32 to index
              %159 = arith.index_cast %158 : index to i64
              %160 = arith.addi %159, %c500_i64 : i64
              %161 = llvm.getelementptr %139[%160] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %162 = llvm.load %86 : !llvm.ptr<i32>
              %163 = llvm.load %87 : !llvm.ptr<i32>
              %164 = arith.addi %163, %162 : i32
              llvm.store %164, %87 : !llvm.ptr<i32>
              %165 = llvm.load %87 : !llvm.ptr<i32>
              %166 = llvm.load %85 : !llvm.ptr<i32>
              %167 = arith.cmpi eq, %165, %166 : i32
              scf.if %167 {
                %231 = llvm.load %86 : !llvm.ptr<i32>
                %232 = arith.muli %231, %c2_i32 : i32
                %233 = llvm.load %87 : !llvm.ptr<i32>
                %234 = arith.subi %233, %232 : i32
                llvm.store %234, %87 : !llvm.ptr<i32>
                %235 = llvm.load %86 : !llvm.ptr<i32>
                %236 = arith.subi %c0_i32, %235 : i32
                llvm.store %236, %86 : !llvm.ptr<i32>
              }
              %168 = llvm.load %87 : !llvm.ptr<i32>
              %169 = arith.index_cast %168 : i32 to index
              %170 = memref.load %arg0[%169] : memref<?xf32>
              %171 = llvm.getelementptr %161[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %170, %171 : !llvm.ptr<f32>
              %172 = llvm.load %171 : !llvm.ptr<f32>
              %173 = llvm.getelementptr %156[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %172, %173 : !llvm.ptr<f32>
              %174 = llvm.load %82 : !llvm.ptr<i32>
              %175 = arith.index_cast %174 : i32 to index
              %176 = arith.index_cast %175 : index to i64
              %177 = arith.addi %176, %c200_i64 : i64
              %178 = llvm.getelementptr %139[%177] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %179 = llvm.load %82 : !llvm.ptr<i32>
              %180 = arith.index_cast %179 : i32 to index
              %181 = arith.index_cast %180 : index to i64
              %182 = arith.addi %181, %c600_i64 : i64
              %183 = llvm.getelementptr %139[%182] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %184 = llvm.load %86 : !llvm.ptr<i32>
              %185 = llvm.load %87 : !llvm.ptr<i32>
              %186 = arith.addi %185, %184 : i32
              llvm.store %186, %87 : !llvm.ptr<i32>
              %187 = llvm.load %87 : !llvm.ptr<i32>
              %188 = llvm.load %85 : !llvm.ptr<i32>
              %189 = arith.cmpi eq, %187, %188 : i32
              scf.if %189 {
                %231 = llvm.load %86 : !llvm.ptr<i32>
                %232 = arith.muli %231, %c2_i32 : i32
                %233 = llvm.load %87 : !llvm.ptr<i32>
                %234 = arith.subi %233, %232 : i32
                llvm.store %234, %87 : !llvm.ptr<i32>
                %235 = llvm.load %86 : !llvm.ptr<i32>
                %236 = arith.subi %c0_i32, %235 : i32
                llvm.store %236, %86 : !llvm.ptr<i32>
              }
              %190 = llvm.load %87 : !llvm.ptr<i32>
              %191 = arith.index_cast %190 : i32 to index
              %192 = memref.load %arg0[%191] : memref<?xf32>
              %193 = llvm.getelementptr %183[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %192, %193 : !llvm.ptr<f32>
              %194 = llvm.load %193 : !llvm.ptr<f32>
              %195 = llvm.getelementptr %178[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %194, %195 : !llvm.ptr<f32>
              %196 = llvm.load %82 : !llvm.ptr<i32>
              %197 = arith.index_cast %196 : i32 to index
              %198 = arith.index_cast %197 : index to i64
              %199 = arith.addi %198, %c100_i64 : i64
              %200 = llvm.getelementptr %139[%199] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %201 = llvm.load %86 : !llvm.ptr<i32>
              %202 = llvm.load %87 : !llvm.ptr<i32>
              %203 = arith.addi %202, %201 : i32
              llvm.store %203, %87 : !llvm.ptr<i32>
              %204 = llvm.load %87 : !llvm.ptr<i32>
              %205 = llvm.load %85 : !llvm.ptr<i32>
              %206 = arith.cmpi eq, %204, %205 : i32
              scf.if %206 {
                %231 = llvm.load %86 : !llvm.ptr<i32>
                %232 = arith.muli %231, %c2_i32 : i32
                %233 = llvm.load %87 : !llvm.ptr<i32>
                %234 = arith.subi %233, %232 : i32
                llvm.store %234, %87 : !llvm.ptr<i32>
                %235 = llvm.load %86 : !llvm.ptr<i32>
                %236 = arith.subi %c0_i32, %235 : i32
                llvm.store %236, %86 : !llvm.ptr<i32>
              }
              %207 = llvm.load %87 : !llvm.ptr<i32>
              %208 = arith.index_cast %207 : i32 to index
              %209 = memref.load %arg0[%208] : memref<?xf32>
              %210 = llvm.getelementptr %200[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %209, %210 : !llvm.ptr<f32>
              %211 = llvm.load %82 : !llvm.ptr<i32>
              %212 = arith.index_cast %211 : i32 to index
              %213 = arith.index_cast %212 : index to i64
              %214 = llvm.getelementptr %139[%213] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
              %215 = llvm.load %86 : !llvm.ptr<i32>
              %216 = llvm.load %87 : !llvm.ptr<i32>
              %217 = arith.addi %216, %215 : i32
              llvm.store %217, %87 : !llvm.ptr<i32>
              %218 = llvm.load %87 : !llvm.ptr<i32>
              %219 = llvm.load %85 : !llvm.ptr<i32>
              %220 = arith.cmpi eq, %218, %219 : i32
              scf.if %220 {
                %231 = llvm.load %86 : !llvm.ptr<i32>
                %232 = arith.muli %231, %c2_i32 : i32
                %233 = llvm.load %87 : !llvm.ptr<i32>
                %234 = arith.subi %233, %232 : i32
                llvm.store %234, %87 : !llvm.ptr<i32>
                %235 = llvm.load %86 : !llvm.ptr<i32>
                %236 = arith.subi %c0_i32, %235 : i32
                llvm.store %236, %86 : !llvm.ptr<i32>
              }
              %221 = llvm.load %87 : !llvm.ptr<i32>
              %222 = arith.index_cast %221 : i32 to index
              %223 = memref.load %arg0[%222] : memref<?xf32>
              %224 = llvm.getelementptr %214[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
              llvm.store %223, %224 : !llvm.ptr<f32>
              %225 = arith.addi %71, %c3_i32 : i32
              %226 = scf.if %128 -> (i32) {
                %231 = arith.muli %arg2, %c2_i32 : i32
                %232 = arith.addi %231, %c-2_i32 : i32
                %233 = arith.subi %232, %127 : i32
                scf.yield %233 : i32
              } else {
                %231 = arith.cmpi ult, %127, %c0_i32 : i32
                %232 = scf.if %231 -> (i32) {
                  %233 = arith.subi %c0_i32, %127 : i32
                  scf.yield %233 : i32
                } else {
                  scf.yield %127 : i32
                }
                scf.yield %232 : i32
              }
              %227 = arith.addi %130, %226 : i32
              llvm.store %227, %85 : !llvm.ptr<i32>
              llvm.store %arg2, %86 : !llvm.ptr<i32>
              %228 = arith.muli %arg2, %225 : i32
              %229 = arith.addi %226, %228 : i32
              %230 = arith.subi %229, %arg2 : i32
              llvm.store %230, %87 : !llvm.ptr<i32>
            } else {
              %128 = arith.addi %71, %c-4_i32 : i32
              %129 = arith.cmpi uge, %127, %arg2 : i32
              %130 = scf.if %129 -> (i32) {
                %136 = arith.muli %arg2, %c2_i32 : i32
                %137 = arith.addi %136, %c-2_i32 : i32
                %138 = arith.subi %137, %127 : i32
                scf.yield %138 : i32
              } else {
                %136 = arith.cmpi ult, %127, %c0_i32 : i32
                %137 = scf.if %136 -> (i32) {
                  %138 = arith.subi %c0_i32, %127 : i32
                  scf.yield %138 : i32
                } else {
                  scf.yield %127 : i32
                }
                scf.yield %137 : i32
              }
              %131 = arith.muli %arg3, %arg2 : i32
              %132 = arith.addi %131, %130 : i32
              llvm.store %132, %85 : !llvm.ptr<i32>
              llvm.store %arg2, %86 : !llvm.ptr<i32>
              %133 = arith.muli %arg2, %128 : i32
              %134 = arith.addi %130, %133 : i32
              %135 = arith.subi %134, %arg2 : i32
              llvm.store %135, %87 : !llvm.ptr<i32>
              scf.for %arg7 = %c0 to %c7 step %c1 {
                %136 = arith.index_cast %arg7 : index to i64
                %137 = llvm.load %82 : !llvm.ptr<i32>
                %138 = arith.index_cast %137 : i32 to index
                %139 = arith.index_cast %138 : index to i64
                %140 = arith.muli %136, %c100_i64 : i64
                %141 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<3012 x f32>)>>, i32, i32) -> !llvm.ptr<array<3012 x f32>>
                %142 = llvm.getelementptr %141[%c0_i32, %c0_i32] : (!llvm.ptr<array<3012 x f32>>, i32, i32) -> !llvm.ptr<f32>
                %143 = arith.addi %139, %140 : i64
                %144 = llvm.getelementptr %142[%143] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
                %145 = llvm.load %86 : !llvm.ptr<i32>
                %146 = llvm.load %87 : !llvm.ptr<i32>
                %147 = arith.addi %146, %145 : i32
                llvm.store %147, %87 : !llvm.ptr<i32>
                %148 = llvm.load %87 : !llvm.ptr<i32>
                %149 = llvm.load %85 : !llvm.ptr<i32>
                %150 = arith.cmpi eq, %148, %149 : i32
                scf.if %150 {
                  %155 = llvm.load %86 : !llvm.ptr<i32>
                  %156 = arith.muli %155, %c2_i32 : i32
                  %157 = llvm.load %87 : !llvm.ptr<i32>
                  %158 = arith.subi %157, %156 : i32
                  llvm.store %158, %87 : !llvm.ptr<i32>
                  %159 = llvm.load %86 : !llvm.ptr<i32>
                  %160 = arith.subi %c0_i32, %159 : i32
                  llvm.store %160, %86 : !llvm.ptr<i32>
                }
                %151 = llvm.load %87 : !llvm.ptr<i32>
                %152 = arith.index_cast %151 : i32 to index
                %153 = memref.load %arg0[%152] : memref<?xf32>
                %154 = llvm.getelementptr %144[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
                llvm.store %153, %154 : !llvm.ptr<f32>
              }
            }
          }
          "polygeist.barrier"() : () -> ()
          %89 = memref.get_global @_ZN8dwt_cudaL11f97Predict1E : memref<1xf32>
          %90 = affine.load %89[0] : memref<1xf32>
          scf.for %arg7 = %c0 to %c3 step %c1 {
            %119 = arith.index_cast %arg7 : index to i64
            %120 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<3012 x f32>)>>, i32, i32) -> !llvm.ptr<array<3012 x f32>>
            %121 = llvm.getelementptr %120[%c0_i32, %c0_i32] : (!llvm.ptr<array<3012 x f32>>, i32, i32) -> !llvm.ptr<f32>
            %122 = arith.muli %119, %c192_i64 : i64
            %123 = arith.addi %122, %55 : i64
            %124 = llvm.getelementptr %121[%123] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %125 = llvm.load %124 : !llvm.ptr<f32>
            %126 = arith.addi %122, %c1_i64 : i64
            %127 = arith.addi %126, %55 : i64
            %128 = llvm.getelementptr %121[%127] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %129 = llvm.load %128 : !llvm.ptr<f32>
            %130 = arith.addi %122, %c1512_i64 : i64
            %131 = arith.addi %130, %55 : i64
            %132 = llvm.getelementptr %121[%131] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %133 = arith.addf %125, %129 : f32
            %134 = arith.mulf %90, %133 : f32
            %135 = llvm.getelementptr %132[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
            %136 = llvm.load %135 : !llvm.ptr<f32>
            %137 = arith.addf %136, %134 : f32
            llvm.store %137, %135 : !llvm.ptr<f32>
          }
        }
        scf.yield
      }
      scf.yield
    }
    return
  }
  func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
}
