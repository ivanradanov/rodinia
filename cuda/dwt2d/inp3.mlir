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
    %c0_i64 = arith.constant 0 : i64
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %c1512_i32 = arith.constant 1512 : i32
    %c4_i32 = arith.constant 4 : i32
    %c-4_i32 = arith.constant -4 : i32
    %c1_i64 = arith.constant 1 : i64
    %c-7_i32 = arith.constant -7 : i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c120_i32 = arith.constant 120 : i32
    %c192_i32 = arith.constant 192 : i32
    %c8_i32 = arith.constant 8 : i32
    %c192 = arith.constant 192 : index
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
      %24 = llvm.alloca %c1_i64 x f32 : (i64) -> !llvm.ptr<f32>
      %25 = llvm.addrspacecast %24 : !llvm.ptr<f32> to !llvm.ptr<f32, 5>
      scf.parallel (%arg6) = (%c0) to (%c192) step (%c1) {
        %27 = llvm.addrspacecast %25 : !llvm.ptr<f32, 5> to !llvm.ptr<f32>
        "polygeist.barrier"() : () -> ()
        %78 = llvm.load %27 : !llvm.ptr<f32>
        llvm.store %78, %27 : !llvm.ptr<f32>
        scf.yield
      }
      scf.yield
    }
    return
  }
  func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
}

