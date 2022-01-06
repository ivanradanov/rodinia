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
    %c1512_i64 = arith.constant 1512 : i64
    %c192_i64 = arith.constant 192 : i64
    %c100_i64 = arith.constant 100 : i64
    %c600_i64 = arith.constant 600 : i64
    %c200_i64 = arith.constant 200 : i64
    %c500_i64 = arith.constant 500 : i64
    %c300_i64 = arith.constant 300 : i64
    %c400_i64 = arith.constant 400 : i64
    %c192 = arith.constant 192 : index
    %c8_i32 = arith.constant 8 : i32
    %c192_i32 = arith.constant 192 : i32
    %c120_i32 = arith.constant 120 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c-7_i32 = arith.constant -7 : i32
    %c1_i64 = arith.constant 1 : i64
    %c-4_i32 = arith.constant -4 : i32
    %c4_i32 = arith.constant 4 : i32
    %c-2_i32 = arith.constant -2 : i32
    %c3 = arith.constant 3 : index
    %c7_i32 = arith.constant 7 : i32
    %c1512_i32 = arith.constant 1512 : i32
    %c7 = arith.constant 7 : index
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = arith.divsi %arg3, %c120_i32 : i32
    %1 = arith.remsi %arg3, %c120_i32 : i32
    %2 = arith.trunci %1 : i32 to i8
    %3 = arith.trunci %2 : i8 to i1
    %4 = select %3, %c1_i32, %c0_i32 : i32
    %5 = arith.addi %0, %4 : i32
    %6 = arith.divsi %arg2, %c192_i32 : i32
    %7 = arith.index_cast %6 : i32 to index
    %8 = arith.remsi %arg2, %c192_i32 : i32
    %9 = arith.trunci %8 : i32 to i8
    %10 = arith.trunci %9 : i8 to i1
    %11 = select %10, %c1_i32, %c0_i32 : i32
    %12 = arith.index_cast %11 : i32 to index
    %13 = arith.muli %5, %c8_i32 : i32
    %14 = arith.divsi %arg3, %13 : i32
    %15 = arith.index_cast %14 : i32 to index
    %16 = arith.remsi %arg3, %13 : i32
    %17 = arith.trunci %16 : i32 to i8
    %18 = arith.trunci %17 : i8 to i1
    %19 = select %18, %c1_i32, %c0_i32 : i32
    %20 = arith.index_cast %19 : i32 to index
    %21 = arith.addi %7, %12 : index
    %22 = arith.addi %15, %20 : index
    scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%21, %22) step (%c1, %c1) {
      %23 = arith.index_cast %arg4 : index to i32
      %24 = arith.index_cast %arg5 : index to i32
      %25 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(array<3012 x f32>)>)> : (i64) -> !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>>
      %26 = llvm.addrspacecast %25 : !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>> to !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>, 5>
      scf.parallel (%arg6) = (%c0) to (%c192) step (%c1) {
        %27 = arith.index_cast %arg6 : index to i32
        %28 = arith.index_cast %arg6 : index to i64
        %29 = arith.addi %24, %c1_i32 : i32
        %30 = arith.muli %29, %c8_i32 : i32
        %31 = arith.muli %30, %5 : i32
        %32 = arith.addi %31, %c3_i32 : i32
        %33 = arith.cmpi uge, %32, %arg3 : i32
          %34 = llvm.addrspacecast %26 : !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>, 5> to !llvm.ptr<struct<(struct<(array<3012 x f32>)>)>>
          %35 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i32, i32, i32)>, i32)> : (i64) -> !llvm.ptr<struct<(struct<(i32, i32, i32)>, i32)>>
          %36 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i32, i32)>, i32)>, i32)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>
          %37 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i32, i32)>, i32)>, i32)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>
          %38 = arith.muli %24, %c8_i32 : i32
          %39 = arith.muli %38, %5 : i32
          %40 = llvm.getelementptr %37[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %41 = llvm.getelementptr %34[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(array<3012 x f32>)>)>>, i32, i32) -> !llvm.ptr<struct<(array<3012 x f32>)>>
          %42 = arith.addi %27, %c4_i32 : i32
          %43 = arith.divsi %42, %c2_i32 : i32
          %44 = arith.andi %42, %c1_i32 : i32
          %45 = arith.muli %44, %c1512_i32 : i32
          %46 = arith.addi %43, %45 : i32
          llvm.store %46, %40 : !llvm.ptr<i32>
          %47 = arith.muli %23, %c192_i32 : i32
          %48 = arith.addi %47, %27 : i32
          %49 = arith.cmpi eq, %24, %c0_i32 : i32
          %50 = llvm.getelementptr %36[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %50 : !llvm.ptr<i32>
          %51 = llvm.getelementptr %36[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32)>>, i32, i32) -> !llvm.ptr<struct<(struct<(i32, i32)>, i32)>>
          %52 = llvm.bitcast %51 : !llvm.ptr<struct<(struct<(i32, i32)>, i32)>> to !llvm.ptr<struct<(i32, i32)>>
          %53 = llvm.getelementptr %52[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %53 : !llvm.ptr<i32>
          %54 = llvm.getelementptr %52[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %54 : !llvm.ptr<i32>
          %55 = llvm.getelementptr %51[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, i32)>>, i32, i32) -> !llvm.ptr<i32>
          llvm.store %c0_i32, %55 : !llvm.ptr<i32>
          %56 = arith.cmpi ult, %27, %c7_i32 : i32
            %59 = arith.cmpi ult, %27, %c3_i32 : i32
            %60 = select %59, %c192_i32, %c-7_i32 : i32
            %61 = arith.addi %27, %60 : i32
            %62 = arith.addi %61, %c4_i32 : i32
            %63 = arith.divsi %62, %c2_i32 : i32
            %64 = arith.andi %62, %c1_i32 : i32
            %65 = arith.muli %64, %c1512_i32 : i32
            %66 = arith.addi %63, %65 : i32
            llvm.store %66, %50 : !llvm.ptr<i32>
            %67 = arith.addi %47, %61 : i32
              %68 = arith.addi %39, %c-4_i32 : i32
              %69 = arith.cmpi uge, %67, %arg2 : i32
              %71 = arith.muli %arg3, %arg2 : i32
              %72 = arith.addi %71, %71 : i32
              llvm.store %72, %53 : !llvm.ptr<i32>
              llvm.store %arg2, %54 : !llvm.ptr<i32>
              %73 = arith.muli %arg2, %68 : i32
              %74 = arith.addi %71, %73 : i32
              %75 = arith.subi %74, %arg2 : i32
              llvm.store %75, %55 : !llvm.ptr<i32>
                %76 = arith.index_cast %c0 : index to i64
                %77 = llvm.load %50 : !llvm.ptr<i32>
                %78 = arith.index_cast %77 : i32 to index
                %79 = arith.index_cast %78 : index to i64
                %80 = arith.muli %76, %c100_i64 : i64
                %81 = llvm.getelementptr %41[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<3012 x f32>)>>, i32, i32) -> !llvm.ptr<array<3012 x f32>>
                %82 = llvm.getelementptr %81[%c0_i32, %c0_i32] : (!llvm.ptr<array<3012 x f32>>, i32, i32) -> !llvm.ptr<f32>
                %83 = arith.addi %79, %80 : i64
                %84 = llvm.getelementptr %82[%83] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
                %85 = llvm.load %54 : !llvm.ptr<i32>
                %86 = llvm.load %55 : !llvm.ptr<i32>
                %87 = arith.addi %86, %85 : i32
                llvm.store %87, %55 : !llvm.ptr<i32>
                %88 = llvm.load %55 : !llvm.ptr<i32>
                %89 = llvm.load %53 : !llvm.ptr<i32>
                %91 = llvm.load %55 : !llvm.ptr<i32>
                %92 = arith.index_cast %91 : i32 to index
                %93 = memref.load %arg0[%92] : memref<?xf32>
                %94 = llvm.getelementptr %84[%c0_i32] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
                llvm.store %93, %94 : !llvm.ptr<f32>
          "polygeist.barrier"() : () -> ()
            %i59 = arith.index_cast %c0 : index to i64
            %i60 = llvm.getelementptr %41[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<3012 x f32>)>>, i32, i32) -> !llvm.ptr<array<3012 x f32>>
            %i61 = llvm.getelementptr %i60[%c0_i32, %c0_i32] : (!llvm.ptr<array<3012 x f32>>, i32, i32) -> !llvm.ptr<f32>
            %i64 = llvm.getelementptr %i61[%i59] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
            %i69 = llvm.load %i64 : !llvm.ptr<f32>
            llvm.store %i69, %i64 : !llvm.ptr<f32>
      }
    }
    return
  }
  func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
}

