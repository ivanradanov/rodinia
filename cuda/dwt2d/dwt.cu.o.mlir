module attributes {llvm.data_layout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64", llvm.target_triple = "nvptx64-nvidia-cuda"}  {
  memref.global @"_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIiEiPT_iiiPKcS3_E4done_0" : memref<1xi32> = uninitialized
  memref.global "private" @_ZZ16writeNStage2DDWTIiEiPT_iiiPKcS3_E4size : memref<1xi64> = uninitialized
  memref.global "private" @"_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIiEiPT_iiiPKcS3_E4done@init" : memref<1xi1> = dense<true>
  memref.global @"_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIiEiPT_iiiPKcS3_E4done" : memref<1xi32> = uninitialized
  llvm.mlir.global internal constant @str40("308\00")
  memref.global "private" @_ZZ16writeNStage2DDWTIfEiPT_iiiPKcS3_E4size_0 : memref<1xi64> = uninitialized
  memref.global "private" @"_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIfEiPT_iiiPKcS3_E4done_0@init" : memref<1xi1> = dense<true>
  memref.global @"_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIfEiPT_iiiPKcS3_E4done_0" : memref<1xi32> = uninitialized
  llvm.mlir.global internal constant @str39("src\00")
  llvm.mlir.global internal constant @str38("306\00")
  memref.global @"_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIfEiPT_iiiPKcS3_E4done" : memref<1xi32> = uninitialized
  memref.global @"_Z11writeLinearIiEiPT_iiPKcS3_@static@_ZZ11writeLinearIiEiPT_iiPKcS3_E4done_0" : memref<1xi32> = uninitialized
  memref.global "private" @_ZZ11writeLinearIiEiPT_iiPKcS3_E4size : memref<1xi64> = uninitialized
  memref.global "private" @"_Z11writeLinearIiEiPT_iiPKcS3_@static@_ZZ11writeLinearIiEiPT_iiPKcS3_E4done@init" : memref<1xi1> = dense<true>
  memref.global @"_Z11writeLinearIiEiPT_iiPKcS3_@static@_ZZ11writeLinearIiEiPT_iiPKcS3_E4done" : memref<1xi32> = uninitialized
  llvm.mlir.global internal constant @str37("Cuda free host memory\00")
  llvm.func @close(i32) -> i32
  llvm.mlir.global internal constant @str36("\0AWriting to %s (%d x %d)\0A\00")
  llvm.func @error(i32, i32, !llvm.ptr<i8>, ...)
  llvm.mlir.global internal constant @str35("cannot access %s\00")
  llvm.func @open(!llvm.ptr<i8>, i32, ...) -> i32
  llvm.func @strcpy(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str34("Memcopy device to host\00")
  llvm.mlir.global internal constant @str33("Unsupported verification type\0A\00")
  llvm.mlir.global internal constant @str32("%.9g != %.9g expected\0A\00")
  llvm.mlir.global internal constant @str31("float\00")
  llvm.mlir.global internal constant @str30("205\00")
  memref.global "private" @_ZZ11writeLinearIfEiPT_iiPKcS3_E4size_0 : memref<1xi64> = uninitialized
  memref.global "private" @"_Z11writeLinearIfEiPT_iiPKcS3_@static@_ZZ11writeLinearIfEiPT_iiPKcS3_E4done_0@init" : memref<1xi1> = dense<true>
  memref.global @"_Z11writeLinearIfEiPT_iiPKcS3_@static@_ZZ11writeLinearIfEiPT_iiPKcS3_E4done_0" : memref<1xi32> = uninitialized
  llvm.func @free(!llvm.ptr<i8>)
  llvm.mlir.global internal constant @str29("Verification of %s ended\0Aresult: %s\0Alargest absolute error: %.17g\0Alargest relative error: %.17g\0Alargest relative error (between non-zero): %.17g\0A\00")
  llvm.mlir.global internal constant @str28("FAIL\00")
  llvm.mlir.global internal constant @str27("PASS\00")
  llvm.mlir.global internal constant @str26("Halting\0A\00")
  llvm.mlir.global internal constant @str25("result: FAIL\0A\00")
  llvm.mlir.global internal constant @str24("relative error: %.17g, between non-zero: %.17g, absolute_error: %.17g\0A\00")
  llvm.mlir.global internal constant @str23("%d != %d expected\0A\00")
  llvm.mlir.global internal constant @str22("Verification of %s failed at %s:%s, el %d\0A\00")
  llvm.func @fread(!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
  llvm.mlir.global internal constant @str21("rb\00")
  llvm.mlir.global internal constant @str20("Starting verification of %s of type %s from file %s\0A\00")
  llvm.func @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
  llvm.func @fwrite(!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
  llvm.func @__errno_location() -> !llvm.ptr<i32>
  llvm.mlir.global internal constant @str19("Could not open file %s, errno %d, %s\0A\00")
  llvm.func @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str18("wb\00")
  llvm.mlir.global internal constant @str17("int\00")
  llvm.mlir.global internal constant @str16("gpu_output\00")
  llvm.mlir.global internal constant @str15("Dumping verification info of %s of type %s to file %s\0A\00")
  llvm.func @mkdir(!llvm.ptr<i8>, i32) -> i32
  llvm.mlir.global internal constant @str14("MY_VERIFICATION_DUMP\00")
  llvm.mlir.global internal constant @str13("%s/%s\00")
  llvm.mlir.global internal constant @str12("%s/%s/%s\00")
  llvm.func @sprintf(!llvm.ptr<i8>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str11("%s:%s\00")
  llvm.mlir.global internal constant @str10("203\00")
  llvm.func @strlen(!llvm.ptr<i8>) -> i64
  llvm.mlir.global internal constant @str9("MY_APP_NAME not defined, using empty string\0A\00")
  llvm.mlir.global internal constant @str8("MY_APP_NAME\00")
  llvm.func @strrchr(!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str7("MY_VERIFICATION_HALT_WHEN_INCORRECT\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  llvm.mlir.global internal constant @str6("\00")
  llvm.func @getenv(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str5("MY_VERIFICATION_DIR\00")
  memref.global @"_Z11writeLinearIfEiPT_iiPKcS3_@static@_ZZ11writeLinearIfEiPT_iiPKcS3_E4done" : memref<1xi32> = uninitialized
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str4("Malloc host\00")
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str3("Memcopy device to device\00")
  llvm.mlir.global internal constant @str2("dwt.cu\00")
  llvm.mlir.global internal constant @str1("%s: %i: %s: %s.\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @cudaMemcpy(!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i32) -> i32
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("\0A*** %d stages of 2D forward DWT:\0A\00")
  func @_Z11nStage2dDWTIfEiPT_S1_S1_iiib(%arg0: memref<?xf32>, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i8) -> i32 attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %false = arith.constant false
    %c0_i32 = arith.constant 0 : i32
    %c4_i64 = arith.constant 4 : i64
    %c84_i32 = arith.constant 84 : i32
    %c-1_i32 = arith.constant -1 : i32
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr<array<35 x i8>>
    %1 = llvm.getelementptr %0[%c0_i32, %c0_i32] : (!llvm.ptr<array<35 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1, %arg5) : (!llvm.ptr<i8>, i32) -> i32
    %3 = arith.muli %arg4, %arg3 : i32
    %4 = arith.extui %3 : i32 to i64
    %5 = arith.muli %4, %c4_i64 : i64
    %6 = arith.trunci %5 : i64 to i32
    %7 = "polygeist.memref2pointer"(%arg2) : (memref<?xf32>) -> !llvm.ptr<i8>
    %8 = "polygeist.memref2pointer"(%arg0) : (memref<?xf32>) -> !llvm.ptr<i8>
    %9 = arith.extsi %6 : i32 to i64
    "llvm.intr.memcpy"(%7, %8, %9, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %10 = call @cudaGetLastError() : () -> i32
    %11 = arith.cmpi ne, %c0_i32, %10 : i32
    scf.if %11 {
      %13 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %15 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %16 = llvm.getelementptr %15[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %17 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %18 = llvm.getelementptr %17[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %19 = llvm.mlir.addressof @str3 : !llvm.ptr<array<25 x i8>>
      %20 = llvm.getelementptr %19[%c0_i32, %c0_i32] : (!llvm.ptr<array<25 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %21 = call @cudaGetErrorString(%10) : (i32) -> !llvm.ptr<i8>
      %22 = llvm.call @fprintf(%14, %16, %18, %c84_i32, %20, %21) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %12 = arith.trunci %arg6 : i8 to i1
    scf.if %12 {
      call @_ZN8dwt_cuda6fdwt97EPfS0_iii(%arg0, %arg1, %arg3, %arg4, %arg5) : (memref<?xf32>, memref<?xf32>, i32, i32, i32) -> ()
    } else {
      call @_ZN8dwt_cuda6rdwt97EPfS0_iii(%arg0, %arg1, %arg3, %arg4, %arg5) : (memref<?xf32>, memref<?xf32>, i32, i32, i32) -> ()
    }
    return %c0_i32 : i32
  }
  func private @cudaGetLastError() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func private @cudaGetErrorString(i32) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func @_Z4fdwtPfS_iii(%arg0: memref<?xf32>, %arg1: memref<?xf32>, %arg2: i32, %arg3: i32, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    call @_ZN8dwt_cuda6fdwt97EPfS0_iii(%arg0, %arg1, %arg2, %arg3, %arg4) : (memref<?xf32>, memref<?xf32>, i32, i32, i32) -> ()
    return
  }
  func @_Z4rdwtPfS_iii(%arg0: memref<?xf32>, %arg1: memref<?xf32>, %arg2: i32, %arg3: i32, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    call @_ZN8dwt_cuda6rdwt97EPfS0_iii(%arg0, %arg1, %arg2, %arg3, %arg4) : (memref<?xf32>, memref<?xf32>, i32, i32, i32) -> ()
    return
  }
  func private @_ZN8dwt_cuda6fdwt97EPfS0_iii(memref<?xf32>, memref<?xf32>, i32, i32, i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func private @_ZN8dwt_cuda6rdwt97EPfS0_iii(memref<?xf32>, memref<?xf32>, i32, i32, i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func @_Z11nStage2dDWTIiEiPT_S1_S1_iiib(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i8) -> i32 attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %false = arith.constant false
    %c0_i32 = arith.constant 0 : i32
    %c4_i64 = arith.constant 4 : i64
    %c84_i32 = arith.constant 84 : i32
    %c-1_i32 = arith.constant -1 : i32
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr<array<35 x i8>>
    %1 = llvm.getelementptr %0[%c0_i32, %c0_i32] : (!llvm.ptr<array<35 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1, %arg5) : (!llvm.ptr<i8>, i32) -> i32
    %3 = arith.muli %arg4, %arg3 : i32
    %4 = arith.extui %3 : i32 to i64
    %5 = arith.muli %4, %c4_i64 : i64
    %6 = arith.trunci %5 : i64 to i32
    %7 = "polygeist.memref2pointer"(%arg2) : (memref<?xi32>) -> !llvm.ptr<i8>
    %8 = "polygeist.memref2pointer"(%arg0) : (memref<?xi32>) -> !llvm.ptr<i8>
    %9 = arith.extsi %6 : i32 to i64
    "llvm.intr.memcpy"(%7, %8, %9, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %10 = call @cudaGetLastError() : () -> i32
    %11 = arith.cmpi ne, %c0_i32, %10 : i32
    scf.if %11 {
      %13 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %15 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %16 = llvm.getelementptr %15[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %17 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %18 = llvm.getelementptr %17[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %19 = llvm.mlir.addressof @str3 : !llvm.ptr<array<25 x i8>>
      %20 = llvm.getelementptr %19[%c0_i32, %c0_i32] : (!llvm.ptr<array<25 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %21 = call @cudaGetErrorString(%10) : (i32) -> !llvm.ptr<i8>
      %22 = llvm.call @fprintf(%14, %16, %18, %c84_i32, %20, %21) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %12 = arith.trunci %arg6 : i8 to i1
    scf.if %12 {
      call @_ZN8dwt_cuda6fdwt53EPiS0_iii(%arg0, %arg1, %arg3, %arg4, %arg5) : (memref<?xi32>, memref<?xi32>, i32, i32, i32) -> ()
    } else {
      call @_ZN8dwt_cuda6rdwt53EPiS0_iii(%arg0, %arg1, %arg3, %arg4, %arg5) : (memref<?xi32>, memref<?xi32>, i32, i32, i32) -> ()
    }
    return %c0_i32 : i32
  }
  func @_Z4fdwtPiS_iii(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: i32, %arg3: i32, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    call @_ZN8dwt_cuda6fdwt53EPiS0_iii(%arg0, %arg1, %arg2, %arg3, %arg4) : (memref<?xi32>, memref<?xi32>, i32, i32, i32) -> ()
    return
  }
  func @_Z4rdwtPiS_iii(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: i32, %arg3: i32, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    call @_ZN8dwt_cuda6rdwt53EPiS0_iii(%arg0, %arg1, %arg2, %arg3, %arg4) : (memref<?xi32>, memref<?xi32>, i32, i32, i32) -> ()
    return
  }
  func private @_ZN8dwt_cuda6fdwt53EPiS0_iii(memref<?xi32>, memref<?xi32>, i32, i32, i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func private @_ZN8dwt_cuda6rdwt53EPiS0_iii(memref<?xi32>, memref<?xi32>, i32, i32, i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func @_Z13samplesToCharPhPfi(%arg0: !llvm.ptr<i8>, %arg1: memref<?xf32>, %arg2: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 2.550000e+02 : f32
    %cst_1 = arith.constant 5.000000e-01 : f32
    %0 = arith.index_cast %arg2 : i32 to index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %1 = memref.load %arg1[%arg3] : memref<?xf32>
      %2 = arith.addf %1, %cst_1 : f32
      %3 = arith.mulf %2, %cst_0 : f32
      %4 = arith.cmpf ugt, %3, %cst_0 : f32
      %5 = select %4, %cst_0, %3 : f32
      %6 = arith.cmpf ult, %5, %cst : f32
      %7 = select %6, %cst, %5 : f32
      %8 = arith.index_cast %arg3 : index to i64
      %9 = llvm.getelementptr %arg0[%8] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %10 = arith.fptoui %7 : f32 to i8
      llvm.store %10, %9 : !llvm.ptr<i8>
    }
    return
  }
  func @_Z13samplesToCharPhPii(%arg0: !llvm.ptr<i8>, %arg1: memref<?xi32>, %arg2: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c255_i32 = arith.constant 255 : i32
    %c128_i32 = arith.constant 128 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg2 : i32 to index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %1 = memref.load %arg1[%arg3] : memref<?xi32>
      %2 = arith.addi %1, %c128_i32 : i32
      %3 = arith.cmpi ugt, %2, %c255_i32 : i32
      %4 = select %3, %c255_i32, %2 : i32
      %5 = arith.cmpi ult, %4, %c0_i32 : i32
      %6 = select %5, %c0_i32, %4 : i32
      %7 = arith.index_cast %arg3 : index to i64
      %8 = llvm.getelementptr %arg0[%7] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %9 = arith.trunci %6 : i32 to i8
      llvm.store %9, %8 : !llvm.ptr<i8>
    }
    return
  }
  func @_Z11writeLinearIfEiPT_iiPKcS3_(%arg0: memref<?xf32>, %arg1: i32, %arg2: i32, %arg3: !llvm.ptr<i8>, %arg4: !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %true = arith.constant true
    %false = arith.constant false
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %c4_i64 = arith.constant 4 : i64
    %c0_i32 = arith.constant 0 : i32
    %c198_i32 = arith.constant 198 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c0_i8 = arith.constant 0 : i8
    %c1_i32 = arith.constant 1 : i32
    %c47_i32 = arith.constant 47 : i32
    %c2_i64 = arith.constant 2 : i64
    %c3_i64 = arith.constant 3 : i64
    %c511_i32 = arith.constant 511 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 1.17549435E-38 : f32
    %cst_2 = arith.constant 3.05175781E-5 : f32
    %cst_3 = arith.constant 3.40282347E+38 : f32
    %c211_i32 = arith.constant 211 : i32
    %c65_i32 = arith.constant 65 : i32
    %c420_i32 = arith.constant 420 : i32
    %c232_i32 = arith.constant 232 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.undef : i64
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %3 = memref.alloca() : memref<1xf64>
    %4 = memref.alloca() : memref<1xf64>
    %5 = memref.alloca() : memref<1xf64>
    %6 = memref.alloca() : memref<1xf64>
    %7 = memref.alloca() : memref<1xf64>
    %8 = memref.alloca() : memref<1xf64>
    %9 = memref.alloca() : memref<1xi32>
    affine.store %0, %9[0] : memref<1xi32>
    %10 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %11 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %12 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %13 = llvm.alloca %c1_i64 x !llvm.array<1 x i8> : (i64) -> !llvm.ptr<array<1 x i8>>
    %14 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %15 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %16 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %17 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %18 = memref.get_global @"_Z11writeLinearIfEiPT_iiPKcS3_@static@_ZZ11writeLinearIfEiPT_iiPKcS3_E4done_0" : memref<1xi32>
    %19 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %20 = arith.muli %arg1, %arg2 : i32
    %21 = arith.extui %20 : i32 to i64
    %22 = arith.muli %21, %c4_i64 : i64
    %23 = arith.trunci %22 : i64 to i32
    %24 = arith.extsi %23 : i32 to i64
    %25 = arith.divui %24, %c4_i64 : i64
    %26 = arith.index_cast %25 : i64 to index
    %27 = memref.alloc(%26) : memref<?xf32>
    %28 = call @cudaGetLastError() : () -> i32
    %29 = arith.cmpi ne, %c0_i32, %28 : i32
    scf.if %29 {
      %61 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %62 = llvm.load %61 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %63 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %64 = llvm.getelementptr %63[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %65 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %66 = llvm.getelementptr %65[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %67 = llvm.mlir.addressof @str4 : !llvm.ptr<array<12 x i8>>
      %68 = llvm.getelementptr %67[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %69 = call @cudaGetErrorString(%28) : (i32) -> !llvm.ptr<i8>
      %70 = llvm.call @fprintf(%62, %64, %66, %c198_i32, %68, %69) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %30 = "polygeist.memref2pointer"(%27) : (memref<?xf32>) -> !llvm.ptr<i8>
    "llvm.intr.memset"(%30, %c0_i8, %24, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %31 = llvm.load %19 : !llvm.ptr<ptr<i8>>
    %32 = arith.extsi %20 : i32 to i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr<i8>
    %34 = llvm.bitcast %33 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.store %34, %19 : !llvm.ptr<ptr<i8>>
    %35 = "polygeist.memref2pointer"(%arg0) : (memref<?xf32>) -> !llvm.ptr<i8>
    "llvm.intr.memcpy"(%30, %35, %24, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %36 = memref.get_global @"_Z11writeLinearIfEiPT_iiPKcS3_@static@_ZZ11writeLinearIfEiPT_iiPKcS3_E4done_0@init" : memref<1xi1>
    %37 = affine.load %36[0] : memref<1xi1>
    scf.if %37 {
      affine.store %false, %36[0] : memref<1xi1>
      affine.store %c0_i32, %18[0] : memref<1xi32>
    }
    %38 = affine.load %18[0] : memref<1xi32>
    %39 = arith.trunci %38 : i32 to i1
    %40 = arith.xori %39, %true : i1
    scf.if %39 {
    } else {
      affine.store %c1_i32, %18[0] : memref<1xi32>
    }
    %41 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    scf.if %40 {
      %61 = llvm.mlir.addressof @str5 : !llvm.ptr<array<20 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = llvm.call @getenv(%62) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
      llvm.store %63, %17 : !llvm.ptr<ptr<i8>>
      %64 = llvm.mlir.null : !llvm.ptr<i8>
      %65 = llvm.icmp "ne" %63, %64 : !llvm.ptr<i8>
      %66 = scf.if %65 -> (i1) {
        %67 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %68 = llvm.getelementptr %67[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %69 = llvm.call @strcmp(%63, %68) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %70 = arith.trunci %69 : i32 to i1
        scf.yield %70 : i1
      } else {
        scf.yield %false : i1
      }
      scf.if %66 {
        %67 = llvm.load %16 : !llvm.ptr<ptr<i8>>
        %68 = llvm.mlir.addressof @str7 : !llvm.ptr<array<36 x i8>>
        %69 = llvm.getelementptr %68[%c0_i32, %c0_i32] : (!llvm.ptr<array<36 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %70 = llvm.call @getenv(%69) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %70, %16 : !llvm.ptr<ptr<i8>>
        %71 = memref.get_global @_ZZ11writeLinearIfEiPT_iiPKcS3_E4size_0 : memref<1xi64>
        %72 = affine.load %71[0] : memref<1xi64>
        %73 = arith.divui %72, %c4_i64 : i64
        %74 = arith.muli %73, %c4_i64 : i64
        %75 = llvm.load %15 : !llvm.ptr<ptr<i8>>
        %76 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %77 = llvm.getelementptr %76[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %78 = llvm.call @strrchr(%77, %c47_i32) : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
        llvm.store %78, %15 : !llvm.ptr<ptr<i8>>
        %79 = llvm.icmp "ne" %78, %64 : !llvm.ptr<i8>
        %80 = arith.xori %79, %true : i1
        %81 = scf.if %80 -> (!llvm.ptr<i8>) {
          %131 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
          %132 = llvm.getelementptr %131[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %132, %15 : !llvm.ptr<ptr<i8>>
          scf.yield %132 : !llvm.ptr<i8>
        } else {
          scf.yield %78 : !llvm.ptr<i8>
        }
        %82 = llvm.load %14 : !llvm.ptr<ptr<i8>>
        %83 = llvm.mlir.addressof @str8 : !llvm.ptr<array<12 x i8>>
        %84 = llvm.getelementptr %83[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %85 = llvm.call @getenv(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %85, %14 : !llvm.ptr<ptr<i8>>
        %86 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %87 = llvm.load %86 : !llvm.ptr<array<1 x i8>>
        llvm.store %87, %13 : !llvm.ptr<array<1 x i8>>
        %88 = llvm.icmp "ne" %85, %64 : !llvm.ptr<i8>
        %89 = arith.xori %88, %true : i1
        %90 = scf.if %89 -> (!llvm.ptr<i8>) {
          %131 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %132 = llvm.load %131 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %133 = llvm.mlir.addressof @str9 : !llvm.ptr<array<45 x i8>>
          %134 = llvm.getelementptr %133[%c0_i32, %c0_i32] : (!llvm.ptr<array<45 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %135 = llvm.call @fprintf(%132, %134) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
          %136 = llvm.getelementptr %13[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %136, %14 : !llvm.ptr<ptr<i8>>
          scf.yield %136 : !llvm.ptr<i8>
        } else {
          scf.yield %85 : !llvm.ptr<i8>
        }
        %91 = llvm.call @strlen(%81) : (!llvm.ptr<i8>) -> i64
        %92 = llvm.mlir.addressof @str30 : !llvm.ptr<array<4 x i8>>
        %93 = llvm.getelementptr %92[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %94 = llvm.call @strlen(%93) : (!llvm.ptr<i8>) -> i64
        %95 = arith.addi %91, %94 : i64
        %96 = arith.addi %95, %c2_i64 : i64
        %97 = llvm.alloca %96 x i8 : (i64) -> !llvm.ptr<i8>
        %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %99 = llvm.getelementptr %98[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %100 = llvm.mlir.addressof @str11 : !llvm.ptr<array<6 x i8>>
        %101 = llvm.getelementptr %100[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %102 = llvm.mlir.addressof @str30 : !llvm.ptr<array<4 x i8>>
        %103 = llvm.getelementptr %102[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %104 = llvm.call @sprintf(%99, %101, %81, %103) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %105 = llvm.call @strlen(%99) : (!llvm.ptr<i8>) -> i64
        %106 = llvm.call @strlen(%63) : (!llvm.ptr<i8>) -> i64
        %107 = arith.addi %105, %106 : i64
        %108 = llvm.call @strlen(%90) : (!llvm.ptr<i8>) -> i64
        %109 = arith.addi %107, %108 : i64
        %110 = arith.addi %109, %c3_i64 : i64
        %111 = llvm.alloca %110 x i8 : (i64) -> !llvm.ptr<i8>
        %112 = llvm.bitcast %111 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %113 = llvm.getelementptr %112[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %114 = llvm.mlir.addressof @str12 : !llvm.ptr<array<9 x i8>>
        %115 = llvm.getelementptr %114[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %116 = llvm.call @sprintf(%113, %115, %63, %90, %99) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %117 = llvm.call @strlen(%63) : (!llvm.ptr<i8>) -> i64
        %118 = llvm.call @strlen(%90) : (!llvm.ptr<i8>) -> i64
        %119 = arith.addi %117, %118 : i64
        %120 = arith.addi %119, %c2_i64 : i64
        %121 = llvm.alloca %120 x i8 : (i64) -> !llvm.ptr<i8>
        %122 = llvm.bitcast %121 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %123 = llvm.getelementptr %122[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %124 = llvm.mlir.addressof @str13 : !llvm.ptr<array<6 x i8>>
        %125 = llvm.getelementptr %124[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %126 = llvm.call @sprintf(%123, %125, %63, %90) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %127 = llvm.mlir.addressof @str14 : !llvm.ptr<array<21 x i8>>
        %128 = llvm.getelementptr %127[%c0_i32, %c0_i32] : (!llvm.ptr<array<21 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %129 = llvm.call @getenv(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        %130 = llvm.icmp "ne" %129, %64 : !llvm.ptr<i8>
        scf.if %130 {
          %131 = llvm.call @mkdir(%123, %c511_i32) : (!llvm.ptr<i8>, i32) -> i32
          %132 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %133 = llvm.load %132 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %134 = llvm.mlir.addressof @str15 : !llvm.ptr<array<55 x i8>>
          %135 = llvm.getelementptr %134[%c0_i32, %c0_i32] : (!llvm.ptr<array<55 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %136 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
          %137 = llvm.getelementptr %136[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %138 = llvm.mlir.addressof @str31 : !llvm.ptr<array<6 x i8>>
          %139 = llvm.getelementptr %138[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %140 = llvm.call @fprintf(%133, %135, %137, %139, %113) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %141 = llvm.load %12 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %142 = llvm.mlir.addressof @str18 : !llvm.ptr<array<3 x i8>>
          %143 = llvm.getelementptr %142[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %144 = llvm.call @fopen(%113, %143) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %144, %12 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %145 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %146 = llvm.icmp "ne" %144, %145 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %147 = arith.xori %146, %true : i1
          scf.if %147 {
            %150 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %151 = llvm.load %150 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %152 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %153 = llvm.getelementptr %152[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %154 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %155 = llvm.load %154 : !llvm.ptr<i32>
            %156 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %157 = llvm.load %156 : !llvm.ptr<i32>
            %158 = call @strerror(%157) : (i32) -> !llvm.ptr<i8>
            %159 = llvm.call @fprintf(%151, %153, %113, %155, %158) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %148 = llvm.call @fwrite(%30, %c4_i64, %73, %144) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          %149 = llvm.call @fclose(%144) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        } else {
          %131 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %132 = llvm.load %131 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %133 = llvm.mlir.addressof @str20 : !llvm.ptr<array<53 x i8>>
          %134 = llvm.getelementptr %133[%c0_i32, %c0_i32] : (!llvm.ptr<array<53 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %135 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
          %136 = llvm.getelementptr %135[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %137 = llvm.mlir.addressof @str31 : !llvm.ptr<array<6 x i8>>
          %138 = llvm.getelementptr %137[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %139 = llvm.call @fprintf(%132, %134, %136, %138, %113) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %140 = llvm.load %11 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %141 = llvm.mlir.addressof @str21 : !llvm.ptr<array<3 x i8>>
          %142 = llvm.getelementptr %141[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %143 = llvm.call @fopen(%113, %142) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %143, %11 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %144 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %145 = llvm.icmp "ne" %143, %144 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %146 = arith.xori %145, %true : i1
          scf.if %146 {
            %170 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %171 = llvm.load %170 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %172 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %173 = llvm.getelementptr %172[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %174 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %175 = llvm.load %174 : !llvm.ptr<i32>
            %176 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %177 = llvm.load %176 : !llvm.ptr<i32>
            %178 = call @strerror(%177) : (i32) -> !llvm.ptr<i8>
            %179 = llvm.call @fprintf(%171, %173, %113, %175, %178) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %147 = llvm.load %10 : !llvm.ptr<ptr<i8>>
          %148 = llvm.call @malloc(%74) : (i64) -> !llvm.ptr<i8>
          llvm.store %148, %10 : !llvm.ptr<ptr<i8>>
          %149 = llvm.call @fread(%148, %c4_i64, %73, %143) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          affine.store %c1_i32, %9[0] : memref<1xi32>
          affine.store %cst, %8[0] : memref<1xf64>
          affine.store %cst, %7[0] : memref<1xf64>
          affine.store %cst, %6[0] : memref<1xf64>
          %150 = "polygeist.pointer2memref"(%148) : (!llvm.ptr<i8>) -> memref<?xf32>
          %151 = "polygeist.memref2pointer"(%27) : (memref<?xf32>) -> !llvm.ptr<f32>
          %152 = llvm.getelementptr %151[%73] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
          %153:2 = scf.while (%arg5 = %150, %arg6 = %27) : (memref<?xf32>, memref<?xf32>) -> (memref<?xf32>, memref<?xf32>) {
            %170 = "polygeist.memref2pointer"(%arg6) : (memref<?xf32>) -> !llvm.ptr<f32>
            %171 = llvm.icmp "ult" %170, %152 : !llvm.ptr<f32>
            scf.condition(%171) %arg5, %arg6 : memref<?xf32>, memref<?xf32>
          } do {
          ^bb0(%arg5: memref<?xf32>, %arg6: memref<?xf32>):  // no predecessors
            %170 = "polygeist.memref2pointer"(%arg6) : (memref<?xf32>) -> !llvm.ptr<f32>
            %171 = affine.load %arg6[0] : memref<?xf32>
            %172 = affine.load %arg5[0] : memref<?xf32>
            %173 = arith.cmpf ueq, %171, %172 : f32
            %174 = scf.if %173 -> (i1) {
              scf.yield %true : i1
            } else {
              %178 = affine.load %arg6[0] : memref<?xf32>
              %179 = affine.load %arg5[0] : memref<?xf32>
              %180 = arith.subf %178, %179 : f32
              %181 = arith.cmpf ugt, %180, %cst_0 : f32
              %182 = scf.if %181 -> (f32) {
                %196 = affine.load %arg6[0] : memref<?xf32>
                %197 = affine.load %arg5[0] : memref<?xf32>
                %198 = arith.subf %196, %197 : f32
                scf.yield %198 : f32
              } else {
                %196 = affine.load %arg6[0] : memref<?xf32>
                %197 = affine.load %arg5[0] : memref<?xf32>
                %198 = arith.subf %196, %197 : f32
                %199 = arith.negf %198 : f32
                scf.yield %199 : f32
              }
              %183 = affine.load %arg6[0] : memref<?xf32>
              %184 = arith.cmpf ugt, %183, %cst_0 : f32
              %185 = scf.if %184 -> (f32) {
                %196 = affine.load %arg6[0] : memref<?xf32>
                scf.yield %196 : f32
              } else {
                %196 = affine.load %arg6[0] : memref<?xf32>
                %197 = arith.negf %196 : f32
                scf.yield %197 : f32
              }
              %186 = affine.load %arg5[0] : memref<?xf32>
              %187 = arith.cmpf ugt, %186, %cst_0 : f32
              %188 = scf.if %187 -> (f32) {
                %196 = affine.load %arg5[0] : memref<?xf32>
                scf.yield %196 : f32
              } else {
                %196 = affine.load %arg5[0] : memref<?xf32>
                %197 = arith.negf %196 : f32
                scf.yield %197 : f32
              }
              %189 = arith.addf %185, %188 : f32
              %190 = arith.cmpf ugt, %189, %cst_3 : f32
              %191 = scf.if %190 -> (f32) {
                scf.yield %cst_3 : f32
              } else {
                %196 = affine.load %arg6[0] : memref<?xf32>
                %197 = arith.cmpf ugt, %196, %cst_0 : f32
                %198 = scf.if %197 -> (f32) {
                  %203 = affine.load %arg6[0] : memref<?xf32>
                  scf.yield %203 : f32
                } else {
                  %203 = affine.load %arg6[0] : memref<?xf32>
                  %204 = arith.negf %203 : f32
                  scf.yield %204 : f32
                }
                %199 = affine.load %arg5[0] : memref<?xf32>
                %200 = arith.cmpf ugt, %199, %cst_0 : f32
                %201 = scf.if %200 -> (f32) {
                  %203 = affine.load %arg5[0] : memref<?xf32>
                  scf.yield %203 : f32
                } else {
                  %203 = affine.load %arg5[0] : memref<?xf32>
                  %204 = arith.negf %203 : f32
                  scf.yield %204 : f32
                }
                %202 = arith.addf %198, %201 : f32
                scf.yield %202 : f32
              }
              %192 = arith.mulf %cst_2, %191 : f32
              %193 = arith.cmpf ugt, %cst_1, %192 : f32
              %194 = scf.if %193 -> (f32) {
                scf.yield %cst_1 : f32
              } else {
                %196 = affine.load %arg6[0] : memref<?xf32>
                %197 = arith.cmpf ugt, %196, %cst_0 : f32
                %198 = scf.if %197 -> (f32) {
                  %206 = affine.load %arg6[0] : memref<?xf32>
                  scf.yield %206 : f32
                } else {
                  %206 = affine.load %arg6[0] : memref<?xf32>
                  %207 = arith.negf %206 : f32
                  scf.yield %207 : f32
                }
                %199 = affine.load %arg5[0] : memref<?xf32>
                %200 = arith.cmpf ugt, %199, %cst_0 : f32
                %201 = scf.if %200 -> (f32) {
                  %206 = affine.load %arg5[0] : memref<?xf32>
                  scf.yield %206 : f32
                } else {
                  %206 = affine.load %arg5[0] : memref<?xf32>
                  %207 = arith.negf %206 : f32
                  scf.yield %207 : f32
                }
                %202 = arith.addf %198, %201 : f32
                %203 = arith.cmpf ugt, %202, %cst_3 : f32
                %204 = scf.if %203 -> (f32) {
                  scf.yield %cst_3 : f32
                } else {
                  %206 = affine.load %arg6[0] : memref<?xf32>
                  %207 = arith.cmpf ugt, %206, %cst_0 : f32
                  %208 = scf.if %207 -> (f32) {
                    %213 = affine.load %arg6[0] : memref<?xf32>
                    scf.yield %213 : f32
                  } else {
                    %213 = affine.load %arg6[0] : memref<?xf32>
                    %214 = arith.negf %213 : f32
                    scf.yield %214 : f32
                  }
                  %209 = affine.load %arg5[0] : memref<?xf32>
                  %210 = arith.cmpf ugt, %209, %cst_0 : f32
                  %211 = scf.if %210 -> (f32) {
                    %213 = affine.load %arg5[0] : memref<?xf32>
                    scf.yield %213 : f32
                  } else {
                    %213 = affine.load %arg5[0] : memref<?xf32>
                    %214 = arith.negf %213 : f32
                    scf.yield %214 : f32
                  }
                  %212 = arith.addf %208, %211 : f32
                  scf.yield %212 : f32
                }
                %205 = arith.mulf %cst_2, %204 : f32
                scf.yield %205 : f32
              }
              %195 = arith.cmpf ult, %182, %194 : f32
              scf.yield %195 : i1
            }
            %175 = arith.xori %174, %true : i1
            scf.if %175 {
              %178 = affine.load %arg6[0] : memref<?xf32>
              %179 = arith.cmpf ule, %178, %cst_1 : f32
              %180 = scf.if %179 -> (i1) {
                scf.yield %true : i1
              } else {
                %251 = affine.load %arg5[0] : memref<?xf32>
                %252 = arith.cmpf ule, %251, %cst_1 : f32
                scf.yield %252 : i1
              }
              %181 = scf.if %180 -> (f64) {
                scf.yield %cst : f64
              } else {
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = affine.load %arg5[0] : memref<?xf32>
                %253 = arith.subf %251, %252 : f32
                %254 = arith.cmpf ugt, %253, %cst_0 : f32
                %255 = scf.if %254 -> (f32) {
                  %266 = affine.load %arg6[0] : memref<?xf32>
                  %267 = affine.load %arg5[0] : memref<?xf32>
                  %268 = arith.subf %266, %267 : f32
                  scf.yield %268 : f32
                } else {
                  %266 = affine.load %arg6[0] : memref<?xf32>
                  %267 = affine.load %arg5[0] : memref<?xf32>
                  %268 = arith.subf %266, %267 : f32
                  %269 = arith.negf %268 : f32
                  scf.yield %269 : f32
                }
                %256 = arith.extf %255 : f32 to f64
                %257 = affine.load %arg6[0] : memref<?xf32>
                %258 = arith.cmpf ugt, %257, %cst_0 : f32
                %259 = scf.if %258 -> (f32) {
                  %266 = affine.load %arg6[0] : memref<?xf32>
                  scf.yield %266 : f32
                } else {
                  %266 = affine.load %arg6[0] : memref<?xf32>
                  %267 = arith.negf %266 : f32
                  scf.yield %267 : f32
                }
                %260 = affine.load %arg5[0] : memref<?xf32>
                %261 = arith.cmpf ugt, %260, %cst_0 : f32
                %262 = scf.if %261 -> (f32) {
                  %266 = affine.load %arg5[0] : memref<?xf32>
                  scf.yield %266 : f32
                } else {
                  %266 = affine.load %arg5[0] : memref<?xf32>
                  %267 = arith.negf %266 : f32
                  scf.yield %267 : f32
                }
                %263 = arith.addf %259, %262 : f32
                %264 = arith.extf %263 : f32 to f64
                %265 = arith.divf %256, %264 : f64
                scf.yield %265 : f64
              }
              affine.store %181, %5[0] : memref<1xf64>
              %182 = affine.load %5[0] : memref<1xf64>
              %183 = affine.load %6[0] : memref<1xf64>
              %184 = arith.cmpf ugt, %182, %183 : f64
              %185 = select %184, %5, %6 : memref<1xf64>
              %186 = affine.load %185[0] : memref<1xf64>
              affine.store %186, %6[0] : memref<1xf64>
              %187 = affine.load %arg6[0] : memref<?xf32>
              %188 = affine.load %arg5[0] : memref<?xf32>
              %189 = arith.subf %187, %188 : f32
              %190 = arith.cmpf ugt, %189, %cst_0 : f32
              %191 = scf.if %190 -> (f32) {
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = affine.load %arg5[0] : memref<?xf32>
                %253 = arith.subf %251, %252 : f32
                scf.yield %253 : f32
              } else {
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = affine.load %arg5[0] : memref<?xf32>
                %253 = arith.subf %251, %252 : f32
                %254 = arith.negf %253 : f32
                scf.yield %254 : f32
              }
              %192 = arith.extf %191 : f32 to f64
              %193 = affine.load %arg6[0] : memref<?xf32>
              %194 = arith.cmpf ugt, %193, %cst_0 : f32
              %195 = scf.if %194 -> (f32) {
                %251 = affine.load %arg6[0] : memref<?xf32>
                scf.yield %251 : f32
              } else {
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = arith.negf %251 : f32
                scf.yield %252 : f32
              }
              %196 = affine.load %arg5[0] : memref<?xf32>
              %197 = arith.cmpf ugt, %196, %cst_0 : f32
              %198 = scf.if %197 -> (f32) {
                %251 = affine.load %arg5[0] : memref<?xf32>
                scf.yield %251 : f32
              } else {
                %251 = affine.load %arg5[0] : memref<?xf32>
                %252 = arith.negf %251 : f32
                scf.yield %252 : f32
              }
              %199 = arith.addf %195, %198 : f32
              %200 = arith.extf %199 : f32 to f64
              %201 = arith.divf %192, %200 : f64
              affine.store %201, %4[0] : memref<1xf64>
              %202 = affine.load %4[0] : memref<1xf64>
              %203 = affine.load %7[0] : memref<1xf64>
              %204 = arith.cmpf ugt, %202, %203 : f64
              %205 = select %204, %4, %7 : memref<1xf64>
              %206 = affine.load %205[0] : memref<1xf64>
              affine.store %206, %7[0] : memref<1xf64>
              %207 = affine.load %arg6[0] : memref<?xf32>
              %208 = affine.load %arg5[0] : memref<?xf32>
              %209 = arith.subf %207, %208 : f32
              %210 = arith.cmpf ugt, %209, %cst_0 : f32
              %211 = scf.if %210 -> (f32) {
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = affine.load %arg5[0] : memref<?xf32>
                %253 = arith.subf %251, %252 : f32
                scf.yield %253 : f32
              } else {
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = affine.load %arg5[0] : memref<?xf32>
                %253 = arith.subf %251, %252 : f32
                %254 = arith.negf %253 : f32
                scf.yield %254 : f32
              }
              %212 = arith.extf %211 : f32 to f64
              affine.store %212, %3[0] : memref<1xf64>
              %213 = affine.load %3[0] : memref<1xf64>
              %214 = affine.load %8[0] : memref<1xf64>
              %215 = arith.cmpf ugt, %213, %214 : f64
              %216 = select %215, %3, %8 : memref<1xf64>
              %217 = affine.load %216[0] : memref<1xf64>
              affine.store %217, %8[0] : memref<1xf64>
              %218 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %219 = llvm.load %218 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %220 = llvm.mlir.addressof @str22 : !llvm.ptr<array<43 x i8>>
              %221 = llvm.getelementptr %220[%c0_i32, %c0_i32] : (!llvm.ptr<array<43 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %222 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
              %223 = llvm.getelementptr %222[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %224 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
              %225 = llvm.getelementptr %224[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %226 = llvm.mlir.addressof @str30 : !llvm.ptr<array<4 x i8>>
              %227 = llvm.getelementptr %226[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %228 = llvm.ptrtoint %151 : !llvm.ptr<f32> to i64
              %229 = llvm.ptrtoint %170 : !llvm.ptr<f32> to i64
              %230 = arith.subi %229, %228 : i64
              %231 = arith.trunci %230 : i64 to i32
              %232 = llvm.call @fprintf(%219, %221, %223, %225, %227, %231) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32) -> i32
              %233 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %234 = llvm.load %233 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %235 = llvm.mlir.addressof @str32 : !llvm.ptr<array<23 x i8>>
              %236 = llvm.getelementptr %235[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %237 = affine.load %arg6[0] : memref<?xf32>
              %238 = arith.extf %237 : f32 to f64
              %239 = affine.load %arg5[0] : memref<?xf32>
              %240 = arith.extf %239 : f32 to f64
              %241 = llvm.call @fprintf(%234, %236, %238, %240) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64) -> i32
              %242 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %243 = llvm.load %242 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %244 = llvm.mlir.addressof @str24 : !llvm.ptr<array<71 x i8>>
              %245 = llvm.getelementptr %244[%c0_i32, %c0_i32] : (!llvm.ptr<array<71 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %246 = affine.load %4[0] : memref<1xf64>
              %247 = affine.load %5[0] : memref<1xf64>
              %248 = affine.load %3[0] : memref<1xf64>
              %249 = llvm.call @fprintf(%243, %245, %246, %247, %248) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64, f64) -> i32
              affine.store %c0_i32, %9[0] : memref<1xi32>
              %250 = llvm.icmp "ne" %70, %64 : !llvm.ptr<i8>
              scf.if %250 {
                %251 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %252 = llvm.load %251 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %253 = llvm.mlir.addressof @str25 : !llvm.ptr<array<14 x i8>>
                %254 = llvm.getelementptr %253[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %255 = llvm.call @fprintf(%252, %254) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                %256 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %257 = llvm.load %256 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %258 = llvm.mlir.addressof @str26 : !llvm.ptr<array<9 x i8>>
                %259 = llvm.getelementptr %258[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %260 = llvm.call @fprintf(%257, %259) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                call @exit(%c1_i32) : (i32) -> ()
              }
            }
            %176 = "polygeist.subindex"(%arg6, %c1) : (memref<?xf32>, index) -> memref<?xf32>
            %177 = "polygeist.subindex"(%arg5, %c1) : (memref<?xf32>, index) -> memref<?xf32>
            scf.yield %177, %176 : memref<?xf32>, memref<?xf32>
          }
          %154 = llvm.load %2 : !llvm.ptr<ptr<i8>>
          %155 = affine.load %9[0] : memref<1xi32>
          %156 = arith.trunci %155 : i32 to i1
          %157 = scf.if %156 -> (!llvm.ptr<i8>) {
            %170 = llvm.mlir.addressof @str27 : !llvm.ptr<array<5 x i8>>
            %171 = llvm.getelementptr %170[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %171, %2 : !llvm.ptr<ptr<i8>>
            scf.yield %171 : !llvm.ptr<i8>
          } else {
            %170 = llvm.mlir.addressof @str28 : !llvm.ptr<array<5 x i8>>
            %171 = llvm.getelementptr %170[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %171, %2 : !llvm.ptr<ptr<i8>>
            scf.yield %171 : !llvm.ptr<i8>
          }
          %158 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %159 = llvm.load %158 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %160 = llvm.mlir.addressof @str29 : !llvm.ptr<array<146 x i8>>
          %161 = llvm.getelementptr %160[%c0_i32, %c0_i32] : (!llvm.ptr<array<146 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %162 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
          %163 = llvm.getelementptr %162[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %164 = affine.load %8[0] : memref<1xf64>
          %165 = affine.load %7[0] : memref<1xf64>
          %166 = affine.load %6[0] : memref<1xf64>
          %167 = llvm.call @fprintf(%159, %161, %163, %157, %164, %165, %166) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, f64, f64) -> i32
          %168 = llvm.bitcast %148 : !llvm.ptr<i8> to !llvm.ptr<i8>
          llvm.call @free(%168) : (!llvm.ptr<i8>) -> ()
          %169 = llvm.call @fclose(%143) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        }
      }
    }
    %42 = call @cudaGetLastError() : () -> i32
    %43 = arith.cmpi ne, %c0_i32, %42 : i32
    scf.if %43 {
      %61 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %62 = llvm.load %61 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %63 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %64 = llvm.getelementptr %63[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %65 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %66 = llvm.getelementptr %65[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %67 = llvm.mlir.addressof @str34 : !llvm.ptr<array<23 x i8>>
      %68 = llvm.getelementptr %67[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %69 = call @cudaGetErrorString(%42) : (i32) -> !llvm.ptr<i8>
      %70 = llvm.call @fprintf(%62, %64, %66, %c211_i32, %68, %69) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    call @_Z13samplesToCharPhPfi(%34, %27, %20) : (!llvm.ptr<i8>, memref<?xf32>, i32) -> ()
    %44 = llvm.call @strlen(%arg3) : (!llvm.ptr<i8>) -> i64
    %45 = llvm.call @strlen(%arg4) : (!llvm.ptr<i8>) -> i64
    %46 = arith.addi %44, %45 : i64
    %47 = llvm.alloca %46 x i8 : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
    %49 = llvm.getelementptr %48[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %50 = llvm.call @strcpy(%49, %arg3) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %51 = llvm.call @strlen(%arg3) : (!llvm.ptr<i8>) -> i64
    %52 = llvm.getelementptr %49[%51] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %53 = llvm.call @strcpy(%52, %arg4) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %54 = llvm.call @open(%49, %c65_i32, %c420_i32) : (!llvm.ptr<i8>, i32, i32) -> i32
    %55 = arith.cmpi eq, %54, %c-1_i32 : i32
    %56 = arith.cmpi ne, %54, %c-1_i32 : i32
    %57 = scf.if %55 -> (i32) {
      %61 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %62 = llvm.load %61 : !llvm.ptr<i32>
      %63 = llvm.mlir.addressof @str35 : !llvm.ptr<array<17 x i8>>
      %64 = llvm.getelementptr %63[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @error(%c0_i32, %62, %64, %49) : (i32, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
      scf.yield %c-1_i32 : i32
    } else {
      scf.yield %0 : i32
    }
    %58 = scf.if %56 -> (i64) {
      %61 = llvm.mlir.addressof @str36 : !llvm.ptr<array<26 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = llvm.call @printf(%62, %49, %arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, i32) -> i32
      %64 = llvm.bitcast %34 : !llvm.ptr<i8> to !llvm.ptr<i8>
      %65 = call @write(%54, %64, %32) : (i32, !llvm.ptr<i8>, i64) -> i64
      %66 = llvm.call @close(%54) : (i32) -> i32
      memref.dealloc %27 : memref<?xf32>
      %67 = call @cudaGetLastError() : () -> i32
      %68 = arith.cmpi ne, %c0_i32, %67 : i32
      scf.if %68 {
        %69 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %70 = llvm.load %69 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %71 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
        %72 = llvm.getelementptr %71[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %73 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %74 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %75 = llvm.mlir.addressof @str37 : !llvm.ptr<array<22 x i8>>
        %76 = llvm.getelementptr %75[%c0_i32, %c0_i32] : (!llvm.ptr<array<22 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %77 = call @cudaGetErrorString(%67) : (i32) -> !llvm.ptr<i8>
        %78 = llvm.call @fprintf(%70, %72, %74, %c232_i32, %76, %77) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        call @exit(%c-1_i32) : (i32) -> ()
      }
      llvm.call @free(%64) : (!llvm.ptr<i8>) -> ()
      scf.yield %65 : i64
    } else {
      scf.yield %1 : i64
    }
    %59:2 = scf.if %56 -> (i1, i32) {
      %61 = arith.cmpi eq, %58, %c0_i64 : i64
      %62 = arith.cmpi ne, %58, %c0_i64 : i64
      %63 = select %61, %c1_i32, %57 : i32
      scf.yield %62, %63 : i1, i32
    } else {
      scf.yield %false, %57 : i1, i32
    }
    %60 = select %59#0, %c0_i32, %59#1 : i32
    return %60 : i32
  }
  func private @strerror(i32) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func private @write(i32, !llvm.ptr<i8>, i64) -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func @_Z11writeLinearIiEiPT_iiPKcS3_(%arg0: memref<?xi32>, %arg1: i32, %arg2: i32, %arg3: !llvm.ptr<i8>, %arg4: !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %true = arith.constant true
    %false = arith.constant false
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %c4_i64 = arith.constant 4 : i64
    %c0_i32 = arith.constant 0 : i32
    %c198_i32 = arith.constant 198 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c0_i8 = arith.constant 0 : i8
    %c1_i32 = arith.constant 1 : i32
    %c47_i32 = arith.constant 47 : i32
    %c2_i64 = arith.constant 2 : i64
    %c3_i64 = arith.constant 3 : i64
    %c511_i32 = arith.constant 511 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %c211_i32 = arith.constant 211 : i32
    %c65_i32 = arith.constant 65 : i32
    %c420_i32 = arith.constant 420 : i32
    %c232_i32 = arith.constant 232 : i32
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.mlir.undef : i32
    %1 = llvm.mlir.undef : i64
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %3 = memref.alloca() : memref<1xf64>
    %4 = memref.alloca() : memref<1xf64>
    %5 = memref.alloca() : memref<1xf64>
    %6 = memref.alloca() : memref<1xf64>
    %7 = memref.alloca() : memref<1xf64>
    %8 = memref.alloca() : memref<1xf64>
    %9 = memref.alloca() : memref<1xi32>
    affine.store %0, %9[0] : memref<1xi32>
    %10 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %11 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %12 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %13 = llvm.alloca %c1_i64 x !llvm.array<1 x i8> : (i64) -> !llvm.ptr<array<1 x i8>>
    %14 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %15 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %16 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %17 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %18 = memref.get_global @"_Z11writeLinearIiEiPT_iiPKcS3_@static@_ZZ11writeLinearIiEiPT_iiPKcS3_E4done" : memref<1xi32>
    %19 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %20 = arith.muli %arg1, %arg2 : i32
    %21 = arith.extui %20 : i32 to i64
    %22 = arith.muli %21, %c4_i64 : i64
    %23 = arith.trunci %22 : i64 to i32
    %24 = arith.extsi %23 : i32 to i64
    %25 = arith.divui %24, %c4_i64 : i64
    %26 = arith.index_cast %25 : i64 to index
    %27 = memref.alloc(%26) : memref<?xi32>
    %28 = call @cudaGetLastError() : () -> i32
    %29 = arith.cmpi ne, %c0_i32, %28 : i32
    scf.if %29 {
      %61 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %62 = llvm.load %61 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %63 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %64 = llvm.getelementptr %63[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %65 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %66 = llvm.getelementptr %65[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %67 = llvm.mlir.addressof @str4 : !llvm.ptr<array<12 x i8>>
      %68 = llvm.getelementptr %67[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %69 = call @cudaGetErrorString(%28) : (i32) -> !llvm.ptr<i8>
      %70 = llvm.call @fprintf(%62, %64, %66, %c198_i32, %68, %69) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %30 = "polygeist.memref2pointer"(%27) : (memref<?xi32>) -> !llvm.ptr<i8>
    "llvm.intr.memset"(%30, %c0_i8, %24, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %31 = llvm.load %19 : !llvm.ptr<ptr<i8>>
    %32 = arith.extsi %20 : i32 to i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr<i8>
    %34 = llvm.bitcast %33 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.store %34, %19 : !llvm.ptr<ptr<i8>>
    %35 = "polygeist.memref2pointer"(%arg0) : (memref<?xi32>) -> !llvm.ptr<i8>
    "llvm.intr.memcpy"(%30, %35, %24, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %36 = memref.get_global @"_Z11writeLinearIiEiPT_iiPKcS3_@static@_ZZ11writeLinearIiEiPT_iiPKcS3_E4done@init" : memref<1xi1>
    %37 = affine.load %36[0] : memref<1xi1>
    scf.if %37 {
      affine.store %false, %36[0] : memref<1xi1>
      affine.store %c0_i32, %18[0] : memref<1xi32>
    }
    %38 = affine.load %18[0] : memref<1xi32>
    %39 = arith.trunci %38 : i32 to i1
    %40 = arith.xori %39, %true : i1
    scf.if %39 {
    } else {
      affine.store %c1_i32, %18[0] : memref<1xi32>
    }
    %41 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    scf.if %40 {
      %61 = llvm.mlir.addressof @str5 : !llvm.ptr<array<20 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = llvm.call @getenv(%62) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
      llvm.store %63, %17 : !llvm.ptr<ptr<i8>>
      %64 = llvm.mlir.null : !llvm.ptr<i8>
      %65 = llvm.icmp "ne" %63, %64 : !llvm.ptr<i8>
      %66 = scf.if %65 -> (i1) {
        %67 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %68 = llvm.getelementptr %67[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %69 = llvm.call @strcmp(%63, %68) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %70 = arith.trunci %69 : i32 to i1
        scf.yield %70 : i1
      } else {
        scf.yield %false : i1
      }
      scf.if %66 {
        %67 = llvm.load %16 : !llvm.ptr<ptr<i8>>
        %68 = llvm.mlir.addressof @str7 : !llvm.ptr<array<36 x i8>>
        %69 = llvm.getelementptr %68[%c0_i32, %c0_i32] : (!llvm.ptr<array<36 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %70 = llvm.call @getenv(%69) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %70, %16 : !llvm.ptr<ptr<i8>>
        %71 = memref.get_global @_ZZ11writeLinearIiEiPT_iiPKcS3_E4size : memref<1xi64>
        %72 = affine.load %71[0] : memref<1xi64>
        %73 = arith.divui %72, %c4_i64 : i64
        %74 = arith.muli %73, %c4_i64 : i64
        %75 = llvm.load %15 : !llvm.ptr<ptr<i8>>
        %76 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %77 = llvm.getelementptr %76[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %78 = llvm.call @strrchr(%77, %c47_i32) : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
        llvm.store %78, %15 : !llvm.ptr<ptr<i8>>
        %79 = llvm.icmp "ne" %78, %64 : !llvm.ptr<i8>
        %80 = arith.xori %79, %true : i1
        %81 = scf.if %80 -> (!llvm.ptr<i8>) {
          %131 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
          %132 = llvm.getelementptr %131[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %132, %15 : !llvm.ptr<ptr<i8>>
          scf.yield %132 : !llvm.ptr<i8>
        } else {
          scf.yield %78 : !llvm.ptr<i8>
        }
        %82 = llvm.load %14 : !llvm.ptr<ptr<i8>>
        %83 = llvm.mlir.addressof @str8 : !llvm.ptr<array<12 x i8>>
        %84 = llvm.getelementptr %83[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %85 = llvm.call @getenv(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %85, %14 : !llvm.ptr<ptr<i8>>
        %86 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %87 = llvm.load %86 : !llvm.ptr<array<1 x i8>>
        llvm.store %87, %13 : !llvm.ptr<array<1 x i8>>
        %88 = llvm.icmp "ne" %85, %64 : !llvm.ptr<i8>
        %89 = arith.xori %88, %true : i1
        %90 = scf.if %89 -> (!llvm.ptr<i8>) {
          %131 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %132 = llvm.load %131 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %133 = llvm.mlir.addressof @str9 : !llvm.ptr<array<45 x i8>>
          %134 = llvm.getelementptr %133[%c0_i32, %c0_i32] : (!llvm.ptr<array<45 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %135 = llvm.call @fprintf(%132, %134) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
          %136 = llvm.getelementptr %13[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %136, %14 : !llvm.ptr<ptr<i8>>
          scf.yield %136 : !llvm.ptr<i8>
        } else {
          scf.yield %85 : !llvm.ptr<i8>
        }
        %91 = llvm.call @strlen(%81) : (!llvm.ptr<i8>) -> i64
        %92 = llvm.mlir.addressof @str10 : !llvm.ptr<array<4 x i8>>
        %93 = llvm.getelementptr %92[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %94 = llvm.call @strlen(%93) : (!llvm.ptr<i8>) -> i64
        %95 = arith.addi %91, %94 : i64
        %96 = arith.addi %95, %c2_i64 : i64
        %97 = llvm.alloca %96 x i8 : (i64) -> !llvm.ptr<i8>
        %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %99 = llvm.getelementptr %98[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %100 = llvm.mlir.addressof @str11 : !llvm.ptr<array<6 x i8>>
        %101 = llvm.getelementptr %100[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %102 = llvm.mlir.addressof @str10 : !llvm.ptr<array<4 x i8>>
        %103 = llvm.getelementptr %102[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %104 = llvm.call @sprintf(%99, %101, %81, %103) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %105 = llvm.call @strlen(%99) : (!llvm.ptr<i8>) -> i64
        %106 = llvm.call @strlen(%63) : (!llvm.ptr<i8>) -> i64
        %107 = arith.addi %105, %106 : i64
        %108 = llvm.call @strlen(%90) : (!llvm.ptr<i8>) -> i64
        %109 = arith.addi %107, %108 : i64
        %110 = arith.addi %109, %c3_i64 : i64
        %111 = llvm.alloca %110 x i8 : (i64) -> !llvm.ptr<i8>
        %112 = llvm.bitcast %111 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %113 = llvm.getelementptr %112[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %114 = llvm.mlir.addressof @str12 : !llvm.ptr<array<9 x i8>>
        %115 = llvm.getelementptr %114[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %116 = llvm.call @sprintf(%113, %115, %63, %90, %99) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %117 = llvm.call @strlen(%63) : (!llvm.ptr<i8>) -> i64
        %118 = llvm.call @strlen(%90) : (!llvm.ptr<i8>) -> i64
        %119 = arith.addi %117, %118 : i64
        %120 = arith.addi %119, %c2_i64 : i64
        %121 = llvm.alloca %120 x i8 : (i64) -> !llvm.ptr<i8>
        %122 = llvm.bitcast %121 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %123 = llvm.getelementptr %122[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %124 = llvm.mlir.addressof @str13 : !llvm.ptr<array<6 x i8>>
        %125 = llvm.getelementptr %124[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %126 = llvm.call @sprintf(%123, %125, %63, %90) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %127 = llvm.mlir.addressof @str14 : !llvm.ptr<array<21 x i8>>
        %128 = llvm.getelementptr %127[%c0_i32, %c0_i32] : (!llvm.ptr<array<21 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %129 = llvm.call @getenv(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        %130 = llvm.icmp "ne" %129, %64 : !llvm.ptr<i8>
        scf.if %130 {
          %131 = llvm.call @mkdir(%123, %c511_i32) : (!llvm.ptr<i8>, i32) -> i32
          %132 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %133 = llvm.load %132 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %134 = llvm.mlir.addressof @str15 : !llvm.ptr<array<55 x i8>>
          %135 = llvm.getelementptr %134[%c0_i32, %c0_i32] : (!llvm.ptr<array<55 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %136 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
          %137 = llvm.getelementptr %136[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %138 = llvm.mlir.addressof @str17 : !llvm.ptr<array<4 x i8>>
          %139 = llvm.getelementptr %138[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %140 = llvm.call @fprintf(%133, %135, %137, %139, %113) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %141 = llvm.load %12 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %142 = llvm.mlir.addressof @str18 : !llvm.ptr<array<3 x i8>>
          %143 = llvm.getelementptr %142[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %144 = llvm.call @fopen(%113, %143) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %144, %12 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %145 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %146 = llvm.icmp "ne" %144, %145 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %147 = arith.xori %146, %true : i1
          scf.if %147 {
            %150 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %151 = llvm.load %150 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %152 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %153 = llvm.getelementptr %152[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %154 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %155 = llvm.load %154 : !llvm.ptr<i32>
            %156 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %157 = llvm.load %156 : !llvm.ptr<i32>
            %158 = call @strerror(%157) : (i32) -> !llvm.ptr<i8>
            %159 = llvm.call @fprintf(%151, %153, %113, %155, %158) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %148 = llvm.call @fwrite(%30, %c4_i64, %73, %144) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          %149 = llvm.call @fclose(%144) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        } else {
          %131 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %132 = llvm.load %131 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %133 = llvm.mlir.addressof @str20 : !llvm.ptr<array<53 x i8>>
          %134 = llvm.getelementptr %133[%c0_i32, %c0_i32] : (!llvm.ptr<array<53 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %135 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
          %136 = llvm.getelementptr %135[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %137 = llvm.mlir.addressof @str17 : !llvm.ptr<array<4 x i8>>
          %138 = llvm.getelementptr %137[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %139 = llvm.call @fprintf(%132, %134, %136, %138, %113) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %140 = llvm.load %11 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %141 = llvm.mlir.addressof @str21 : !llvm.ptr<array<3 x i8>>
          %142 = llvm.getelementptr %141[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %143 = llvm.call @fopen(%113, %142) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %143, %11 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %144 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %145 = llvm.icmp "ne" %143, %144 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %146 = arith.xori %145, %true : i1
          scf.if %146 {
            %170 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %171 = llvm.load %170 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %172 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %173 = llvm.getelementptr %172[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %174 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %175 = llvm.load %174 : !llvm.ptr<i32>
            %176 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %177 = llvm.load %176 : !llvm.ptr<i32>
            %178 = call @strerror(%177) : (i32) -> !llvm.ptr<i8>
            %179 = llvm.call @fprintf(%171, %173, %113, %175, %178) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %147 = llvm.load %10 : !llvm.ptr<ptr<i8>>
          %148 = llvm.call @malloc(%74) : (i64) -> !llvm.ptr<i8>
          llvm.store %148, %10 : !llvm.ptr<ptr<i8>>
          %149 = llvm.call @fread(%148, %c4_i64, %73, %143) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          affine.store %c1_i32, %9[0] : memref<1xi32>
          affine.store %cst, %8[0] : memref<1xf64>
          affine.store %cst, %7[0] : memref<1xf64>
          affine.store %cst, %6[0] : memref<1xf64>
          %150 = "polygeist.pointer2memref"(%148) : (!llvm.ptr<i8>) -> memref<?xi32>
          %151 = "polygeist.memref2pointer"(%27) : (memref<?xi32>) -> !llvm.ptr<i32>
          %152 = llvm.getelementptr %151[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          %153:2 = scf.while (%arg5 = %150, %arg6 = %27) : (memref<?xi32>, memref<?xi32>) -> (memref<?xi32>, memref<?xi32>) {
            %170 = "polygeist.memref2pointer"(%arg6) : (memref<?xi32>) -> !llvm.ptr<i32>
            %171 = llvm.icmp "ult" %170, %152 : !llvm.ptr<i32>
            scf.condition(%171) %arg5, %arg6 : memref<?xi32>, memref<?xi32>
          } do {
          ^bb0(%arg5: memref<?xi32>, %arg6: memref<?xi32>):  // no predecessors
            %170 = "polygeist.memref2pointer"(%arg6) : (memref<?xi32>) -> !llvm.ptr<i32>
            %171 = affine.load %arg6[0] : memref<?xi32>
            %172 = affine.load %arg5[0] : memref<?xi32>
            %173 = arith.cmpi ne, %171, %172 : i32
            scf.if %173 {
              %176 = affine.load %arg6[0] : memref<?xi32>
              %177 = arith.cmpi ule, %176, %c0_i32 : i32
              %178 = scf.if %177 -> (i1) {
                scf.yield %true : i1
              } else {
                %247 = affine.load %arg5[0] : memref<?xi32>
                %248 = arith.cmpi ule, %247, %c0_i32 : i32
                scf.yield %248 : i1
              }
              %179 = scf.if %178 -> (f64) {
                scf.yield %cst : f64
              } else {
                %247 = affine.load %arg6[0] : memref<?xi32>
                %248 = affine.load %arg5[0] : memref<?xi32>
                %249 = arith.subi %247, %248 : i32
                %250 = arith.cmpi ugt, %249, %c0_i32 : i32
                %251 = scf.if %250 -> (i32) {
                  %262 = affine.load %arg6[0] : memref<?xi32>
                  %263 = affine.load %arg5[0] : memref<?xi32>
                  %264 = arith.subi %262, %263 : i32
                  scf.yield %264 : i32
                } else {
                  %262 = affine.load %arg6[0] : memref<?xi32>
                  %263 = affine.load %arg5[0] : memref<?xi32>
                  %264 = arith.subi %262, %263 : i32
                  %265 = arith.subi %c0_i32, %264 : i32
                  scf.yield %265 : i32
                }
                %252 = arith.sitofp %251 : i32 to f64
                %253 = affine.load %arg6[0] : memref<?xi32>
                %254 = arith.cmpi ugt, %253, %c0_i32 : i32
                %255 = scf.if %254 -> (i32) {
                  %262 = affine.load %arg6[0] : memref<?xi32>
                  scf.yield %262 : i32
                } else {
                  %262 = affine.load %arg6[0] : memref<?xi32>
                  %263 = arith.subi %c0_i32, %262 : i32
                  scf.yield %263 : i32
                }
                %256 = affine.load %arg5[0] : memref<?xi32>
                %257 = arith.cmpi ugt, %256, %c0_i32 : i32
                %258 = scf.if %257 -> (i32) {
                  %262 = affine.load %arg5[0] : memref<?xi32>
                  scf.yield %262 : i32
                } else {
                  %262 = affine.load %arg5[0] : memref<?xi32>
                  %263 = arith.subi %c0_i32, %262 : i32
                  scf.yield %263 : i32
                }
                %259 = arith.addi %255, %258 : i32
                %260 = arith.sitofp %259 : i32 to f64
                %261 = arith.divf %252, %260 : f64
                scf.yield %261 : f64
              }
              affine.store %179, %5[0] : memref<1xf64>
              %180 = affine.load %5[0] : memref<1xf64>
              %181 = affine.load %6[0] : memref<1xf64>
              %182 = arith.cmpf ugt, %180, %181 : f64
              %183 = select %182, %5, %6 : memref<1xf64>
              %184 = affine.load %183[0] : memref<1xf64>
              affine.store %184, %6[0] : memref<1xf64>
              %185 = affine.load %arg6[0] : memref<?xi32>
              %186 = affine.load %arg5[0] : memref<?xi32>
              %187 = arith.subi %185, %186 : i32
              %188 = arith.cmpi ugt, %187, %c0_i32 : i32
              %189 = scf.if %188 -> (i32) {
                %247 = affine.load %arg6[0] : memref<?xi32>
                %248 = affine.load %arg5[0] : memref<?xi32>
                %249 = arith.subi %247, %248 : i32
                scf.yield %249 : i32
              } else {
                %247 = affine.load %arg6[0] : memref<?xi32>
                %248 = affine.load %arg5[0] : memref<?xi32>
                %249 = arith.subi %247, %248 : i32
                %250 = arith.subi %c0_i32, %249 : i32
                scf.yield %250 : i32
              }
              %190 = arith.sitofp %189 : i32 to f64
              %191 = affine.load %arg6[0] : memref<?xi32>
              %192 = arith.cmpi ugt, %191, %c0_i32 : i32
              %193 = scf.if %192 -> (i32) {
                %247 = affine.load %arg6[0] : memref<?xi32>
                scf.yield %247 : i32
              } else {
                %247 = affine.load %arg6[0] : memref<?xi32>
                %248 = arith.subi %c0_i32, %247 : i32
                scf.yield %248 : i32
              }
              %194 = affine.load %arg5[0] : memref<?xi32>
              %195 = arith.cmpi ugt, %194, %c0_i32 : i32
              %196 = scf.if %195 -> (i32) {
                %247 = affine.load %arg5[0] : memref<?xi32>
                scf.yield %247 : i32
              } else {
                %247 = affine.load %arg5[0] : memref<?xi32>
                %248 = arith.subi %c0_i32, %247 : i32
                scf.yield %248 : i32
              }
              %197 = arith.addi %193, %196 : i32
              %198 = arith.sitofp %197 : i32 to f64
              %199 = arith.divf %190, %198 : f64
              affine.store %199, %4[0] : memref<1xf64>
              %200 = affine.load %4[0] : memref<1xf64>
              %201 = affine.load %7[0] : memref<1xf64>
              %202 = arith.cmpf ugt, %200, %201 : f64
              %203 = select %202, %4, %7 : memref<1xf64>
              %204 = affine.load %203[0] : memref<1xf64>
              affine.store %204, %7[0] : memref<1xf64>
              %205 = affine.load %arg6[0] : memref<?xi32>
              %206 = affine.load %arg5[0] : memref<?xi32>
              %207 = arith.subi %205, %206 : i32
              %208 = arith.cmpi ugt, %207, %c0_i32 : i32
              %209 = scf.if %208 -> (i32) {
                %247 = affine.load %arg6[0] : memref<?xi32>
                %248 = affine.load %arg5[0] : memref<?xi32>
                %249 = arith.subi %247, %248 : i32
                scf.yield %249 : i32
              } else {
                %247 = affine.load %arg6[0] : memref<?xi32>
                %248 = affine.load %arg5[0] : memref<?xi32>
                %249 = arith.subi %247, %248 : i32
                %250 = arith.subi %c0_i32, %249 : i32
                scf.yield %250 : i32
              }
              %210 = arith.sitofp %209 : i32 to f64
              affine.store %210, %3[0] : memref<1xf64>
              %211 = affine.load %3[0] : memref<1xf64>
              %212 = affine.load %8[0] : memref<1xf64>
              %213 = arith.cmpf ugt, %211, %212 : f64
              %214 = select %213, %3, %8 : memref<1xf64>
              %215 = affine.load %214[0] : memref<1xf64>
              affine.store %215, %8[0] : memref<1xf64>
              %216 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %217 = llvm.load %216 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %218 = llvm.mlir.addressof @str22 : !llvm.ptr<array<43 x i8>>
              %219 = llvm.getelementptr %218[%c0_i32, %c0_i32] : (!llvm.ptr<array<43 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %220 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
              %221 = llvm.getelementptr %220[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %222 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
              %223 = llvm.getelementptr %222[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %224 = llvm.mlir.addressof @str10 : !llvm.ptr<array<4 x i8>>
              %225 = llvm.getelementptr %224[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %226 = llvm.ptrtoint %151 : !llvm.ptr<i32> to i64
              %227 = llvm.ptrtoint %170 : !llvm.ptr<i32> to i64
              %228 = arith.subi %227, %226 : i64
              %229 = arith.trunci %228 : i64 to i32
              %230 = llvm.call @fprintf(%217, %219, %221, %223, %225, %229) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32) -> i32
              %231 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %232 = llvm.load %231 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %233 = llvm.mlir.addressof @str23 : !llvm.ptr<array<19 x i8>>
              %234 = llvm.getelementptr %233[%c0_i32, %c0_i32] : (!llvm.ptr<array<19 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %235 = affine.load %arg6[0] : memref<?xi32>
              %236 = affine.load %arg5[0] : memref<?xi32>
              %237 = llvm.call @fprintf(%232, %234, %235, %236) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, i32, i32) -> i32
              %238 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %239 = llvm.load %238 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %240 = llvm.mlir.addressof @str24 : !llvm.ptr<array<71 x i8>>
              %241 = llvm.getelementptr %240[%c0_i32, %c0_i32] : (!llvm.ptr<array<71 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %242 = affine.load %4[0] : memref<1xf64>
              %243 = affine.load %5[0] : memref<1xf64>
              %244 = affine.load %3[0] : memref<1xf64>
              %245 = llvm.call @fprintf(%239, %241, %242, %243, %244) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64, f64) -> i32
              affine.store %c0_i32, %9[0] : memref<1xi32>
              %246 = llvm.icmp "ne" %70, %64 : !llvm.ptr<i8>
              scf.if %246 {
                %247 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %248 = llvm.load %247 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %249 = llvm.mlir.addressof @str25 : !llvm.ptr<array<14 x i8>>
                %250 = llvm.getelementptr %249[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %251 = llvm.call @fprintf(%248, %250) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                %252 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %253 = llvm.load %252 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %254 = llvm.mlir.addressof @str26 : !llvm.ptr<array<9 x i8>>
                %255 = llvm.getelementptr %254[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %256 = llvm.call @fprintf(%253, %255) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                call @exit(%c1_i32) : (i32) -> ()
              }
            }
            %174 = "polygeist.subindex"(%arg6, %c1) : (memref<?xi32>, index) -> memref<?xi32>
            %175 = "polygeist.subindex"(%arg5, %c1) : (memref<?xi32>, index) -> memref<?xi32>
            scf.yield %175, %174 : memref<?xi32>, memref<?xi32>
          }
          %154 = llvm.load %2 : !llvm.ptr<ptr<i8>>
          %155 = affine.load %9[0] : memref<1xi32>
          %156 = arith.trunci %155 : i32 to i1
          %157 = scf.if %156 -> (!llvm.ptr<i8>) {
            %170 = llvm.mlir.addressof @str27 : !llvm.ptr<array<5 x i8>>
            %171 = llvm.getelementptr %170[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %171, %2 : !llvm.ptr<ptr<i8>>
            scf.yield %171 : !llvm.ptr<i8>
          } else {
            %170 = llvm.mlir.addressof @str28 : !llvm.ptr<array<5 x i8>>
            %171 = llvm.getelementptr %170[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %171, %2 : !llvm.ptr<ptr<i8>>
            scf.yield %171 : !llvm.ptr<i8>
          }
          %158 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %159 = llvm.load %158 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %160 = llvm.mlir.addressof @str29 : !llvm.ptr<array<146 x i8>>
          %161 = llvm.getelementptr %160[%c0_i32, %c0_i32] : (!llvm.ptr<array<146 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %162 = llvm.mlir.addressof @str16 : !llvm.ptr<array<11 x i8>>
          %163 = llvm.getelementptr %162[%c0_i32, %c0_i32] : (!llvm.ptr<array<11 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %164 = affine.load %8[0] : memref<1xf64>
          %165 = affine.load %7[0] : memref<1xf64>
          %166 = affine.load %6[0] : memref<1xf64>
          %167 = llvm.call @fprintf(%159, %161, %163, %157, %164, %165, %166) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, f64, f64) -> i32
          %168 = llvm.bitcast %148 : !llvm.ptr<i8> to !llvm.ptr<i8>
          llvm.call @free(%168) : (!llvm.ptr<i8>) -> ()
          %169 = llvm.call @fclose(%143) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        }
      }
    }
    %42 = call @cudaGetLastError() : () -> i32
    %43 = arith.cmpi ne, %c0_i32, %42 : i32
    scf.if %43 {
      %61 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %62 = llvm.load %61 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %63 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %64 = llvm.getelementptr %63[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %65 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %66 = llvm.getelementptr %65[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %67 = llvm.mlir.addressof @str34 : !llvm.ptr<array<23 x i8>>
      %68 = llvm.getelementptr %67[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %69 = call @cudaGetErrorString(%42) : (i32) -> !llvm.ptr<i8>
      %70 = llvm.call @fprintf(%62, %64, %66, %c211_i32, %68, %69) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    call @_Z13samplesToCharPhPii(%34, %27, %20) : (!llvm.ptr<i8>, memref<?xi32>, i32) -> ()
    %44 = llvm.call @strlen(%arg3) : (!llvm.ptr<i8>) -> i64
    %45 = llvm.call @strlen(%arg4) : (!llvm.ptr<i8>) -> i64
    %46 = arith.addi %44, %45 : i64
    %47 = llvm.alloca %46 x i8 : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
    %49 = llvm.getelementptr %48[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %50 = llvm.call @strcpy(%49, %arg3) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %51 = llvm.call @strlen(%arg3) : (!llvm.ptr<i8>) -> i64
    %52 = llvm.getelementptr %49[%51] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %53 = llvm.call @strcpy(%52, %arg4) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %54 = llvm.call @open(%49, %c65_i32, %c420_i32) : (!llvm.ptr<i8>, i32, i32) -> i32
    %55 = arith.cmpi eq, %54, %c-1_i32 : i32
    %56 = arith.cmpi ne, %54, %c-1_i32 : i32
    %57 = scf.if %55 -> (i32) {
      %61 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %62 = llvm.load %61 : !llvm.ptr<i32>
      %63 = llvm.mlir.addressof @str35 : !llvm.ptr<array<17 x i8>>
      %64 = llvm.getelementptr %63[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @error(%c0_i32, %62, %64, %49) : (i32, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
      scf.yield %c-1_i32 : i32
    } else {
      scf.yield %0 : i32
    }
    %58 = scf.if %56 -> (i64) {
      %61 = llvm.mlir.addressof @str36 : !llvm.ptr<array<26 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = llvm.call @printf(%62, %49, %arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, i32) -> i32
      %64 = llvm.bitcast %34 : !llvm.ptr<i8> to !llvm.ptr<i8>
      %65 = call @write(%54, %64, %32) : (i32, !llvm.ptr<i8>, i64) -> i64
      %66 = llvm.call @close(%54) : (i32) -> i32
      memref.dealloc %27 : memref<?xi32>
      %67 = call @cudaGetLastError() : () -> i32
      %68 = arith.cmpi ne, %c0_i32, %67 : i32
      scf.if %68 {
        %69 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %70 = llvm.load %69 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %71 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
        %72 = llvm.getelementptr %71[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %73 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %74 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %75 = llvm.mlir.addressof @str37 : !llvm.ptr<array<22 x i8>>
        %76 = llvm.getelementptr %75[%c0_i32, %c0_i32] : (!llvm.ptr<array<22 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %77 = call @cudaGetErrorString(%67) : (i32) -> !llvm.ptr<i8>
        %78 = llvm.call @fprintf(%70, %72, %74, %c232_i32, %76, %77) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        call @exit(%c-1_i32) : (i32) -> ()
      }
      llvm.call @free(%64) : (!llvm.ptr<i8>) -> ()
      scf.yield %65 : i64
    } else {
      scf.yield %1 : i64
    }
    %59:2 = scf.if %56 -> (i1, i32) {
      %61 = arith.cmpi eq, %58, %c0_i64 : i64
      %62 = arith.cmpi ne, %58, %c0_i64 : i64
      %63 = select %61, %c1_i32, %57 : i32
      scf.yield %62, %63 : i1, i32
    } else {
      scf.yield %false, %57 : i1, i32
    }
    %60 = select %59#0, %c0_i32, %59#1 : i32
    return %60 : i32
  }
  func @_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_(%arg0: memref<?xf32>, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: !llvm.ptr<i8>, %arg5: !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %true = arith.constant true
    %c32_i64 = arith.constant 32 : i64
    %c0_i64 = arith.constant 0 : i64
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %c3_i32 = arith.constant 3 : i32
    %c4_i64 = arith.constant 4 : i64
    %c299_i32 = arith.constant 299 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c4 = arith.constant 4 : index
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c47_i32 = arith.constant 47 : i32
    %c2_i64 = arith.constant 2 : i64
    %c3_i64 = arith.constant 3 : i64
    %c511_i32 = arith.constant 511 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 1.17549435E-38 : f32
    %cst_2 = arith.constant 3.05175781E-5 : f32
    %cst_3 = arith.constant 3.40282347E+38 : f32
    %c313_i32 = arith.constant 313 : i32
    %c65_i32 = arith.constant 65 : i32
    %c420_i32 = arith.constant 420 : i32
    %c369_i32 = arith.constant 369 : i32
    %c-1_i64 = arith.constant -1 : i64
    %0 = arith.index_cast %arg3 : i32 to index
    %1 = arith.index_cast %0 : index to i64
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %2 : index to i64
    %4 = llvm.mlir.undef : i32
    %5 = llvm.mlir.undef : i64
    %6 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %7 = memref.alloca() : memref<1xf64>
    %8 = memref.alloca() : memref<1xf64>
    %9 = memref.alloca() : memref<1xf64>
    %10 = memref.alloca() : memref<1xf64>
    %11 = memref.alloca() : memref<1xf64>
    %12 = memref.alloca() : memref<1xf64>
    %13 = memref.alloca() : memref<1xi32>
    affine.store %4, %13[0] : memref<1xi32>
    %14 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %15 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %16 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %17 = llvm.alloca %c1_i64 x !llvm.array<1 x i8> : (i64) -> !llvm.ptr<array<1 x i8>>
    %18 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %20 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %21 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %22 = memref.get_global @"_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIfEiPT_iiiPKcS3_E4done_0" : memref<1xi32>
    %23 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>> : (i64) -> !llvm.ptr<ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>>
    %24 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %25 = arith.muli %arg1, %arg2 : i32
    %26 = llvm.load %23 : !llvm.ptr<ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>>
    %27 = arith.extui %arg3 : i32 to i64
    %28 = arith.muli %27, %c32_i64 : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
    llvm.store %30, %23 : !llvm.ptr<ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>>
    %31 = llvm.getelementptr %30[%c0_i64] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
    %32 = llvm.getelementptr %31[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %33 = llvm.getelementptr %32[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %34 = arith.remsi %arg1, %c2_i32 : i32
    %35 = arith.cmpi ne, %34, %c0_i32 : i32
    %36 = scf.if %35 -> (i32) {
      %113 = arith.divsi %arg1, %c2_i32 : i32
      %114 = arith.addi %113, %c1_i32 : i32
      scf.yield %114 : i32
    } else {
      %113 = arith.divsi %arg1, %c2_i32 : i32
      scf.yield %113 : i32
    }
    llvm.store %36, %33 : !llvm.ptr<i32>
    %37 = llvm.getelementptr %32[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %38 = arith.remsi %arg2, %c2_i32 : i32
    %39 = arith.cmpi ne, %38, %c0_i32 : i32
    %40 = scf.if %39 -> (i32) {
      %113 = arith.divsi %arg2, %c2_i32 : i32
      %114 = arith.addi %113, %c1_i32 : i32
      scf.yield %114 : i32
    } else {
      %113 = arith.divsi %arg2, %c2_i32 : i32
      scf.yield %113 : i32
    }
    llvm.store %40, %37 : !llvm.ptr<i32>
    %41 = llvm.getelementptr %31[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %42 = llvm.getelementptr %41[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %43 = llvm.load %33 : !llvm.ptr<i32>
    %44 = arith.subi %arg1, %43 : i32
    llvm.store %44, %42 : !llvm.ptr<i32>
    %45 = llvm.getelementptr %41[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %46 = llvm.load %37 : !llvm.ptr<i32>
    llvm.store %46, %45 : !llvm.ptr<i32>
    %47 = llvm.getelementptr %31[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %48 = llvm.getelementptr %47[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %49 = llvm.load %33 : !llvm.ptr<i32>
    llvm.store %49, %48 : !llvm.ptr<i32>
    %50 = llvm.getelementptr %47[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %51 = llvm.load %37 : !llvm.ptr<i32>
    %52 = arith.subi %arg2, %51 : i32
    llvm.store %52, %50 : !llvm.ptr<i32>
    %53 = llvm.getelementptr %31[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %54 = llvm.getelementptr %53[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %55 = llvm.load %42 : !llvm.ptr<i32>
    llvm.store %55, %54 : !llvm.ptr<i32>
    %56 = llvm.getelementptr %53[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %57 = llvm.load %50 : !llvm.ptr<i32>
    llvm.store %57, %56 : !llvm.ptr<i32>
    scf.for %arg6 = %c1 to %0 step %c1 {
      %113 = arith.index_cast %arg6 : index to i64
      %114 = llvm.getelementptr %30[%113] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %115 = llvm.getelementptr %114[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %117 = arith.addi %113, %c-1_i64 : i64
      %118 = llvm.getelementptr %30[%117] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %119 = llvm.getelementptr %118[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %121 = llvm.load %120 : !llvm.ptr<i32>
      %122 = arith.remsi %121, %c2_i32 : i32
      %123 = arith.cmpi ne, %122, %c0_i32 : i32
      %124 = scf.if %123 -> (i32) {
        %150 = llvm.load %120 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        %152 = arith.addi %151, %c1_i32 : i32
        scf.yield %152 : i32
      } else {
        %150 = llvm.load %120 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        scf.yield %151 : i32
      }
      llvm.store %124, %116 : !llvm.ptr<i32>
      %125 = llvm.getelementptr %115[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %126 = llvm.getelementptr %119[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %127 = llvm.load %126 : !llvm.ptr<i32>
      %128 = arith.remsi %127, %c2_i32 : i32
      %129 = arith.cmpi ne, %128, %c0_i32 : i32
      %130 = scf.if %129 -> (i32) {
        %150 = llvm.load %126 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        %152 = arith.addi %151, %c1_i32 : i32
        scf.yield %152 : i32
      } else {
        %150 = llvm.load %126 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        scf.yield %151 : i32
      }
      llvm.store %130, %125 : !llvm.ptr<i32>
      %131 = llvm.getelementptr %114[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %132 = llvm.getelementptr %131[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %133 = llvm.load %120 : !llvm.ptr<i32>
      %134 = llvm.load %116 : !llvm.ptr<i32>
      %135 = arith.subi %133, %134 : i32
      llvm.store %135, %132 : !llvm.ptr<i32>
      %136 = llvm.getelementptr %131[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %137 = llvm.load %125 : !llvm.ptr<i32>
      llvm.store %137, %136 : !llvm.ptr<i32>
      %138 = llvm.getelementptr %114[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %139 = llvm.getelementptr %138[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %140 = llvm.load %116 : !llvm.ptr<i32>
      llvm.store %140, %139 : !llvm.ptr<i32>
      %141 = llvm.getelementptr %138[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %142 = llvm.load %126 : !llvm.ptr<i32>
      %143 = llvm.load %125 : !llvm.ptr<i32>
      %144 = arith.subi %142, %143 : i32
      llvm.store %144, %141 : !llvm.ptr<i32>
      %145 = llvm.getelementptr %114[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %146 = llvm.getelementptr %145[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %147 = llvm.load %132 : !llvm.ptr<i32>
      llvm.store %147, %146 : !llvm.ptr<i32>
      %148 = llvm.getelementptr %145[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %149 = llvm.load %141 : !llvm.ptr<i32>
      llvm.store %149, %148 : !llvm.ptr<i32>
    }
    %58 = arith.extui %25 : i32 to i64
    %59 = arith.muli %58, %c4_i64 : i64
    %60 = arith.trunci %59 : i64 to i32
    %61 = arith.extsi %60 : i32 to i64
    %62 = arith.divui %61, %c4_i64 : i64
    %63 = arith.index_cast %62 : i64 to index
    %64 = memref.alloc(%63) : memref<?xf32>
    %65 = call @cudaGetLastError() : () -> i32
    %66 = arith.cmpi ne, %c0_i32, %65 : i32
    scf.if %66 {
      %113 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %114 = llvm.load %113 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %115 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %117 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %118 = llvm.getelementptr %117[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %119 = llvm.mlir.addressof @str4 : !llvm.ptr<array<12 x i8>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %121 = call @cudaGetErrorString(%65) : (i32) -> !llvm.ptr<i8>
      %122 = llvm.call @fprintf(%114, %116, %118, %c299_i32, %120, %121) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %67 = arith.index_cast %60 : i32 to index
    %68 = arith.divui %67, %c4 : index
    %69 = memref.alloc(%68) : memref<?xf32>
    %70 = "polygeist.memref2pointer"(%64) : (memref<?xf32>) -> !llvm.ptr<i8>
    "llvm.intr.memset"(%70, %c0_i8, %61, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %71 = "polygeist.memref2pointer"(%69) : (memref<?xf32>) -> !llvm.ptr<i8>
    "llvm.intr.memset"(%71, %c0_i8, %61, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %72 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %73 = arith.extsi %25 : i32 to i64
    %74 = llvm.call @malloc(%73) : (i64) -> !llvm.ptr<i8>
    %75 = llvm.bitcast %74 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.store %75, %24 : !llvm.ptr<ptr<i8>>
    %76 = "polygeist.memref2pointer"(%arg0) : (memref<?xf32>) -> !llvm.ptr<i8>
    "llvm.intr.memcpy"(%70, %76, %61, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %77 = memref.get_global @"_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIfEiPT_iiiPKcS3_E4done_0@init" : memref<1xi1>
    %78 = affine.load %77[0] : memref<1xi1>
    scf.if %78 {
      affine.store %false, %77[0] : memref<1xi1>
      affine.store %c0_i32, %22[0] : memref<1xi32>
    }
    %79 = affine.load %22[0] : memref<1xi32>
    %80 = arith.trunci %79 : i32 to i1
    %81 = arith.xori %80, %true : i1
    scf.if %80 {
    } else {
      affine.store %c1_i32, %22[0] : memref<1xi32>
    }
    %82 = llvm.load %21 : !llvm.ptr<ptr<i8>>
    scf.if %81 {
      %113 = llvm.mlir.addressof @str5 : !llvm.ptr<array<20 x i8>>
      %114 = llvm.getelementptr %113[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %115 = llvm.call @getenv(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
      llvm.store %115, %21 : !llvm.ptr<ptr<i8>>
      %116 = llvm.mlir.null : !llvm.ptr<i8>
      %117 = llvm.icmp "ne" %115, %116 : !llvm.ptr<i8>
      %118 = scf.if %117 -> (i1) {
        %119 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %121 = llvm.call @strcmp(%115, %120) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %122 = arith.trunci %121 : i32 to i1
        scf.yield %122 : i1
      } else {
        scf.yield %false : i1
      }
      scf.if %118 {
        %119 = llvm.load %20 : !llvm.ptr<ptr<i8>>
        %120 = llvm.mlir.addressof @str7 : !llvm.ptr<array<36 x i8>>
        %121 = llvm.getelementptr %120[%c0_i32, %c0_i32] : (!llvm.ptr<array<36 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %122 = llvm.call @getenv(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %122, %20 : !llvm.ptr<ptr<i8>>
        %123 = memref.get_global @_ZZ16writeNStage2DDWTIfEiPT_iiiPKcS3_E4size_0 : memref<1xi64>
        %124 = affine.load %123[0] : memref<1xi64>
        %125 = arith.divui %124, %c4_i64 : i64
        %126 = arith.muli %125, %c4_i64 : i64
        %127 = llvm.load %19 : !llvm.ptr<ptr<i8>>
        %128 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %129 = llvm.getelementptr %128[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %130 = llvm.call @strrchr(%129, %c47_i32) : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
        llvm.store %130, %19 : !llvm.ptr<ptr<i8>>
        %131 = llvm.icmp "ne" %130, %116 : !llvm.ptr<i8>
        %132 = arith.xori %131, %true : i1
        %133 = scf.if %132 -> (!llvm.ptr<i8>) {
          %183 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
          %184 = llvm.getelementptr %183[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %184, %19 : !llvm.ptr<ptr<i8>>
          scf.yield %184 : !llvm.ptr<i8>
        } else {
          scf.yield %130 : !llvm.ptr<i8>
        }
        %134 = llvm.load %18 : !llvm.ptr<ptr<i8>>
        %135 = llvm.mlir.addressof @str8 : !llvm.ptr<array<12 x i8>>
        %136 = llvm.getelementptr %135[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %137 = llvm.call @getenv(%136) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %137, %18 : !llvm.ptr<ptr<i8>>
        %138 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %139 = llvm.load %138 : !llvm.ptr<array<1 x i8>>
        llvm.store %139, %17 : !llvm.ptr<array<1 x i8>>
        %140 = llvm.icmp "ne" %137, %116 : !llvm.ptr<i8>
        %141 = arith.xori %140, %true : i1
        %142 = scf.if %141 -> (!llvm.ptr<i8>) {
          %183 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %184 = llvm.load %183 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %185 = llvm.mlir.addressof @str9 : !llvm.ptr<array<45 x i8>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<array<45 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %187 = llvm.call @fprintf(%184, %186) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
          %188 = llvm.getelementptr %17[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %188, %18 : !llvm.ptr<ptr<i8>>
          scf.yield %188 : !llvm.ptr<i8>
        } else {
          scf.yield %137 : !llvm.ptr<i8>
        }
        %143 = llvm.call @strlen(%133) : (!llvm.ptr<i8>) -> i64
        %144 = llvm.mlir.addressof @str40 : !llvm.ptr<array<4 x i8>>
        %145 = llvm.getelementptr %144[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %146 = llvm.call @strlen(%145) : (!llvm.ptr<i8>) -> i64
        %147 = arith.addi %143, %146 : i64
        %148 = arith.addi %147, %c2_i64 : i64
        %149 = llvm.alloca %148 x i8 : (i64) -> !llvm.ptr<i8>
        %150 = llvm.bitcast %149 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %151 = llvm.getelementptr %150[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %152 = llvm.mlir.addressof @str11 : !llvm.ptr<array<6 x i8>>
        %153 = llvm.getelementptr %152[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %154 = llvm.mlir.addressof @str40 : !llvm.ptr<array<4 x i8>>
        %155 = llvm.getelementptr %154[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %156 = llvm.call @sprintf(%151, %153, %133, %155) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %157 = llvm.call @strlen(%151) : (!llvm.ptr<i8>) -> i64
        %158 = llvm.call @strlen(%115) : (!llvm.ptr<i8>) -> i64
        %159 = arith.addi %157, %158 : i64
        %160 = llvm.call @strlen(%142) : (!llvm.ptr<i8>) -> i64
        %161 = arith.addi %159, %160 : i64
        %162 = arith.addi %161, %c3_i64 : i64
        %163 = llvm.alloca %162 x i8 : (i64) -> !llvm.ptr<i8>
        %164 = llvm.bitcast %163 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %165 = llvm.getelementptr %164[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %166 = llvm.mlir.addressof @str12 : !llvm.ptr<array<9 x i8>>
        %167 = llvm.getelementptr %166[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %168 = llvm.call @sprintf(%165, %167, %115, %142, %151) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %169 = llvm.call @strlen(%115) : (!llvm.ptr<i8>) -> i64
        %170 = llvm.call @strlen(%142) : (!llvm.ptr<i8>) -> i64
        %171 = arith.addi %169, %170 : i64
        %172 = arith.addi %171, %c2_i64 : i64
        %173 = llvm.alloca %172 x i8 : (i64) -> !llvm.ptr<i8>
        %174 = llvm.bitcast %173 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %175 = llvm.getelementptr %174[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %176 = llvm.mlir.addressof @str13 : !llvm.ptr<array<6 x i8>>
        %177 = llvm.getelementptr %176[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %178 = llvm.call @sprintf(%175, %177, %115, %142) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %179 = llvm.mlir.addressof @str14 : !llvm.ptr<array<21 x i8>>
        %180 = llvm.getelementptr %179[%c0_i32, %c0_i32] : (!llvm.ptr<array<21 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %181 = llvm.call @getenv(%180) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        %182 = llvm.icmp "ne" %181, %116 : !llvm.ptr<i8>
        scf.if %182 {
          %183 = llvm.call @mkdir(%175, %c511_i32) : (!llvm.ptr<i8>, i32) -> i32
          %184 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %185 = llvm.load %184 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %186 = llvm.mlir.addressof @str15 : !llvm.ptr<array<55 x i8>>
          %187 = llvm.getelementptr %186[%c0_i32, %c0_i32] : (!llvm.ptr<array<55 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %188 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
          %189 = llvm.getelementptr %188[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %190 = llvm.mlir.addressof @str31 : !llvm.ptr<array<6 x i8>>
          %191 = llvm.getelementptr %190[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %192 = llvm.call @fprintf(%185, %187, %189, %191, %165) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %193 = llvm.load %16 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %194 = llvm.mlir.addressof @str18 : !llvm.ptr<array<3 x i8>>
          %195 = llvm.getelementptr %194[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %196 = llvm.call @fopen(%165, %195) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %196, %16 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %197 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %198 = llvm.icmp "ne" %196, %197 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %199 = arith.xori %198, %true : i1
          scf.if %199 {
            %202 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %203 = llvm.load %202 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %204 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %205 = llvm.getelementptr %204[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %206 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %207 = llvm.load %206 : !llvm.ptr<i32>
            %208 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %209 = llvm.load %208 : !llvm.ptr<i32>
            %210 = call @strerror(%209) : (i32) -> !llvm.ptr<i8>
            %211 = llvm.call @fprintf(%203, %205, %165, %207, %210) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %200 = llvm.call @fwrite(%70, %c4_i64, %125, %196) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          %201 = llvm.call @fclose(%196) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        } else {
          %183 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %184 = llvm.load %183 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %185 = llvm.mlir.addressof @str20 : !llvm.ptr<array<53 x i8>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<array<53 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %187 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
          %188 = llvm.getelementptr %187[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %189 = llvm.mlir.addressof @str31 : !llvm.ptr<array<6 x i8>>
          %190 = llvm.getelementptr %189[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %191 = llvm.call @fprintf(%184, %186, %188, %190, %165) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %192 = llvm.load %15 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %193 = llvm.mlir.addressof @str21 : !llvm.ptr<array<3 x i8>>
          %194 = llvm.getelementptr %193[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %195 = llvm.call @fopen(%165, %194) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %195, %15 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %196 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %197 = llvm.icmp "ne" %195, %196 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %198 = arith.xori %197, %true : i1
          scf.if %198 {
            %222 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %223 = llvm.load %222 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %224 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %225 = llvm.getelementptr %224[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %226 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %227 = llvm.load %226 : !llvm.ptr<i32>
            %228 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %229 = llvm.load %228 : !llvm.ptr<i32>
            %230 = call @strerror(%229) : (i32) -> !llvm.ptr<i8>
            %231 = llvm.call @fprintf(%223, %225, %165, %227, %230) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %199 = llvm.load %14 : !llvm.ptr<ptr<i8>>
          %200 = llvm.call @malloc(%126) : (i64) -> !llvm.ptr<i8>
          llvm.store %200, %14 : !llvm.ptr<ptr<i8>>
          %201 = llvm.call @fread(%200, %c4_i64, %125, %195) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          affine.store %c1_i32, %13[0] : memref<1xi32>
          affine.store %cst, %12[0] : memref<1xf64>
          affine.store %cst, %11[0] : memref<1xf64>
          affine.store %cst, %10[0] : memref<1xf64>
          %202 = "polygeist.pointer2memref"(%200) : (!llvm.ptr<i8>) -> memref<?xf32>
          %203 = "polygeist.memref2pointer"(%64) : (memref<?xf32>) -> !llvm.ptr<f32>
          %204 = llvm.getelementptr %203[%125] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
          %205:2 = scf.while (%arg6 = %202, %arg7 = %64) : (memref<?xf32>, memref<?xf32>) -> (memref<?xf32>, memref<?xf32>) {
            %222 = "polygeist.memref2pointer"(%arg7) : (memref<?xf32>) -> !llvm.ptr<f32>
            %223 = llvm.icmp "ult" %222, %204 : !llvm.ptr<f32>
            scf.condition(%223) %arg6, %arg7 : memref<?xf32>, memref<?xf32>
          } do {
          ^bb0(%arg6: memref<?xf32>, %arg7: memref<?xf32>):  // no predecessors
            %222 = "polygeist.memref2pointer"(%arg7) : (memref<?xf32>) -> !llvm.ptr<f32>
            %223 = affine.load %arg7[0] : memref<?xf32>
            %224 = affine.load %arg6[0] : memref<?xf32>
            %225 = arith.cmpf ueq, %223, %224 : f32
            %226 = scf.if %225 -> (i1) {
              scf.yield %true : i1
            } else {
              %230 = affine.load %arg7[0] : memref<?xf32>
              %231 = affine.load %arg6[0] : memref<?xf32>
              %232 = arith.subf %230, %231 : f32
              %233 = arith.cmpf ugt, %232, %cst_0 : f32
              %234 = scf.if %233 -> (f32) {
                %248 = affine.load %arg7[0] : memref<?xf32>
                %249 = affine.load %arg6[0] : memref<?xf32>
                %250 = arith.subf %248, %249 : f32
                scf.yield %250 : f32
              } else {
                %248 = affine.load %arg7[0] : memref<?xf32>
                %249 = affine.load %arg6[0] : memref<?xf32>
                %250 = arith.subf %248, %249 : f32
                %251 = arith.negf %250 : f32
                scf.yield %251 : f32
              }
              %235 = affine.load %arg7[0] : memref<?xf32>
              %236 = arith.cmpf ugt, %235, %cst_0 : f32
              %237 = scf.if %236 -> (f32) {
                %248 = affine.load %arg7[0] : memref<?xf32>
                scf.yield %248 : f32
              } else {
                %248 = affine.load %arg7[0] : memref<?xf32>
                %249 = arith.negf %248 : f32
                scf.yield %249 : f32
              }
              %238 = affine.load %arg6[0] : memref<?xf32>
              %239 = arith.cmpf ugt, %238, %cst_0 : f32
              %240 = scf.if %239 -> (f32) {
                %248 = affine.load %arg6[0] : memref<?xf32>
                scf.yield %248 : f32
              } else {
                %248 = affine.load %arg6[0] : memref<?xf32>
                %249 = arith.negf %248 : f32
                scf.yield %249 : f32
              }
              %241 = arith.addf %237, %240 : f32
              %242 = arith.cmpf ugt, %241, %cst_3 : f32
              %243 = scf.if %242 -> (f32) {
                scf.yield %cst_3 : f32
              } else {
                %248 = affine.load %arg7[0] : memref<?xf32>
                %249 = arith.cmpf ugt, %248, %cst_0 : f32
                %250 = scf.if %249 -> (f32) {
                  %255 = affine.load %arg7[0] : memref<?xf32>
                  scf.yield %255 : f32
                } else {
                  %255 = affine.load %arg7[0] : memref<?xf32>
                  %256 = arith.negf %255 : f32
                  scf.yield %256 : f32
                }
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = arith.cmpf ugt, %251, %cst_0 : f32
                %253 = scf.if %252 -> (f32) {
                  %255 = affine.load %arg6[0] : memref<?xf32>
                  scf.yield %255 : f32
                } else {
                  %255 = affine.load %arg6[0] : memref<?xf32>
                  %256 = arith.negf %255 : f32
                  scf.yield %256 : f32
                }
                %254 = arith.addf %250, %253 : f32
                scf.yield %254 : f32
              }
              %244 = arith.mulf %cst_2, %243 : f32
              %245 = arith.cmpf ugt, %cst_1, %244 : f32
              %246 = scf.if %245 -> (f32) {
                scf.yield %cst_1 : f32
              } else {
                %248 = affine.load %arg7[0] : memref<?xf32>
                %249 = arith.cmpf ugt, %248, %cst_0 : f32
                %250 = scf.if %249 -> (f32) {
                  %258 = affine.load %arg7[0] : memref<?xf32>
                  scf.yield %258 : f32
                } else {
                  %258 = affine.load %arg7[0] : memref<?xf32>
                  %259 = arith.negf %258 : f32
                  scf.yield %259 : f32
                }
                %251 = affine.load %arg6[0] : memref<?xf32>
                %252 = arith.cmpf ugt, %251, %cst_0 : f32
                %253 = scf.if %252 -> (f32) {
                  %258 = affine.load %arg6[0] : memref<?xf32>
                  scf.yield %258 : f32
                } else {
                  %258 = affine.load %arg6[0] : memref<?xf32>
                  %259 = arith.negf %258 : f32
                  scf.yield %259 : f32
                }
                %254 = arith.addf %250, %253 : f32
                %255 = arith.cmpf ugt, %254, %cst_3 : f32
                %256 = scf.if %255 -> (f32) {
                  scf.yield %cst_3 : f32
                } else {
                  %258 = affine.load %arg7[0] : memref<?xf32>
                  %259 = arith.cmpf ugt, %258, %cst_0 : f32
                  %260 = scf.if %259 -> (f32) {
                    %265 = affine.load %arg7[0] : memref<?xf32>
                    scf.yield %265 : f32
                  } else {
                    %265 = affine.load %arg7[0] : memref<?xf32>
                    %266 = arith.negf %265 : f32
                    scf.yield %266 : f32
                  }
                  %261 = affine.load %arg6[0] : memref<?xf32>
                  %262 = arith.cmpf ugt, %261, %cst_0 : f32
                  %263 = scf.if %262 -> (f32) {
                    %265 = affine.load %arg6[0] : memref<?xf32>
                    scf.yield %265 : f32
                  } else {
                    %265 = affine.load %arg6[0] : memref<?xf32>
                    %266 = arith.negf %265 : f32
                    scf.yield %266 : f32
                  }
                  %264 = arith.addf %260, %263 : f32
                  scf.yield %264 : f32
                }
                %257 = arith.mulf %cst_2, %256 : f32
                scf.yield %257 : f32
              }
              %247 = arith.cmpf ult, %234, %246 : f32
              scf.yield %247 : i1
            }
            %227 = arith.xori %226, %true : i1
            scf.if %227 {
              %230 = affine.load %arg7[0] : memref<?xf32>
              %231 = arith.cmpf ule, %230, %cst_1 : f32
              %232 = scf.if %231 -> (i1) {
                scf.yield %true : i1
              } else {
                %303 = affine.load %arg6[0] : memref<?xf32>
                %304 = arith.cmpf ule, %303, %cst_1 : f32
                scf.yield %304 : i1
              }
              %233 = scf.if %232 -> (f64) {
                scf.yield %cst : f64
              } else {
                %303 = affine.load %arg7[0] : memref<?xf32>
                %304 = affine.load %arg6[0] : memref<?xf32>
                %305 = arith.subf %303, %304 : f32
                %306 = arith.cmpf ugt, %305, %cst_0 : f32
                %307 = scf.if %306 -> (f32) {
                  %318 = affine.load %arg7[0] : memref<?xf32>
                  %319 = affine.load %arg6[0] : memref<?xf32>
                  %320 = arith.subf %318, %319 : f32
                  scf.yield %320 : f32
                } else {
                  %318 = affine.load %arg7[0] : memref<?xf32>
                  %319 = affine.load %arg6[0] : memref<?xf32>
                  %320 = arith.subf %318, %319 : f32
                  %321 = arith.negf %320 : f32
                  scf.yield %321 : f32
                }
                %308 = arith.extf %307 : f32 to f64
                %309 = affine.load %arg7[0] : memref<?xf32>
                %310 = arith.cmpf ugt, %309, %cst_0 : f32
                %311 = scf.if %310 -> (f32) {
                  %318 = affine.load %arg7[0] : memref<?xf32>
                  scf.yield %318 : f32
                } else {
                  %318 = affine.load %arg7[0] : memref<?xf32>
                  %319 = arith.negf %318 : f32
                  scf.yield %319 : f32
                }
                %312 = affine.load %arg6[0] : memref<?xf32>
                %313 = arith.cmpf ugt, %312, %cst_0 : f32
                %314 = scf.if %313 -> (f32) {
                  %318 = affine.load %arg6[0] : memref<?xf32>
                  scf.yield %318 : f32
                } else {
                  %318 = affine.load %arg6[0] : memref<?xf32>
                  %319 = arith.negf %318 : f32
                  scf.yield %319 : f32
                }
                %315 = arith.addf %311, %314 : f32
                %316 = arith.extf %315 : f32 to f64
                %317 = arith.divf %308, %316 : f64
                scf.yield %317 : f64
              }
              affine.store %233, %9[0] : memref<1xf64>
              %234 = affine.load %9[0] : memref<1xf64>
              %235 = affine.load %10[0] : memref<1xf64>
              %236 = arith.cmpf ugt, %234, %235 : f64
              %237 = select %236, %9, %10 : memref<1xf64>
              %238 = affine.load %237[0] : memref<1xf64>
              affine.store %238, %10[0] : memref<1xf64>
              %239 = affine.load %arg7[0] : memref<?xf32>
              %240 = affine.load %arg6[0] : memref<?xf32>
              %241 = arith.subf %239, %240 : f32
              %242 = arith.cmpf ugt, %241, %cst_0 : f32
              %243 = scf.if %242 -> (f32) {
                %303 = affine.load %arg7[0] : memref<?xf32>
                %304 = affine.load %arg6[0] : memref<?xf32>
                %305 = arith.subf %303, %304 : f32
                scf.yield %305 : f32
              } else {
                %303 = affine.load %arg7[0] : memref<?xf32>
                %304 = affine.load %arg6[0] : memref<?xf32>
                %305 = arith.subf %303, %304 : f32
                %306 = arith.negf %305 : f32
                scf.yield %306 : f32
              }
              %244 = arith.extf %243 : f32 to f64
              %245 = affine.load %arg7[0] : memref<?xf32>
              %246 = arith.cmpf ugt, %245, %cst_0 : f32
              %247 = scf.if %246 -> (f32) {
                %303 = affine.load %arg7[0] : memref<?xf32>
                scf.yield %303 : f32
              } else {
                %303 = affine.load %arg7[0] : memref<?xf32>
                %304 = arith.negf %303 : f32
                scf.yield %304 : f32
              }
              %248 = affine.load %arg6[0] : memref<?xf32>
              %249 = arith.cmpf ugt, %248, %cst_0 : f32
              %250 = scf.if %249 -> (f32) {
                %303 = affine.load %arg6[0] : memref<?xf32>
                scf.yield %303 : f32
              } else {
                %303 = affine.load %arg6[0] : memref<?xf32>
                %304 = arith.negf %303 : f32
                scf.yield %304 : f32
              }
              %251 = arith.addf %247, %250 : f32
              %252 = arith.extf %251 : f32 to f64
              %253 = arith.divf %244, %252 : f64
              affine.store %253, %8[0] : memref<1xf64>
              %254 = affine.load %8[0] : memref<1xf64>
              %255 = affine.load %11[0] : memref<1xf64>
              %256 = arith.cmpf ugt, %254, %255 : f64
              %257 = select %256, %8, %11 : memref<1xf64>
              %258 = affine.load %257[0] : memref<1xf64>
              affine.store %258, %11[0] : memref<1xf64>
              %259 = affine.load %arg7[0] : memref<?xf32>
              %260 = affine.load %arg6[0] : memref<?xf32>
              %261 = arith.subf %259, %260 : f32
              %262 = arith.cmpf ugt, %261, %cst_0 : f32
              %263 = scf.if %262 -> (f32) {
                %303 = affine.load %arg7[0] : memref<?xf32>
                %304 = affine.load %arg6[0] : memref<?xf32>
                %305 = arith.subf %303, %304 : f32
                scf.yield %305 : f32
              } else {
                %303 = affine.load %arg7[0] : memref<?xf32>
                %304 = affine.load %arg6[0] : memref<?xf32>
                %305 = arith.subf %303, %304 : f32
                %306 = arith.negf %305 : f32
                scf.yield %306 : f32
              }
              %264 = arith.extf %263 : f32 to f64
              affine.store %264, %7[0] : memref<1xf64>
              %265 = affine.load %7[0] : memref<1xf64>
              %266 = affine.load %12[0] : memref<1xf64>
              %267 = arith.cmpf ugt, %265, %266 : f64
              %268 = select %267, %7, %12 : memref<1xf64>
              %269 = affine.load %268[0] : memref<1xf64>
              affine.store %269, %12[0] : memref<1xf64>
              %270 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %271 = llvm.load %270 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %272 = llvm.mlir.addressof @str22 : !llvm.ptr<array<43 x i8>>
              %273 = llvm.getelementptr %272[%c0_i32, %c0_i32] : (!llvm.ptr<array<43 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %274 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
              %275 = llvm.getelementptr %274[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %276 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
              %277 = llvm.getelementptr %276[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %278 = llvm.mlir.addressof @str40 : !llvm.ptr<array<4 x i8>>
              %279 = llvm.getelementptr %278[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %280 = llvm.ptrtoint %203 : !llvm.ptr<f32> to i64
              %281 = llvm.ptrtoint %222 : !llvm.ptr<f32> to i64
              %282 = arith.subi %281, %280 : i64
              %283 = arith.trunci %282 : i64 to i32
              %284 = llvm.call @fprintf(%271, %273, %275, %277, %279, %283) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32) -> i32
              %285 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %286 = llvm.load %285 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %287 = llvm.mlir.addressof @str32 : !llvm.ptr<array<23 x i8>>
              %288 = llvm.getelementptr %287[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %289 = affine.load %arg7[0] : memref<?xf32>
              %290 = arith.extf %289 : f32 to f64
              %291 = affine.load %arg6[0] : memref<?xf32>
              %292 = arith.extf %291 : f32 to f64
              %293 = llvm.call @fprintf(%286, %288, %290, %292) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64) -> i32
              %294 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %295 = llvm.load %294 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %296 = llvm.mlir.addressof @str24 : !llvm.ptr<array<71 x i8>>
              %297 = llvm.getelementptr %296[%c0_i32, %c0_i32] : (!llvm.ptr<array<71 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %298 = affine.load %8[0] : memref<1xf64>
              %299 = affine.load %9[0] : memref<1xf64>
              %300 = affine.load %7[0] : memref<1xf64>
              %301 = llvm.call @fprintf(%295, %297, %298, %299, %300) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64, f64) -> i32
              affine.store %c0_i32, %13[0] : memref<1xi32>
              %302 = llvm.icmp "ne" %122, %116 : !llvm.ptr<i8>
              scf.if %302 {
                %303 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %304 = llvm.load %303 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %305 = llvm.mlir.addressof @str25 : !llvm.ptr<array<14 x i8>>
                %306 = llvm.getelementptr %305[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %307 = llvm.call @fprintf(%304, %306) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                %308 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %309 = llvm.load %308 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %310 = llvm.mlir.addressof @str26 : !llvm.ptr<array<9 x i8>>
                %311 = llvm.getelementptr %310[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %312 = llvm.call @fprintf(%309, %311) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                call @exit(%c1_i32) : (i32) -> ()
              }
            }
            %228 = "polygeist.subindex"(%arg7, %c1) : (memref<?xf32>, index) -> memref<?xf32>
            %229 = "polygeist.subindex"(%arg6, %c1) : (memref<?xf32>, index) -> memref<?xf32>
            scf.yield %229, %228 : memref<?xf32>, memref<?xf32>
          }
          %206 = llvm.load %6 : !llvm.ptr<ptr<i8>>
          %207 = affine.load %13[0] : memref<1xi32>
          %208 = arith.trunci %207 : i32 to i1
          %209 = scf.if %208 -> (!llvm.ptr<i8>) {
            %222 = llvm.mlir.addressof @str27 : !llvm.ptr<array<5 x i8>>
            %223 = llvm.getelementptr %222[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %223, %6 : !llvm.ptr<ptr<i8>>
            scf.yield %223 : !llvm.ptr<i8>
          } else {
            %222 = llvm.mlir.addressof @str28 : !llvm.ptr<array<5 x i8>>
            %223 = llvm.getelementptr %222[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %223, %6 : !llvm.ptr<ptr<i8>>
            scf.yield %223 : !llvm.ptr<i8>
          }
          %210 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %211 = llvm.load %210 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %212 = llvm.mlir.addressof @str29 : !llvm.ptr<array<146 x i8>>
          %213 = llvm.getelementptr %212[%c0_i32, %c0_i32] : (!llvm.ptr<array<146 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %214 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
          %215 = llvm.getelementptr %214[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %216 = affine.load %12[0] : memref<1xf64>
          %217 = affine.load %11[0] : memref<1xf64>
          %218 = affine.load %10[0] : memref<1xf64>
          %219 = llvm.call @fprintf(%211, %213, %215, %209, %216, %217, %218) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, f64, f64) -> i32
          %220 = llvm.bitcast %200 : !llvm.ptr<i8> to !llvm.ptr<i8>
          llvm.call @free(%220) : (!llvm.ptr<i8>) -> ()
          %221 = llvm.call @fclose(%195) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        }
      }
    }
    %83 = call @cudaGetLastError() : () -> i32
    %84 = arith.cmpi ne, %c0_i32, %83 : i32
    scf.if %84 {
      %113 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %114 = llvm.load %113 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %115 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %117 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %118 = llvm.getelementptr %117[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %119 = llvm.mlir.addressof @str34 : !llvm.ptr<array<23 x i8>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %121 = call @cudaGetErrorString(%83) : (i32) -> !llvm.ptr<i8>
      %122 = llvm.call @fprintf(%114, %116, %118, %c313_i32, %120, %121) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %85 = arith.addi %1, %c-1_i64 : i64
    %86 = llvm.getelementptr %30[%85] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
    %87 = llvm.getelementptr %86[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %88 = llvm.getelementptr %87[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %89 = llvm.load %88 : !llvm.ptr<i32>
    %90 = arith.extui %89 : i32 to i64
    %91 = arith.muli %90, %c4_i64 : i64
    %92 = arith.trunci %91 : i64 to i32
    %93 = llvm.getelementptr %87[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %94:3 = scf.while (%arg6 = %c0_i32) : (i32) -> (i32, !llvm.ptr<i8>, i32) {
      %113 = llvm.load %93 : !llvm.ptr<i32>
      %114 = arith.cmpi ult, %arg6, %113 : i32
      scf.condition(%114) %arg6, %29, %arg3 : i32, !llvm.ptr<i8>, i32
    } do {
    ^bb0(%arg6: i32, %arg7: !llvm.ptr<i8>, %arg8: i32):  // no predecessors
      %113 = arith.index_cast %arg8 : i32 to index
      %114 = arith.index_cast %113 : index to i64
      %115 = arith.index_cast %arg6 : i32 to index
      %116 = arith.index_cast %115 : index to i64
      %117 = arith.addi %114, %c-1_i64 : i64
      %118 = llvm.bitcast %arg7 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %119 = llvm.getelementptr %118[%117] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %121 = arith.muli %116, %3 : i64
      %122 = llvm.getelementptr %71[%121] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %123 = llvm.getelementptr %120[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %124 = llvm.load %123 : !llvm.ptr<i32>
      %125 = arith.index_cast %124 : i32 to index
      %126 = arith.index_cast %125 : index to i64
      %127 = arith.muli %116, %126 : i64
      %128 = llvm.getelementptr %70[%127] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %129 = arith.extsi %92 : i32 to i64
      "llvm.intr.memcpy"(%122, %128, %129, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
      %130 = arith.addi %arg6, %c1_i32 : i32
      scf.yield %130 : i32
    }
    %95 = scf.while (%arg6 = %arg3) : (i32) -> i32 {
      %113 = arith.index_cast %arg6 : i32 to index
      %114 = arith.index_cast %113 : index to i64
      %115 = arith.addi %arg6, %c-1_i32 : i32
      %116 = arith.cmpi uge, %115, %c0_i32 : i32
      %117:2 = scf.if %116 -> (i1, i32) {
        %118 = arith.addi %114, %c-1_i64 : i64
        %119 = llvm.getelementptr %30[%118] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
        %120 = llvm.getelementptr %119[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %121 = llvm.getelementptr %120[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %122 = llvm.load %121 : !llvm.ptr<i32>
        %123 = arith.extui %122 : i32 to i64
        %124 = arith.muli %123, %c4_i64 : i64
        %125 = arith.trunci %124 : i64 to i32
        %126 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %127 = llvm.getelementptr %126[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %128 = llvm.load %127 : !llvm.ptr<i32>
        %129 = arith.index_cast %128 : i32 to index
        %130 = arith.index_cast %129 : index to i64
        %131 = llvm.getelementptr %126[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %132 = llvm.load %131 : !llvm.ptr<i32>
        %133 = arith.index_cast %132 : i32 to index
        %134 = arith.index_cast %133 : index to i64
        %135 = arith.muli %130, %134 : i64
        %136 = llvm.getelementptr %120[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %137:3 = scf.while (%arg7 = %c0_i32) : (i32) -> (i32, !llvm.ptr<i8>, i32) {
          %175 = llvm.load %136 : !llvm.ptr<i32>
          %176 = arith.cmpi ult, %arg7, %175 : i32
          scf.condition(%176) %arg7, %29, %arg6 : i32, !llvm.ptr<i8>, i32
        } do {
        ^bb0(%arg7: i32, %arg8: !llvm.ptr<i8>, %arg9: i32):  // no predecessors
          %175 = arith.index_cast %arg9 : i32 to index
          %176 = arith.index_cast %175 : index to i64
          %177 = arith.index_cast %arg7 : i32 to index
          %178 = arith.index_cast %177 : index to i64
          %179 = arith.addi %176, %c-1_i64 : i64
          %180 = llvm.bitcast %arg8 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %181 = llvm.getelementptr %180[%179] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %182 = llvm.getelementptr %181[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %183 = arith.muli %178, %3 : i64
          %184 = llvm.getelementptr %181[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %185 = llvm.getelementptr %184[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %186 = llvm.load %185 : !llvm.ptr<i32>
          %187 = arith.index_cast %186 : i32 to index
          %188 = arith.index_cast %187 : index to i64
          %189 = arith.addi %188, %183 : i64
          %190 = llvm.getelementptr %71[%189] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %191 = llvm.getelementptr %182[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %192 = llvm.load %191 : !llvm.ptr<i32>
          %193 = arith.index_cast %192 : i32 to index
          %194 = arith.index_cast %193 : index to i64
          %195 = arith.muli %178, %194 : i64
          %196 = arith.addi %195, %135 : i64
          %197 = llvm.getelementptr %70[%196] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %198 = arith.extsi %125 : i32 to i64
          "llvm.intr.memcpy"(%190, %197, %198, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
          %199 = arith.addi %arg7, %c1_i32 : i32
          scf.yield %199 : i32
        }
        %138 = llvm.getelementptr %119[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %139 = llvm.getelementptr %138[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %140 = llvm.load %139 : !llvm.ptr<i32>
        %141 = arith.extui %140 : i32 to i64
        %142 = arith.muli %141, %c4_i64 : i64
        %143 = arith.trunci %142 : i64 to i32
        %144 = llvm.load %121 : !llvm.ptr<i32>
        %145 = arith.index_cast %144 : i32 to index
        %146 = arith.index_cast %145 : index to i64
        %147 = llvm.load %136 : !llvm.ptr<i32>
        %148 = arith.index_cast %147 : i32 to index
        %149 = arith.index_cast %148 : index to i64
        %150 = arith.muli %146, %149 : i64
        %151 = arith.addi %135, %150 : i64
        %152 = llvm.load %131 : !llvm.ptr<i32>
        %153 = arith.index_cast %152 : i32 to index
        %154 = arith.index_cast %153 : index to i64
        %155:3 = scf.while (%arg7 = %c0_i32) : (i32) -> (i32, !llvm.ptr<i8>, i32) {
          %175 = llvm.load %136 : !llvm.ptr<i32>
          %176 = arith.cmpi ult, %arg7, %175 : i32
          scf.condition(%176) %arg7, %29, %arg6 : i32, !llvm.ptr<i8>, i32
        } do {
        ^bb0(%arg7: i32, %arg8: !llvm.ptr<i8>, %arg9: i32):  // no predecessors
          %175 = arith.index_cast %arg9 : i32 to index
          %176 = arith.index_cast %175 : index to i64
          %177 = arith.index_cast %arg7 : i32 to index
          %178 = arith.index_cast %177 : index to i64
          %179 = arith.addi %176, %c-1_i64 : i64
          %180 = llvm.bitcast %arg8 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %181 = llvm.getelementptr %180[%179] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %182 = arith.addi %154, %178 : i64
          %183 = arith.muli %182, %3 : i64
          %184 = llvm.getelementptr %71[%183] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %185 = llvm.getelementptr %181[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %187 = llvm.load %186 : !llvm.ptr<i32>
          %188 = arith.index_cast %187 : i32 to index
          %189 = arith.index_cast %188 : index to i64
          %190 = arith.muli %178, %189 : i64
          %191 = arith.addi %190, %151 : i64
          %192 = llvm.getelementptr %70[%191] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %193 = arith.extsi %143 : i32 to i64
          "llvm.intr.memcpy"(%184, %192, %193, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
          %194 = arith.addi %arg7, %c1_i32 : i32
          scf.yield %194 : i32
        }
        %156 = llvm.getelementptr %119[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %157 = llvm.getelementptr %156[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %158 = llvm.load %157 : !llvm.ptr<i32>
        %159 = arith.extui %158 : i32 to i64
        %160 = arith.muli %159, %c4_i64 : i64
        %161 = arith.trunci %160 : i64 to i32
        %162 = llvm.load %139 : !llvm.ptr<i32>
        %163 = arith.index_cast %162 : i32 to index
        %164 = arith.index_cast %163 : index to i64
        %165 = llvm.getelementptr %138[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %166 = llvm.load %165 : !llvm.ptr<i32>
        %167 = arith.index_cast %166 : i32 to index
        %168 = arith.index_cast %167 : index to i64
        %169 = arith.muli %164, %168 : i64
        %170 = llvm.load %136 : !llvm.ptr<i32>
        %171 = arith.index_cast %170 : i32 to index
        %172 = arith.index_cast %171 : index to i64
        %173 = llvm.getelementptr %156[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %174:4 = scf.while (%arg7 = %c0_i32) : (i32) -> (i1, i32, !llvm.ptr<i8>, i32) {
          %175 = llvm.load %173 : !llvm.ptr<i32>
          %176 = arith.cmpi ult, %arg7, %175 : i32
          %177 = arith.cmpi uge, %arg7, %175 : i32
          scf.condition(%176) %177, %arg7, %29, %arg6 : i1, i32, !llvm.ptr<i8>, i32
        } do {
        ^bb0(%arg7: i1, %arg8: i32, %arg9: !llvm.ptr<i8>, %arg10: i32):  // no predecessors
          %175 = arith.index_cast %arg10 : i32 to index
          %176 = arith.index_cast %175 : index to i64
          %177 = arith.index_cast %arg8 : i32 to index
          %178 = arith.index_cast %177 : index to i64
          %179 = arith.addi %176, %c-1_i64 : i64
          %180 = llvm.bitcast %arg9 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %181 = llvm.getelementptr %180[%179] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %182 = llvm.getelementptr %181[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %183 = arith.addi %172, %178 : i64
          %184 = arith.muli %183, %3 : i64
          %185 = llvm.getelementptr %181[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %187 = llvm.load %186 : !llvm.ptr<i32>
          %188 = arith.index_cast %187 : i32 to index
          %189 = arith.index_cast %188 : index to i64
          %190 = arith.addi %189, %184 : i64
          %191 = llvm.getelementptr %71[%190] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %192 = arith.addi %151, %169 : i64
          %193 = llvm.getelementptr %182[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %194 = llvm.load %193 : !llvm.ptr<i32>
          %195 = arith.index_cast %194 : i32 to index
          %196 = arith.index_cast %195 : index to i64
          %197 = arith.muli %178, %196 : i64
          %198 = arith.addi %197, %192 : i64
          %199 = llvm.getelementptr %70[%198] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %200 = arith.extsi %161 : i32 to i64
          "llvm.intr.memcpy"(%191, %199, %200, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
          %201 = arith.addi %arg8, %c1_i32 : i32
          scf.yield %201 : i32
        }
        scf.yield %174#0, %115 : i1, i32
      } else {
        scf.yield %false, %arg6 : i1, i32
      }
      scf.condition(%117#0) %117#1 : i32
    } do {
    ^bb0(%arg6: i32):  // no predecessors
      scf.yield %arg6 : i32
    }
    call @_Z13samplesToCharPhPfi(%75, %69, %25) : (!llvm.ptr<i8>, memref<?xf32>, i32) -> ()
    %96 = llvm.call @strlen(%arg4) : (!llvm.ptr<i8>) -> i64
    %97 = llvm.call @strlen(%arg5) : (!llvm.ptr<i8>) -> i64
    %98 = arith.addi %96, %97 : i64
    %99 = llvm.alloca %98 x i8 : (i64) -> !llvm.ptr<i8>
    %100 = llvm.bitcast %99 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
    %101 = llvm.getelementptr %100[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %102 = llvm.call @strcpy(%101, %arg4) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %103 = llvm.call @strlen(%arg4) : (!llvm.ptr<i8>) -> i64
    %104 = llvm.getelementptr %101[%103] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %105 = llvm.call @strcpy(%104, %arg5) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %106 = llvm.call @open(%101, %c65_i32, %c420_i32) : (!llvm.ptr<i8>, i32, i32) -> i32
    %107 = arith.cmpi eq, %106, %c-1_i32 : i32
    %108 = arith.cmpi ne, %106, %c-1_i32 : i32
    %109 = scf.if %107 -> (i32) {
      %113 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %114 = llvm.load %113 : !llvm.ptr<i32>
      %115 = llvm.mlir.addressof @str35 : !llvm.ptr<array<17 x i8>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @error(%c0_i32, %114, %116, %101) : (i32, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
      scf.yield %c-1_i32 : i32
    } else {
      scf.yield %4 : i32
    }
    %110 = scf.if %108 -> (i64) {
      %113 = llvm.mlir.addressof @str36 : !llvm.ptr<array<26 x i8>>
      %114 = llvm.getelementptr %113[%c0_i32, %c0_i32] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %115 = llvm.call @printf(%114, %101, %arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, i32) -> i32
      %116 = llvm.bitcast %75 : !llvm.ptr<i8> to !llvm.ptr<i8>
      %117 = call @write(%106, %116, %73) : (i32, !llvm.ptr<i8>, i64) -> i64
      %118 = llvm.call @close(%106) : (i32) -> i32
      memref.dealloc %64 : memref<?xf32>
      %119 = call @cudaGetLastError() : () -> i32
      %120 = arith.cmpi ne, %c0_i32, %119 : i32
      scf.if %120 {
        %122 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %123 = llvm.load %122 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %124 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
        %125 = llvm.getelementptr %124[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %126 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %127 = llvm.getelementptr %126[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %128 = llvm.mlir.addressof @str37 : !llvm.ptr<array<22 x i8>>
        %129 = llvm.getelementptr %128[%c0_i32, %c0_i32] : (!llvm.ptr<array<22 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %130 = call @cudaGetErrorString(%119) : (i32) -> !llvm.ptr<i8>
        %131 = llvm.call @fprintf(%123, %125, %127, %c369_i32, %129, %130) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        call @exit(%c-1_i32) : (i32) -> ()
      }
      memref.dealloc %69 : memref<?xf32>
      llvm.call @free(%116) : (!llvm.ptr<i8>) -> ()
      %121 = llvm.bitcast %30 : !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>> to !llvm.ptr<i8>
      llvm.call @free(%121) : (!llvm.ptr<i8>) -> ()
      scf.yield %117 : i64
    } else {
      scf.yield %5 : i64
    }
    %111:2 = scf.if %108 -> (i1, i32) {
      %113 = arith.cmpi eq, %110, %c0_i64 : i64
      %114 = arith.cmpi ne, %110, %c0_i64 : i64
      %115 = select %113, %c1_i32, %109 : i32
      scf.yield %114, %115 : i1, i32
    } else {
      scf.yield %false, %109 : i1, i32
    }
    %112 = select %111#0, %c0_i32, %111#1 : i32
    return %112 : i32
  }
  func @_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_(%arg0: memref<?xi32>, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: !llvm.ptr<i8>, %arg5: !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %true = arith.constant true
    %c32_i64 = arith.constant 32 : i64
    %c0_i64 = arith.constant 0 : i64
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %c3_i32 = arith.constant 3 : i32
    %c4_i64 = arith.constant 4 : i64
    %c299_i32 = arith.constant 299 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c4 = arith.constant 4 : index
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c47_i32 = arith.constant 47 : i32
    %c2_i64 = arith.constant 2 : i64
    %c3_i64 = arith.constant 3 : i64
    %c511_i32 = arith.constant 511 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %c313_i32 = arith.constant 313 : i32
    %c65_i32 = arith.constant 65 : i32
    %c420_i32 = arith.constant 420 : i32
    %c369_i32 = arith.constant 369 : i32
    %c-1_i64 = arith.constant -1 : i64
    %0 = arith.index_cast %arg3 : i32 to index
    %1 = arith.index_cast %0 : index to i64
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %2 : index to i64
    %4 = llvm.mlir.undef : i32
    %5 = llvm.mlir.undef : i64
    %6 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %7 = memref.alloca() : memref<1xf64>
    %8 = memref.alloca() : memref<1xf64>
    %9 = memref.alloca() : memref<1xf64>
    %10 = memref.alloca() : memref<1xf64>
    %11 = memref.alloca() : memref<1xf64>
    %12 = memref.alloca() : memref<1xf64>
    %13 = memref.alloca() : memref<1xi32>
    affine.store %4, %13[0] : memref<1xi32>
    %14 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %15 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %16 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %17 = llvm.alloca %c1_i64 x !llvm.array<1 x i8> : (i64) -> !llvm.ptr<array<1 x i8>>
    %18 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %20 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %21 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %22 = memref.get_global @"_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIiEiPT_iiiPKcS3_E4done" : memref<1xi32>
    %23 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>> : (i64) -> !llvm.ptr<ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>>
    %24 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %25 = arith.muli %arg1, %arg2 : i32
    %26 = llvm.load %23 : !llvm.ptr<ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>>
    %27 = arith.extui %arg3 : i32 to i64
    %28 = arith.muli %27, %c32_i64 : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
    llvm.store %30, %23 : !llvm.ptr<ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>>
    %31 = llvm.getelementptr %30[%c0_i64] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
    %32 = llvm.getelementptr %31[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %33 = llvm.getelementptr %32[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %34 = arith.remsi %arg1, %c2_i32 : i32
    %35 = arith.cmpi ne, %34, %c0_i32 : i32
    %36 = scf.if %35 -> (i32) {
      %113 = arith.divsi %arg1, %c2_i32 : i32
      %114 = arith.addi %113, %c1_i32 : i32
      scf.yield %114 : i32
    } else {
      %113 = arith.divsi %arg1, %c2_i32 : i32
      scf.yield %113 : i32
    }
    llvm.store %36, %33 : !llvm.ptr<i32>
    %37 = llvm.getelementptr %32[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %38 = arith.remsi %arg2, %c2_i32 : i32
    %39 = arith.cmpi ne, %38, %c0_i32 : i32
    %40 = scf.if %39 -> (i32) {
      %113 = arith.divsi %arg2, %c2_i32 : i32
      %114 = arith.addi %113, %c1_i32 : i32
      scf.yield %114 : i32
    } else {
      %113 = arith.divsi %arg2, %c2_i32 : i32
      scf.yield %113 : i32
    }
    llvm.store %40, %37 : !llvm.ptr<i32>
    %41 = llvm.getelementptr %31[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %42 = llvm.getelementptr %41[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %43 = llvm.load %33 : !llvm.ptr<i32>
    %44 = arith.subi %arg1, %43 : i32
    llvm.store %44, %42 : !llvm.ptr<i32>
    %45 = llvm.getelementptr %41[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %46 = llvm.load %37 : !llvm.ptr<i32>
    llvm.store %46, %45 : !llvm.ptr<i32>
    %47 = llvm.getelementptr %31[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %48 = llvm.getelementptr %47[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %49 = llvm.load %33 : !llvm.ptr<i32>
    llvm.store %49, %48 : !llvm.ptr<i32>
    %50 = llvm.getelementptr %47[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %51 = llvm.load %37 : !llvm.ptr<i32>
    %52 = arith.subi %arg2, %51 : i32
    llvm.store %52, %50 : !llvm.ptr<i32>
    %53 = llvm.getelementptr %31[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %54 = llvm.getelementptr %53[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %55 = llvm.load %42 : !llvm.ptr<i32>
    llvm.store %55, %54 : !llvm.ptr<i32>
    %56 = llvm.getelementptr %53[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %57 = llvm.load %50 : !llvm.ptr<i32>
    llvm.store %57, %56 : !llvm.ptr<i32>
    scf.for %arg6 = %c1 to %0 step %c1 {
      %113 = arith.index_cast %arg6 : index to i64
      %114 = llvm.getelementptr %30[%113] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %115 = llvm.getelementptr %114[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %117 = arith.addi %113, %c-1_i64 : i64
      %118 = llvm.getelementptr %30[%117] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %119 = llvm.getelementptr %118[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %121 = llvm.load %120 : !llvm.ptr<i32>
      %122 = arith.remsi %121, %c2_i32 : i32
      %123 = arith.cmpi ne, %122, %c0_i32 : i32
      %124 = scf.if %123 -> (i32) {
        %150 = llvm.load %120 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        %152 = arith.addi %151, %c1_i32 : i32
        scf.yield %152 : i32
      } else {
        %150 = llvm.load %120 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        scf.yield %151 : i32
      }
      llvm.store %124, %116 : !llvm.ptr<i32>
      %125 = llvm.getelementptr %115[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %126 = llvm.getelementptr %119[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %127 = llvm.load %126 : !llvm.ptr<i32>
      %128 = arith.remsi %127, %c2_i32 : i32
      %129 = arith.cmpi ne, %128, %c0_i32 : i32
      %130 = scf.if %129 -> (i32) {
        %150 = llvm.load %126 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        %152 = arith.addi %151, %c1_i32 : i32
        scf.yield %152 : i32
      } else {
        %150 = llvm.load %126 : !llvm.ptr<i32>
        %151 = arith.divsi %150, %c2_i32 : i32
        scf.yield %151 : i32
      }
      llvm.store %130, %125 : !llvm.ptr<i32>
      %131 = llvm.getelementptr %114[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %132 = llvm.getelementptr %131[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %133 = llvm.load %120 : !llvm.ptr<i32>
      %134 = llvm.load %116 : !llvm.ptr<i32>
      %135 = arith.subi %133, %134 : i32
      llvm.store %135, %132 : !llvm.ptr<i32>
      %136 = llvm.getelementptr %131[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %137 = llvm.load %125 : !llvm.ptr<i32>
      llvm.store %137, %136 : !llvm.ptr<i32>
      %138 = llvm.getelementptr %114[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %139 = llvm.getelementptr %138[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %140 = llvm.load %116 : !llvm.ptr<i32>
      llvm.store %140, %139 : !llvm.ptr<i32>
      %141 = llvm.getelementptr %138[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %142 = llvm.load %126 : !llvm.ptr<i32>
      %143 = llvm.load %125 : !llvm.ptr<i32>
      %144 = arith.subi %142, %143 : i32
      llvm.store %144, %141 : !llvm.ptr<i32>
      %145 = llvm.getelementptr %114[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %146 = llvm.getelementptr %145[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %147 = llvm.load %132 : !llvm.ptr<i32>
      llvm.store %147, %146 : !llvm.ptr<i32>
      %148 = llvm.getelementptr %145[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %149 = llvm.load %141 : !llvm.ptr<i32>
      llvm.store %149, %148 : !llvm.ptr<i32>
    }
    %58 = arith.extui %25 : i32 to i64
    %59 = arith.muli %58, %c4_i64 : i64
    %60 = arith.trunci %59 : i64 to i32
    %61 = arith.extsi %60 : i32 to i64
    %62 = arith.divui %61, %c4_i64 : i64
    %63 = arith.index_cast %62 : i64 to index
    %64 = memref.alloc(%63) : memref<?xi32>
    %65 = call @cudaGetLastError() : () -> i32
    %66 = arith.cmpi ne, %c0_i32, %65 : i32
    scf.if %66 {
      %113 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %114 = llvm.load %113 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %115 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %117 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %118 = llvm.getelementptr %117[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %119 = llvm.mlir.addressof @str4 : !llvm.ptr<array<12 x i8>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %121 = call @cudaGetErrorString(%65) : (i32) -> !llvm.ptr<i8>
      %122 = llvm.call @fprintf(%114, %116, %118, %c299_i32, %120, %121) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %67 = arith.index_cast %60 : i32 to index
    %68 = arith.divui %67, %c4 : index
    %69 = memref.alloc(%68) : memref<?xi32>
    %70 = "polygeist.memref2pointer"(%64) : (memref<?xi32>) -> !llvm.ptr<i8>
    "llvm.intr.memset"(%70, %c0_i8, %61, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %71 = "polygeist.memref2pointer"(%69) : (memref<?xi32>) -> !llvm.ptr<i8>
    "llvm.intr.memset"(%71, %c0_i8, %61, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %72 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %73 = arith.extsi %25 : i32 to i64
    %74 = llvm.call @malloc(%73) : (i64) -> !llvm.ptr<i8>
    %75 = llvm.bitcast %74 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.store %75, %24 : !llvm.ptr<ptr<i8>>
    %76 = "polygeist.memref2pointer"(%arg0) : (memref<?xi32>) -> !llvm.ptr<i8>
    "llvm.intr.memcpy"(%70, %76, %61, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %77 = memref.get_global @"_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_@static@_ZZ16writeNStage2DDWTIiEiPT_iiiPKcS3_E4done@init" : memref<1xi1>
    %78 = affine.load %77[0] : memref<1xi1>
    scf.if %78 {
      affine.store %false, %77[0] : memref<1xi1>
      affine.store %c0_i32, %22[0] : memref<1xi32>
    }
    %79 = affine.load %22[0] : memref<1xi32>
    %80 = arith.trunci %79 : i32 to i1
    %81 = arith.xori %80, %true : i1
    scf.if %80 {
    } else {
      affine.store %c1_i32, %22[0] : memref<1xi32>
    }
    %82 = llvm.load %21 : !llvm.ptr<ptr<i8>>
    scf.if %81 {
      %113 = llvm.mlir.addressof @str5 : !llvm.ptr<array<20 x i8>>
      %114 = llvm.getelementptr %113[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %115 = llvm.call @getenv(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
      llvm.store %115, %21 : !llvm.ptr<ptr<i8>>
      %116 = llvm.mlir.null : !llvm.ptr<i8>
      %117 = llvm.icmp "ne" %115, %116 : !llvm.ptr<i8>
      %118 = scf.if %117 -> (i1) {
        %119 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %121 = llvm.call @strcmp(%115, %120) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %122 = arith.trunci %121 : i32 to i1
        scf.yield %122 : i1
      } else {
        scf.yield %false : i1
      }
      scf.if %118 {
        %119 = llvm.load %20 : !llvm.ptr<ptr<i8>>
        %120 = llvm.mlir.addressof @str7 : !llvm.ptr<array<36 x i8>>
        %121 = llvm.getelementptr %120[%c0_i32, %c0_i32] : (!llvm.ptr<array<36 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %122 = llvm.call @getenv(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %122, %20 : !llvm.ptr<ptr<i8>>
        %123 = memref.get_global @_ZZ16writeNStage2DDWTIiEiPT_iiiPKcS3_E4size : memref<1xi64>
        %124 = affine.load %123[0] : memref<1xi64>
        %125 = arith.divui %124, %c4_i64 : i64
        %126 = arith.muli %125, %c4_i64 : i64
        %127 = llvm.load %19 : !llvm.ptr<ptr<i8>>
        %128 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %129 = llvm.getelementptr %128[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %130 = llvm.call @strrchr(%129, %c47_i32) : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
        llvm.store %130, %19 : !llvm.ptr<ptr<i8>>
        %131 = llvm.icmp "ne" %130, %116 : !llvm.ptr<i8>
        %132 = arith.xori %131, %true : i1
        %133 = scf.if %132 -> (!llvm.ptr<i8>) {
          %183 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
          %184 = llvm.getelementptr %183[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %184, %19 : !llvm.ptr<ptr<i8>>
          scf.yield %184 : !llvm.ptr<i8>
        } else {
          scf.yield %130 : !llvm.ptr<i8>
        }
        %134 = llvm.load %18 : !llvm.ptr<ptr<i8>>
        %135 = llvm.mlir.addressof @str8 : !llvm.ptr<array<12 x i8>>
        %136 = llvm.getelementptr %135[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %137 = llvm.call @getenv(%136) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        llvm.store %137, %18 : !llvm.ptr<ptr<i8>>
        %138 = llvm.mlir.addressof @str6 : !llvm.ptr<array<1 x i8>>
        %139 = llvm.load %138 : !llvm.ptr<array<1 x i8>>
        llvm.store %139, %17 : !llvm.ptr<array<1 x i8>>
        %140 = llvm.icmp "ne" %137, %116 : !llvm.ptr<i8>
        %141 = arith.xori %140, %true : i1
        %142 = scf.if %141 -> (!llvm.ptr<i8>) {
          %183 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %184 = llvm.load %183 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %185 = llvm.mlir.addressof @str9 : !llvm.ptr<array<45 x i8>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<array<45 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %187 = llvm.call @fprintf(%184, %186) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
          %188 = llvm.getelementptr %17[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
          llvm.store %188, %18 : !llvm.ptr<ptr<i8>>
          scf.yield %188 : !llvm.ptr<i8>
        } else {
          scf.yield %137 : !llvm.ptr<i8>
        }
        %143 = llvm.call @strlen(%133) : (!llvm.ptr<i8>) -> i64
        %144 = llvm.mlir.addressof @str38 : !llvm.ptr<array<4 x i8>>
        %145 = llvm.getelementptr %144[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %146 = llvm.call @strlen(%145) : (!llvm.ptr<i8>) -> i64
        %147 = arith.addi %143, %146 : i64
        %148 = arith.addi %147, %c2_i64 : i64
        %149 = llvm.alloca %148 x i8 : (i64) -> !llvm.ptr<i8>
        %150 = llvm.bitcast %149 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %151 = llvm.getelementptr %150[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %152 = llvm.mlir.addressof @str11 : !llvm.ptr<array<6 x i8>>
        %153 = llvm.getelementptr %152[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %154 = llvm.mlir.addressof @str38 : !llvm.ptr<array<4 x i8>>
        %155 = llvm.getelementptr %154[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %156 = llvm.call @sprintf(%151, %153, %133, %155) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %157 = llvm.call @strlen(%151) : (!llvm.ptr<i8>) -> i64
        %158 = llvm.call @strlen(%115) : (!llvm.ptr<i8>) -> i64
        %159 = arith.addi %157, %158 : i64
        %160 = llvm.call @strlen(%142) : (!llvm.ptr<i8>) -> i64
        %161 = arith.addi %159, %160 : i64
        %162 = arith.addi %161, %c3_i64 : i64
        %163 = llvm.alloca %162 x i8 : (i64) -> !llvm.ptr<i8>
        %164 = llvm.bitcast %163 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %165 = llvm.getelementptr %164[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %166 = llvm.mlir.addressof @str12 : !llvm.ptr<array<9 x i8>>
        %167 = llvm.getelementptr %166[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %168 = llvm.call @sprintf(%165, %167, %115, %142, %151) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %169 = llvm.call @strlen(%115) : (!llvm.ptr<i8>) -> i64
        %170 = llvm.call @strlen(%142) : (!llvm.ptr<i8>) -> i64
        %171 = arith.addi %169, %170 : i64
        %172 = arith.addi %171, %c2_i64 : i64
        %173 = llvm.alloca %172 x i8 : (i64) -> !llvm.ptr<i8>
        %174 = llvm.bitcast %173 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
        %175 = llvm.getelementptr %174[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %176 = llvm.mlir.addressof @str13 : !llvm.ptr<array<6 x i8>>
        %177 = llvm.getelementptr %176[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %178 = llvm.call @sprintf(%175, %177, %115, %142) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        %179 = llvm.mlir.addressof @str14 : !llvm.ptr<array<21 x i8>>
        %180 = llvm.getelementptr %179[%c0_i32, %c0_i32] : (!llvm.ptr<array<21 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %181 = llvm.call @getenv(%180) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
        %182 = llvm.icmp "ne" %181, %116 : !llvm.ptr<i8>
        scf.if %182 {
          %183 = llvm.call @mkdir(%175, %c511_i32) : (!llvm.ptr<i8>, i32) -> i32
          %184 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %185 = llvm.load %184 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %186 = llvm.mlir.addressof @str15 : !llvm.ptr<array<55 x i8>>
          %187 = llvm.getelementptr %186[%c0_i32, %c0_i32] : (!llvm.ptr<array<55 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %188 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
          %189 = llvm.getelementptr %188[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %190 = llvm.mlir.addressof @str17 : !llvm.ptr<array<4 x i8>>
          %191 = llvm.getelementptr %190[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %192 = llvm.call @fprintf(%185, %187, %189, %191, %165) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %193 = llvm.load %16 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %194 = llvm.mlir.addressof @str18 : !llvm.ptr<array<3 x i8>>
          %195 = llvm.getelementptr %194[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %196 = llvm.call @fopen(%165, %195) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %196, %16 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %197 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %198 = llvm.icmp "ne" %196, %197 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %199 = arith.xori %198, %true : i1
          scf.if %199 {
            %202 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %203 = llvm.load %202 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %204 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %205 = llvm.getelementptr %204[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %206 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %207 = llvm.load %206 : !llvm.ptr<i32>
            %208 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %209 = llvm.load %208 : !llvm.ptr<i32>
            %210 = call @strerror(%209) : (i32) -> !llvm.ptr<i8>
            %211 = llvm.call @fprintf(%203, %205, %165, %207, %210) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %200 = llvm.call @fwrite(%70, %c4_i64, %125, %196) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          %201 = llvm.call @fclose(%196) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        } else {
          %183 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %184 = llvm.load %183 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %185 = llvm.mlir.addressof @str20 : !llvm.ptr<array<53 x i8>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<array<53 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %187 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
          %188 = llvm.getelementptr %187[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %189 = llvm.mlir.addressof @str17 : !llvm.ptr<array<4 x i8>>
          %190 = llvm.getelementptr %189[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %191 = llvm.call @fprintf(%184, %186, %188, %190, %165) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %192 = llvm.load %15 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %193 = llvm.mlir.addressof @str21 : !llvm.ptr<array<3 x i8>>
          %194 = llvm.getelementptr %193[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %195 = llvm.call @fopen(%165, %194) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          llvm.store %195, %15 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %196 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %197 = llvm.icmp "ne" %195, %196 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
          %198 = arith.xori %197, %true : i1
          scf.if %198 {
            %222 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %223 = llvm.load %222 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %224 = llvm.mlir.addressof @str19 : !llvm.ptr<array<38 x i8>>
            %225 = llvm.getelementptr %224[%c0_i32, %c0_i32] : (!llvm.ptr<array<38 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %226 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %227 = llvm.load %226 : !llvm.ptr<i32>
            %228 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
            %229 = llvm.load %228 : !llvm.ptr<i32>
            %230 = call @strerror(%229) : (i32) -> !llvm.ptr<i8>
            %231 = llvm.call @fprintf(%223, %225, %165, %227, %230) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
            call @exit(%c1_i32) : (i32) -> ()
          }
          %199 = llvm.load %14 : !llvm.ptr<ptr<i8>>
          %200 = llvm.call @malloc(%126) : (i64) -> !llvm.ptr<i8>
          llvm.store %200, %14 : !llvm.ptr<ptr<i8>>
          %201 = llvm.call @fread(%200, %c4_i64, %125, %195) : (!llvm.ptr<i8>, i64, i64, !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
          affine.store %c1_i32, %13[0] : memref<1xi32>
          affine.store %cst, %12[0] : memref<1xf64>
          affine.store %cst, %11[0] : memref<1xf64>
          affine.store %cst, %10[0] : memref<1xf64>
          %202 = "polygeist.pointer2memref"(%200) : (!llvm.ptr<i8>) -> memref<?xi32>
          %203 = "polygeist.memref2pointer"(%64) : (memref<?xi32>) -> !llvm.ptr<i32>
          %204 = llvm.getelementptr %203[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          %205:2 = scf.while (%arg6 = %202, %arg7 = %64) : (memref<?xi32>, memref<?xi32>) -> (memref<?xi32>, memref<?xi32>) {
            %222 = "polygeist.memref2pointer"(%arg7) : (memref<?xi32>) -> !llvm.ptr<i32>
            %223 = llvm.icmp "ult" %222, %204 : !llvm.ptr<i32>
            scf.condition(%223) %arg6, %arg7 : memref<?xi32>, memref<?xi32>
          } do {
          ^bb0(%arg6: memref<?xi32>, %arg7: memref<?xi32>):  // no predecessors
            %222 = "polygeist.memref2pointer"(%arg7) : (memref<?xi32>) -> !llvm.ptr<i32>
            %223 = affine.load %arg7[0] : memref<?xi32>
            %224 = affine.load %arg6[0] : memref<?xi32>
            %225 = arith.cmpi ne, %223, %224 : i32
            scf.if %225 {
              %228 = affine.load %arg7[0] : memref<?xi32>
              %229 = arith.cmpi ule, %228, %c0_i32 : i32
              %230 = scf.if %229 -> (i1) {
                scf.yield %true : i1
              } else {
                %299 = affine.load %arg6[0] : memref<?xi32>
                %300 = arith.cmpi ule, %299, %c0_i32 : i32
                scf.yield %300 : i1
              }
              %231 = scf.if %230 -> (f64) {
                scf.yield %cst : f64
              } else {
                %299 = affine.load %arg7[0] : memref<?xi32>
                %300 = affine.load %arg6[0] : memref<?xi32>
                %301 = arith.subi %299, %300 : i32
                %302 = arith.cmpi ugt, %301, %c0_i32 : i32
                %303 = scf.if %302 -> (i32) {
                  %314 = affine.load %arg7[0] : memref<?xi32>
                  %315 = affine.load %arg6[0] : memref<?xi32>
                  %316 = arith.subi %314, %315 : i32
                  scf.yield %316 : i32
                } else {
                  %314 = affine.load %arg7[0] : memref<?xi32>
                  %315 = affine.load %arg6[0] : memref<?xi32>
                  %316 = arith.subi %314, %315 : i32
                  %317 = arith.subi %c0_i32, %316 : i32
                  scf.yield %317 : i32
                }
                %304 = arith.sitofp %303 : i32 to f64
                %305 = affine.load %arg7[0] : memref<?xi32>
                %306 = arith.cmpi ugt, %305, %c0_i32 : i32
                %307 = scf.if %306 -> (i32) {
                  %314 = affine.load %arg7[0] : memref<?xi32>
                  scf.yield %314 : i32
                } else {
                  %314 = affine.load %arg7[0] : memref<?xi32>
                  %315 = arith.subi %c0_i32, %314 : i32
                  scf.yield %315 : i32
                }
                %308 = affine.load %arg6[0] : memref<?xi32>
                %309 = arith.cmpi ugt, %308, %c0_i32 : i32
                %310 = scf.if %309 -> (i32) {
                  %314 = affine.load %arg6[0] : memref<?xi32>
                  scf.yield %314 : i32
                } else {
                  %314 = affine.load %arg6[0] : memref<?xi32>
                  %315 = arith.subi %c0_i32, %314 : i32
                  scf.yield %315 : i32
                }
                %311 = arith.addi %307, %310 : i32
                %312 = arith.sitofp %311 : i32 to f64
                %313 = arith.divf %304, %312 : f64
                scf.yield %313 : f64
              }
              affine.store %231, %9[0] : memref<1xf64>
              %232 = affine.load %9[0] : memref<1xf64>
              %233 = affine.load %10[0] : memref<1xf64>
              %234 = arith.cmpf ugt, %232, %233 : f64
              %235 = select %234, %9, %10 : memref<1xf64>
              %236 = affine.load %235[0] : memref<1xf64>
              affine.store %236, %10[0] : memref<1xf64>
              %237 = affine.load %arg7[0] : memref<?xi32>
              %238 = affine.load %arg6[0] : memref<?xi32>
              %239 = arith.subi %237, %238 : i32
              %240 = arith.cmpi ugt, %239, %c0_i32 : i32
              %241 = scf.if %240 -> (i32) {
                %299 = affine.load %arg7[0] : memref<?xi32>
                %300 = affine.load %arg6[0] : memref<?xi32>
                %301 = arith.subi %299, %300 : i32
                scf.yield %301 : i32
              } else {
                %299 = affine.load %arg7[0] : memref<?xi32>
                %300 = affine.load %arg6[0] : memref<?xi32>
                %301 = arith.subi %299, %300 : i32
                %302 = arith.subi %c0_i32, %301 : i32
                scf.yield %302 : i32
              }
              %242 = arith.sitofp %241 : i32 to f64
              %243 = affine.load %arg7[0] : memref<?xi32>
              %244 = arith.cmpi ugt, %243, %c0_i32 : i32
              %245 = scf.if %244 -> (i32) {
                %299 = affine.load %arg7[0] : memref<?xi32>
                scf.yield %299 : i32
              } else {
                %299 = affine.load %arg7[0] : memref<?xi32>
                %300 = arith.subi %c0_i32, %299 : i32
                scf.yield %300 : i32
              }
              %246 = affine.load %arg6[0] : memref<?xi32>
              %247 = arith.cmpi ugt, %246, %c0_i32 : i32
              %248 = scf.if %247 -> (i32) {
                %299 = affine.load %arg6[0] : memref<?xi32>
                scf.yield %299 : i32
              } else {
                %299 = affine.load %arg6[0] : memref<?xi32>
                %300 = arith.subi %c0_i32, %299 : i32
                scf.yield %300 : i32
              }
              %249 = arith.addi %245, %248 : i32
              %250 = arith.sitofp %249 : i32 to f64
              %251 = arith.divf %242, %250 : f64
              affine.store %251, %8[0] : memref<1xf64>
              %252 = affine.load %8[0] : memref<1xf64>
              %253 = affine.load %11[0] : memref<1xf64>
              %254 = arith.cmpf ugt, %252, %253 : f64
              %255 = select %254, %8, %11 : memref<1xf64>
              %256 = affine.load %255[0] : memref<1xf64>
              affine.store %256, %11[0] : memref<1xf64>
              %257 = affine.load %arg7[0] : memref<?xi32>
              %258 = affine.load %arg6[0] : memref<?xi32>
              %259 = arith.subi %257, %258 : i32
              %260 = arith.cmpi ugt, %259, %c0_i32 : i32
              %261 = scf.if %260 -> (i32) {
                %299 = affine.load %arg7[0] : memref<?xi32>
                %300 = affine.load %arg6[0] : memref<?xi32>
                %301 = arith.subi %299, %300 : i32
                scf.yield %301 : i32
              } else {
                %299 = affine.load %arg7[0] : memref<?xi32>
                %300 = affine.load %arg6[0] : memref<?xi32>
                %301 = arith.subi %299, %300 : i32
                %302 = arith.subi %c0_i32, %301 : i32
                scf.yield %302 : i32
              }
              %262 = arith.sitofp %261 : i32 to f64
              affine.store %262, %7[0] : memref<1xf64>
              %263 = affine.load %7[0] : memref<1xf64>
              %264 = affine.load %12[0] : memref<1xf64>
              %265 = arith.cmpf ugt, %263, %264 : f64
              %266 = select %265, %7, %12 : memref<1xf64>
              %267 = affine.load %266[0] : memref<1xf64>
              affine.store %267, %12[0] : memref<1xf64>
              %268 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %269 = llvm.load %268 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %270 = llvm.mlir.addressof @str22 : !llvm.ptr<array<43 x i8>>
              %271 = llvm.getelementptr %270[%c0_i32, %c0_i32] : (!llvm.ptr<array<43 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %272 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
              %273 = llvm.getelementptr %272[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %274 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
              %275 = llvm.getelementptr %274[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %276 = llvm.mlir.addressof @str38 : !llvm.ptr<array<4 x i8>>
              %277 = llvm.getelementptr %276[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %278 = llvm.ptrtoint %203 : !llvm.ptr<i32> to i64
              %279 = llvm.ptrtoint %222 : !llvm.ptr<i32> to i64
              %280 = arith.subi %279, %278 : i64
              %281 = arith.trunci %280 : i64 to i32
              %282 = llvm.call @fprintf(%269, %271, %273, %275, %277, %281) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32) -> i32
              %283 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %284 = llvm.load %283 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %285 = llvm.mlir.addressof @str23 : !llvm.ptr<array<19 x i8>>
              %286 = llvm.getelementptr %285[%c0_i32, %c0_i32] : (!llvm.ptr<array<19 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %287 = affine.load %arg7[0] : memref<?xi32>
              %288 = affine.load %arg6[0] : memref<?xi32>
              %289 = llvm.call @fprintf(%284, %286, %287, %288) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, i32, i32) -> i32
              %290 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %291 = llvm.load %290 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %292 = llvm.mlir.addressof @str24 : !llvm.ptr<array<71 x i8>>
              %293 = llvm.getelementptr %292[%c0_i32, %c0_i32] : (!llvm.ptr<array<71 x i8>>, i32, i32) -> !llvm.ptr<i8>
              %294 = affine.load %8[0] : memref<1xf64>
              %295 = affine.load %9[0] : memref<1xf64>
              %296 = affine.load %7[0] : memref<1xf64>
              %297 = llvm.call @fprintf(%291, %293, %294, %295, %296) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64, f64) -> i32
              affine.store %c0_i32, %13[0] : memref<1xi32>
              %298 = llvm.icmp "ne" %122, %116 : !llvm.ptr<i8>
              scf.if %298 {
                %299 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %300 = llvm.load %299 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %301 = llvm.mlir.addressof @str25 : !llvm.ptr<array<14 x i8>>
                %302 = llvm.getelementptr %301[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %303 = llvm.call @fprintf(%300, %302) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                %304 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %305 = llvm.load %304 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %306 = llvm.mlir.addressof @str26 : !llvm.ptr<array<9 x i8>>
                %307 = llvm.getelementptr %306[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %308 = llvm.call @fprintf(%305, %307) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                call @exit(%c1_i32) : (i32) -> ()
              }
            }
            %226 = "polygeist.subindex"(%arg7, %c1) : (memref<?xi32>, index) -> memref<?xi32>
            %227 = "polygeist.subindex"(%arg6, %c1) : (memref<?xi32>, index) -> memref<?xi32>
            scf.yield %227, %226 : memref<?xi32>, memref<?xi32>
          }
          %206 = llvm.load %6 : !llvm.ptr<ptr<i8>>
          %207 = affine.load %13[0] : memref<1xi32>
          %208 = arith.trunci %207 : i32 to i1
          %209 = scf.if %208 -> (!llvm.ptr<i8>) {
            %222 = llvm.mlir.addressof @str27 : !llvm.ptr<array<5 x i8>>
            %223 = llvm.getelementptr %222[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %223, %6 : !llvm.ptr<ptr<i8>>
            scf.yield %223 : !llvm.ptr<i8>
          } else {
            %222 = llvm.mlir.addressof @str28 : !llvm.ptr<array<5 x i8>>
            %223 = llvm.getelementptr %222[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
            llvm.store %223, %6 : !llvm.ptr<ptr<i8>>
            scf.yield %223 : !llvm.ptr<i8>
          }
          %210 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %211 = llvm.load %210 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %212 = llvm.mlir.addressof @str29 : !llvm.ptr<array<146 x i8>>
          %213 = llvm.getelementptr %212[%c0_i32, %c0_i32] : (!llvm.ptr<array<146 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %214 = llvm.mlir.addressof @str39 : !llvm.ptr<array<4 x i8>>
          %215 = llvm.getelementptr %214[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %216 = affine.load %12[0] : memref<1xf64>
          %217 = affine.load %11[0] : memref<1xf64>
          %218 = affine.load %10[0] : memref<1xf64>
          %219 = llvm.call @fprintf(%211, %213, %215, %209, %216, %217, %218) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, f64, f64) -> i32
          %220 = llvm.bitcast %200 : !llvm.ptr<i8> to !llvm.ptr<i8>
          llvm.call @free(%220) : (!llvm.ptr<i8>) -> ()
          %221 = llvm.call @fclose(%195) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
        }
      }
    }
    %83 = call @cudaGetLastError() : () -> i32
    %84 = arith.cmpi ne, %c0_i32, %83 : i32
    scf.if %84 {
      %113 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %114 = llvm.load %113 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %115 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %117 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
      %118 = llvm.getelementptr %117[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %119 = llvm.mlir.addressof @str34 : !llvm.ptr<array<23 x i8>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %121 = call @cudaGetErrorString(%83) : (i32) -> !llvm.ptr<i8>
      %122 = llvm.call @fprintf(%114, %116, %118, %c313_i32, %120, %121) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %85 = arith.addi %1, %c-1_i64 : i64
    %86 = llvm.getelementptr %30[%85] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
    %87 = llvm.getelementptr %86[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
    %88 = llvm.getelementptr %87[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %89 = llvm.load %88 : !llvm.ptr<i32>
    %90 = arith.extui %89 : i32 to i64
    %91 = arith.muli %90, %c4_i64 : i64
    %92 = arith.trunci %91 : i64 to i32
    %93 = llvm.getelementptr %87[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
    %94:3 = scf.while (%arg6 = %c0_i32) : (i32) -> (i32, !llvm.ptr<i8>, i32) {
      %113 = llvm.load %93 : !llvm.ptr<i32>
      %114 = arith.cmpi ult, %arg6, %113 : i32
      scf.condition(%114) %arg6, %29, %arg3 : i32, !llvm.ptr<i8>, i32
    } do {
    ^bb0(%arg6: i32, %arg7: !llvm.ptr<i8>, %arg8: i32):  // no predecessors
      %113 = arith.index_cast %arg8 : i32 to index
      %114 = arith.index_cast %113 : index to i64
      %115 = arith.index_cast %arg6 : i32 to index
      %116 = arith.index_cast %115 : index to i64
      %117 = arith.addi %114, %c-1_i64 : i64
      %118 = llvm.bitcast %arg7 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %119 = llvm.getelementptr %118[%117] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
      %120 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %121 = arith.muli %116, %3 : i64
      %122 = llvm.getelementptr %71[%121] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %123 = llvm.getelementptr %120[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
      %124 = llvm.load %123 : !llvm.ptr<i32>
      %125 = arith.index_cast %124 : i32 to index
      %126 = arith.index_cast %125 : index to i64
      %127 = arith.muli %116, %126 : i64
      %128 = llvm.getelementptr %70[%127] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %129 = arith.extsi %92 : i32 to i64
      "llvm.intr.memcpy"(%122, %128, %129, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
      %130 = arith.addi %arg6, %c1_i32 : i32
      scf.yield %130 : i32
    }
    %95 = scf.while (%arg6 = %arg3) : (i32) -> i32 {
      %113 = arith.index_cast %arg6 : i32 to index
      %114 = arith.index_cast %113 : index to i64
      %115 = arith.addi %arg6, %c-1_i32 : i32
      %116 = arith.cmpi uge, %115, %c0_i32 : i32
      %117:2 = scf.if %116 -> (i1, i32) {
        %118 = arith.addi %114, %c-1_i64 : i64
        %119 = llvm.getelementptr %30[%118] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
        %120 = llvm.getelementptr %119[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %121 = llvm.getelementptr %120[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %122 = llvm.load %121 : !llvm.ptr<i32>
        %123 = arith.extui %122 : i32 to i64
        %124 = arith.muli %123, %c4_i64 : i64
        %125 = arith.trunci %124 : i64 to i32
        %126 = llvm.getelementptr %119[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %127 = llvm.getelementptr %126[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %128 = llvm.load %127 : !llvm.ptr<i32>
        %129 = arith.index_cast %128 : i32 to index
        %130 = arith.index_cast %129 : index to i64
        %131 = llvm.getelementptr %126[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %132 = llvm.load %131 : !llvm.ptr<i32>
        %133 = arith.index_cast %132 : i32 to index
        %134 = arith.index_cast %133 : index to i64
        %135 = arith.muli %130, %134 : i64
        %136 = llvm.getelementptr %120[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %137:3 = scf.while (%arg7 = %c0_i32) : (i32) -> (i32, !llvm.ptr<i8>, i32) {
          %175 = llvm.load %136 : !llvm.ptr<i32>
          %176 = arith.cmpi ult, %arg7, %175 : i32
          scf.condition(%176) %arg7, %29, %arg6 : i32, !llvm.ptr<i8>, i32
        } do {
        ^bb0(%arg7: i32, %arg8: !llvm.ptr<i8>, %arg9: i32):  // no predecessors
          %175 = arith.index_cast %arg9 : i32 to index
          %176 = arith.index_cast %175 : index to i64
          %177 = arith.index_cast %arg7 : i32 to index
          %178 = arith.index_cast %177 : index to i64
          %179 = arith.addi %176, %c-1_i64 : i64
          %180 = llvm.bitcast %arg8 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %181 = llvm.getelementptr %180[%179] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %182 = llvm.getelementptr %181[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %183 = arith.muli %178, %3 : i64
          %184 = llvm.getelementptr %181[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %185 = llvm.getelementptr %184[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %186 = llvm.load %185 : !llvm.ptr<i32>
          %187 = arith.index_cast %186 : i32 to index
          %188 = arith.index_cast %187 : index to i64
          %189 = arith.addi %188, %183 : i64
          %190 = llvm.getelementptr %71[%189] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %191 = llvm.getelementptr %182[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %192 = llvm.load %191 : !llvm.ptr<i32>
          %193 = arith.index_cast %192 : i32 to index
          %194 = arith.index_cast %193 : index to i64
          %195 = arith.muli %178, %194 : i64
          %196 = arith.addi %195, %135 : i64
          %197 = llvm.getelementptr %70[%196] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %198 = arith.extsi %125 : i32 to i64
          "llvm.intr.memcpy"(%190, %197, %198, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
          %199 = arith.addi %arg7, %c1_i32 : i32
          scf.yield %199 : i32
        }
        %138 = llvm.getelementptr %119[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %139 = llvm.getelementptr %138[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %140 = llvm.load %139 : !llvm.ptr<i32>
        %141 = arith.extui %140 : i32 to i64
        %142 = arith.muli %141, %c4_i64 : i64
        %143 = arith.trunci %142 : i64 to i32
        %144 = llvm.load %121 : !llvm.ptr<i32>
        %145 = arith.index_cast %144 : i32 to index
        %146 = arith.index_cast %145 : index to i64
        %147 = llvm.load %136 : !llvm.ptr<i32>
        %148 = arith.index_cast %147 : i32 to index
        %149 = arith.index_cast %148 : index to i64
        %150 = arith.muli %146, %149 : i64
        %151 = arith.addi %135, %150 : i64
        %152 = llvm.load %131 : !llvm.ptr<i32>
        %153 = arith.index_cast %152 : i32 to index
        %154 = arith.index_cast %153 : index to i64
        %155:3 = scf.while (%arg7 = %c0_i32) : (i32) -> (i32, !llvm.ptr<i8>, i32) {
          %175 = llvm.load %136 : !llvm.ptr<i32>
          %176 = arith.cmpi ult, %arg7, %175 : i32
          scf.condition(%176) %arg7, %29, %arg6 : i32, !llvm.ptr<i8>, i32
        } do {
        ^bb0(%arg7: i32, %arg8: !llvm.ptr<i8>, %arg9: i32):  // no predecessors
          %175 = arith.index_cast %arg9 : i32 to index
          %176 = arith.index_cast %175 : index to i64
          %177 = arith.index_cast %arg7 : i32 to index
          %178 = arith.index_cast %177 : index to i64
          %179 = arith.addi %176, %c-1_i64 : i64
          %180 = llvm.bitcast %arg8 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %181 = llvm.getelementptr %180[%179] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %182 = arith.addi %154, %178 : i64
          %183 = arith.muli %182, %3 : i64
          %184 = llvm.getelementptr %71[%183] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %185 = llvm.getelementptr %181[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %187 = llvm.load %186 : !llvm.ptr<i32>
          %188 = arith.index_cast %187 : i32 to index
          %189 = arith.index_cast %188 : index to i64
          %190 = arith.muli %178, %189 : i64
          %191 = arith.addi %190, %151 : i64
          %192 = llvm.getelementptr %70[%191] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %193 = arith.extsi %143 : i32 to i64
          "llvm.intr.memcpy"(%184, %192, %193, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
          %194 = arith.addi %arg7, %c1_i32 : i32
          scf.yield %194 : i32
        }
        %156 = llvm.getelementptr %119[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
        %157 = llvm.getelementptr %156[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %158 = llvm.load %157 : !llvm.ptr<i32>
        %159 = arith.extui %158 : i32 to i64
        %160 = arith.muli %159, %c4_i64 : i64
        %161 = arith.trunci %160 : i64 to i32
        %162 = llvm.load %139 : !llvm.ptr<i32>
        %163 = arith.index_cast %162 : i32 to index
        %164 = arith.index_cast %163 : index to i64
        %165 = llvm.getelementptr %138[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %166 = llvm.load %165 : !llvm.ptr<i32>
        %167 = arith.index_cast %166 : i32 to index
        %168 = arith.index_cast %167 : index to i64
        %169 = arith.muli %164, %168 : i64
        %170 = llvm.load %136 : !llvm.ptr<i32>
        %171 = arith.index_cast %170 : i32 to index
        %172 = arith.index_cast %171 : index to i64
        %173 = llvm.getelementptr %156[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
        %174:4 = scf.while (%arg7 = %c0_i32) : (i32) -> (i1, i32, !llvm.ptr<i8>, i32) {
          %175 = llvm.load %173 : !llvm.ptr<i32>
          %176 = arith.cmpi ult, %arg7, %175 : i32
          %177 = arith.cmpi uge, %arg7, %175 : i32
          scf.condition(%176) %177, %arg7, %29, %arg6 : i1, i32, !llvm.ptr<i8>, i32
        } do {
        ^bb0(%arg7: i1, %arg8: i32, %arg9: !llvm.ptr<i8>, %arg10: i32):  // no predecessors
          %175 = arith.index_cast %arg10 : i32 to index
          %176 = arith.index_cast %175 : index to i64
          %177 = arith.index_cast %arg8 : i32 to index
          %178 = arith.index_cast %177 : index to i64
          %179 = arith.addi %176, %c-1_i64 : i64
          %180 = llvm.bitcast %arg9 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %181 = llvm.getelementptr %180[%179] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>
          %182 = llvm.getelementptr %181[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %183 = arith.addi %172, %178 : i64
          %184 = arith.muli %183, %3 : i64
          %185 = llvm.getelementptr %181[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>>, i32, i32) -> !llvm.ptr<struct<(i32, i32)>>
          %186 = llvm.getelementptr %185[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %187 = llvm.load %186 : !llvm.ptr<i32>
          %188 = arith.index_cast %187 : i32 to index
          %189 = arith.index_cast %188 : index to i64
          %190 = arith.addi %189, %184 : i64
          %191 = llvm.getelementptr %71[%190] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %192 = arith.addi %151, %169 : i64
          %193 = llvm.getelementptr %182[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          %194 = llvm.load %193 : !llvm.ptr<i32>
          %195 = arith.index_cast %194 : i32 to index
          %196 = arith.index_cast %195 : index to i64
          %197 = arith.muli %178, %196 : i64
          %198 = arith.addi %197, %192 : i64
          %199 = llvm.getelementptr %70[%198] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
          %200 = arith.extsi %161 : i32 to i64
          "llvm.intr.memcpy"(%191, %199, %200, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
          %201 = arith.addi %arg8, %c1_i32 : i32
          scf.yield %201 : i32
        }
        scf.yield %174#0, %115 : i1, i32
      } else {
        scf.yield %false, %arg6 : i1, i32
      }
      scf.condition(%117#0) %117#1 : i32
    } do {
    ^bb0(%arg6: i32):  // no predecessors
      scf.yield %arg6 : i32
    }
    call @_Z13samplesToCharPhPii(%75, %69, %25) : (!llvm.ptr<i8>, memref<?xi32>, i32) -> ()
    %96 = llvm.call @strlen(%arg4) : (!llvm.ptr<i8>) -> i64
    %97 = llvm.call @strlen(%arg5) : (!llvm.ptr<i8>) -> i64
    %98 = arith.addi %96, %97 : i64
    %99 = llvm.alloca %98 x i8 : (i64) -> !llvm.ptr<i8>
    %100 = llvm.bitcast %99 : !llvm.ptr<i8> to !llvm.ptr<array<0 x i8>>
    %101 = llvm.getelementptr %100[%c0_i32, %c0_i32] : (!llvm.ptr<array<0 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %102 = llvm.call @strcpy(%101, %arg4) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %103 = llvm.call @strlen(%arg4) : (!llvm.ptr<i8>) -> i64
    %104 = llvm.getelementptr %101[%103] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %105 = llvm.call @strcpy(%104, %arg5) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<i8>
    %106 = llvm.call @open(%101, %c65_i32, %c420_i32) : (!llvm.ptr<i8>, i32, i32) -> i32
    %107 = arith.cmpi eq, %106, %c-1_i32 : i32
    %108 = arith.cmpi ne, %106, %c-1_i32 : i32
    %109 = scf.if %107 -> (i32) {
      %113 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %114 = llvm.load %113 : !llvm.ptr<i32>
      %115 = llvm.mlir.addressof @str35 : !llvm.ptr<array<17 x i8>>
      %116 = llvm.getelementptr %115[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @error(%c0_i32, %114, %116, %101) : (i32, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
      scf.yield %c-1_i32 : i32
    } else {
      scf.yield %4 : i32
    }
    %110 = scf.if %108 -> (i64) {
      %113 = llvm.mlir.addressof @str36 : !llvm.ptr<array<26 x i8>>
      %114 = llvm.getelementptr %113[%c0_i32, %c0_i32] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %115 = llvm.call @printf(%114, %101, %arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, i32) -> i32
      %116 = llvm.bitcast %75 : !llvm.ptr<i8> to !llvm.ptr<i8>
      %117 = call @write(%106, %116, %73) : (i32, !llvm.ptr<i8>, i64) -> i64
      %118 = llvm.call @close(%106) : (i32) -> i32
      memref.dealloc %64 : memref<?xi32>
      %119 = call @cudaGetLastError() : () -> i32
      %120 = arith.cmpi ne, %c0_i32, %119 : i32
      scf.if %120 {
        %122 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %123 = llvm.load %122 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %124 = llvm.mlir.addressof @str1 : !llvm.ptr<array<17 x i8>>
        %125 = llvm.getelementptr %124[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %126 = llvm.mlir.addressof @str2 : !llvm.ptr<array<7 x i8>>
        %127 = llvm.getelementptr %126[%c0_i32, %c0_i32] : (!llvm.ptr<array<7 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %128 = llvm.mlir.addressof @str37 : !llvm.ptr<array<22 x i8>>
        %129 = llvm.getelementptr %128[%c0_i32, %c0_i32] : (!llvm.ptr<array<22 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %130 = call @cudaGetErrorString(%119) : (i32) -> !llvm.ptr<i8>
        %131 = llvm.call @fprintf(%123, %125, %127, %c369_i32, %129, %130) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
        call @exit(%c-1_i32) : (i32) -> ()
      }
      memref.dealloc %69 : memref<?xi32>
      llvm.call @free(%116) : (!llvm.ptr<i8>) -> ()
      %121 = llvm.bitcast %30 : !llvm.ptr<struct<(struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>, struct<(i32, i32)>)>> to !llvm.ptr<i8>
      llvm.call @free(%121) : (!llvm.ptr<i8>) -> ()
      scf.yield %117 : i64
    } else {
      scf.yield %5 : i64
    }
    %111:2 = scf.if %108 -> (i1, i32) {
      %113 = arith.cmpi eq, %110, %c0_i64 : i64
      %114 = arith.cmpi ne, %110, %c0_i64 : i64
      %115 = select %113, %c1_i32, %109 : i32
      scf.yield %114, %115 : i1, i32
    } else {
      scf.yield %false, %109 : i1, i32
    }
    %112 = select %111#0, %c0_i32, %111#1 : i32
    return %112 : i32
  }
}
