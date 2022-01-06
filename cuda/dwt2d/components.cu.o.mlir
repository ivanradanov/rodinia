module attributes {llvm.data_layout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64", llvm.target_triple = "nvptx64-nvidia-cuda"}  {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str23("void bwToComponent(T *, unsigned char *, int, int) [T = int]\00")
  llvm.mlir.global internal constant @str22("CopySrcToComponent kernel\00")
  llvm.mlir.global internal constant @str21("c_CopySrcToComponent\00")
  llvm.mlir.global internal constant @str20("void bwToComponent(T *, unsigned char *, int, int) [T = float]\00")
  llvm.mlir.global internal constant @str19("alignedSize%(THREADS) == 0\00")
  llvm.mlir.global internal constant @str18("void rgbToComponents(T *, T *, T *, unsigned char *, int, int) [T = int]\00")
  llvm.func @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
  llvm.mlir.global internal constant @str17("%s, %s, %.17g, %s, %s, %d,\0A\00")
  llvm.mlir.global internal constant @str16("polygeist\00")
  llvm.mlir.global internal constant @str15("HOSTNAME\00")
  llvm.func @__errno_location() -> !llvm.ptr<i32>
  llvm.mlir.global internal constant @str14("Could not open timing file %s, errno %d, %s\0A\00")
  llvm.func @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str13("a\00")
  llvm.mlir.global external @stdout() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str12("-\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  llvm.mlir.global internal constant @str11("\00")
  llvm.func @getenv(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str10("MY_TIMING_FILE\00")
  llvm.mlir.global internal constant @str9("Free memory\00")
  llvm.func @cudaFree(!llvm.ptr<i8>) -> i32
  llvm.mlir.global internal constant @str8("CopySrcToComponents kernel\00")
  llvm.mlir.global internal constant @str7("c_CopySrcToComponents\00")
  llvm.mlir.global internal constant @str6("dwt2d\00")
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
  llvm.func @__assert_fail(!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @str5("void rgbToComponents(T *, T *, T *, unsigned char *, int, int) [T = float]\00")
  llvm.mlir.global internal constant @str4("alignedSize%(THREADS*3) == 0\00")
  llvm.mlir.global internal constant @str3("Copy data to device\00")
  llvm.func @cudaMemcpy(!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i32) -> i32
  llvm.func @cudaMemset(!llvm.ptr<i8>, i32, i64) -> i32
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("Cuda malloc\00")
  llvm.mlir.global internal constant @str1("components.cu\00")
  llvm.mlir.global internal constant @str0("%s: %i: %s: %s.\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @cudaMalloc(!llvm.ptr<ptr<i8>>, i64) -> i32
  func @_Z15rgbToComponentsIfEvPT_S1_S1_Phii(%arg0: memref<?xf32>, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: !llvm.ptr<i8>, %arg4: i32, %arg5: i32) attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %cst = arith.constant 2.550000e+02 : f32
    %cst_0 = arith.constant 5.000000e-01 : f32
    %c4_i32 = arith.constant 4 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0_i8 = arith.constant 0 : i8
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %c256_i32 = arith.constant 256 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c3_i32 = arith.constant 3 : i32
    %c141_i32 = arith.constant 141 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c146_i32 = arith.constant 146 : i32
    %c768_i32 = arith.constant 768 : i32
    %c151_i32 = arith.constant 151 : i32
    %cst_1 = arith.constant 1.000000e-09 : f64
    %c155_i32 = arith.constant 155 : i32
    %c159_i32 = arith.constant 159 : i32
    %c256 = arith.constant 256 : index
    %c3_i64 = arith.constant 3 : i64
    %c2_i64 = arith.constant 2 : i64
    %0 = memref.alloca() : memref<1x2xi64>
    %1 = memref.alloca() : memref<1x2xi64>
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %3 = arith.muli %arg4, %arg5 : i32
    %4 = arith.remsi %3, %c256_i32 : i32
    %5 = arith.cmpi ne, %4, %c0_i32 : i32
    %6 = scf.if %5 -> (i32) {
      %55 = arith.divsi %3, %c256_i32 : i32
      %56 = arith.addi %55, %c1_i32 : i32
      scf.yield %56 : i32
    } else {
      %55 = arith.divsi %3, %c256_i32 : i32
      scf.yield %55 : i32
    }
    %7 = arith.muli %6, %c256_i32 : i32
    %8 = arith.muli %7, %c3_i32 : i32
    %9 = llvm.bitcast %2 : !llvm.ptr<ptr<i8>> to !llvm.ptr<ptr<i8>>
    %10 = arith.extsi %8 : i32 to i64
    %11 = llvm.call @malloc(%10) : (i64) -> !llvm.ptr<i8>
    llvm.store %11, %9 : !llvm.ptr<ptr<i8>>
    %12 = call @cudaGetLastError() : () -> i32
    %13 = arith.cmpi ne, %c0_i32, %12 : i32
    scf.if %13 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str2 : !llvm.ptr<array<12 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%12) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c141_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %14 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %15 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<i8> to !llvm.ptr<i8>
    "llvm.intr.memset"(%16, %c0_i8, %10, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %17 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %18 = llvm.bitcast %17 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %19 = llvm.bitcast %arg3 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %20 = arith.muli %3, %c3_i32 : i32
    %21 = arith.extsi %20 : i32 to i64
    "llvm.intr.memcpy"(%18, %19, %21, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %22 = call @cudaGetLastError() : () -> i32
    %23 = arith.cmpi ne, %c0_i32, %22 : i32
    scf.if %23 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str3 : !llvm.ptr<array<20 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%22) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c146_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %24 = arith.divsi %8, %c768_i32 : i32
    %25 = arith.remsi %8, %c768_i32 : i32
    %26 = arith.cmpi eq, %25, %c0_i32 : i32
    scf.if %26 {
    } else {
      %55 = llvm.mlir.addressof @str4 : !llvm.ptr<array<29 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<29 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str5 : !llvm.ptr<array<75 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<75 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%56, %58, %c151_i32, %60) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %27 = call @cudaDeviceSynchronize() : () -> i32
    %28 = "polygeist.memref2pointer"(%1) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %29 = llvm.call @clock_gettime(%c1_i32, %28) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %30 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %31 = arith.index_cast %24 : i32 to index
    scf.parallel (%arg6) = (%c0) to (%31) step (%c1) {
      %55 = arith.index_cast %arg6 : index to i32
      %56 = llvm.alloca %c1_i64 x !llvm.array<768 x i8> : (i64) -> !llvm.ptr<array<768 x i8>>
      %57 = llvm.addrspacecast %56 : !llvm.ptr<array<768 x i8>> to !llvm.ptr<array<768 x i8>, 5>
      %58 = memref.alloc() : memref<256xindex>
      %59 = memref.alloc() : memref<256xi32>
      %60 = memref.alloc() : memref<256xi64>
      %61 = memref.alloc() : memref<256xi32>
      scf.parallel (%arg7) = (%c0) to (%c256) step (%c1) {
        %62 = arith.index_cast %arg7 : index to i32
        memref.store %62, %61[%arg7] : memref<256xi32>
        %63 = arith.index_cast %arg7 : index to i64
        memref.store %63, %60[%arg7] : memref<256xi64>
        %64 = arith.muli %55, %c256_i32 : i32
        memref.store %64, %59[%arg7] : memref<256xi32>
        %65 = arith.muli %arg6, %c256 : index
        memref.store %65, %58[%arg7] : memref<256xindex>
        %66 = arith.muli %62, %c4_i32 : i32
        %67 = arith.cmpi ult, %66, %c768_i32 : i32
        scf.if %67 {
          %68 = arith.muli %64, %c3_i32 : i32
          %69 = arith.shrsi %68, %c2_i32 : i32
          %70 = arith.addi %69, %62 : i32
          %71 = llvm.bitcast %30 : !llvm.ptr<i8> to !llvm.ptr<f32>
          %72 = llvm.getelementptr %71[%70] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
          %73 = llvm.load %72 : !llvm.ptr<f32>
          %74 = llvm.bitcast %57 : !llvm.ptr<array<768 x i8>, 5> to !llvm.ptr<f32, 5>
          %75 = llvm.getelementptr %74[%62] : (!llvm.ptr<f32, 5>, i32) -> !llvm.ptr<f32, 5>
          llvm.store %73, %75 : !llvm.ptr<f32, 5>
        }
        scf.yield
      }
      scf.parallel (%arg7) = (%c0) to (%c256) step (%c1) {
        %62 = memref.load %60[%arg7] : memref<256xi64>
        %63 = arith.muli %62, %c3_i64 : i64
        %64 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<768 x i8>, 5>, i32, i32) -> !llvm.ptr<i8, 5>
        %65 = llvm.getelementptr %64[%63] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %66 = llvm.load %65 : !llvm.ptr<i8, 5>
        %67 = arith.uitofp %66 : i8 to f32
        %68 = arith.addi %63, %c1_i64 : i64
        %69 = llvm.getelementptr %64[%68] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %70 = llvm.load %69 : !llvm.ptr<i8, 5>
        %71 = arith.uitofp %70 : i8 to f32
        %72 = arith.addi %63, %c2_i64 : i64
        %73 = llvm.getelementptr %64[%72] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %74 = llvm.load %73 : !llvm.ptr<i8, 5>
        %75 = arith.uitofp %74 : i8 to f32
        %76 = memref.load %59[%arg7] : memref<256xi32>
        %77 = memref.load %61[%arg7] : memref<256xi32>
        %78 = arith.addi %76, %77 : i32
        %79 = arith.cmpi ult, %78, %3 : i32
        scf.if %79 {
          %80 = memref.load %58[%arg7] : memref<256xindex>
          %81 = arith.addi %80, %arg7 : index
          %82 = arith.divf %67, %cst : f32
          %83 = arith.subf %82, %cst_0 : f32
          memref.store %83, %arg0[%81] : memref<?xf32>
          %84 = arith.divf %71, %cst : f32
          %85 = arith.subf %84, %cst_0 : f32
          memref.store %85, %arg1[%81] : memref<?xf32>
          %86 = arith.divf %75, %cst : f32
          %87 = arith.subf %86, %cst_0 : f32
          memref.store %87, %arg2[%81] : memref<?xf32>
        }
        scf.yield
      }
      memref.dealloc %58 : memref<256xindex>
      memref.dealloc %59 : memref<256xi32>
      memref.dealloc %60 : memref<256xi64>
      memref.dealloc %61 : memref<256xi32>
      scf.yield
    }
    %32 = call @cudaDeviceSynchronize() : () -> i32
    %33 = "polygeist.memref2pointer"(%0) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %34 = llvm.call @clock_gettime(%c1_i32, %33) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %35 = affine.load %0[0, 0] : memref<1x2xi64>
    %36 = affine.load %1[0, 0] : memref<1x2xi64>
    %37 = arith.subi %35, %36 : i64
    %38 = affine.load %0[0, 1] : memref<1x2xi64>
    %39 = affine.load %1[0, 1] : memref<1x2xi64>
    %40 = arith.subi %38, %39 : i64
    %41 = arith.sitofp %37 : i64 to f64
    %42 = arith.sitofp %40 : i64 to f64
    %43 = arith.mulf %42, %cst_1 : f64
    %44 = arith.addf %41, %43 : f64
    %45 = llvm.mlir.addressof @str6 : !llvm.ptr<array<6 x i8>>
    %46 = llvm.getelementptr %45[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @str7 : !llvm.ptr<array<22 x i8>>
    %48 = llvm.getelementptr %47[%c0_i32, %c0_i32] : (!llvm.ptr<array<22 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%46, %48, %44) : (!llvm.ptr<i8>, !llvm.ptr<i8>, f64) -> ()
    %49 = call @cudaGetLastError() : () -> i32
    %50 = arith.cmpi ne, %c0_i32, %49 : i32
    scf.if %50 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str8 : !llvm.ptr<array<27 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<27 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%49) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c155_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %51 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.call @free(%52) : (!llvm.ptr<i8>) -> ()
    %53 = call @cudaGetLastError() : () -> i32
    %54 = arith.cmpi ne, %c0_i32, %53 : i32
    scf.if %54 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str9 : !llvm.ptr<array<12 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%53) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c159_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    return
  }
  func private @cudaGetLastError() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func private @cudaGetErrorString(i32) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func private @cudaDeviceSynchronize() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func private @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: f64) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c1_i64 = arith.constant 1 : i64
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %false = arith.constant false
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %2 = llvm.alloca %c1_i64 x !llvm.array<1 x i8> : (i64) -> !llvm.ptr<array<1 x i8>>
    %3 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>> : (i64) -> !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %4 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.mlir.addressof @str10 : !llvm.ptr<array<15 x i8>>
    %7 = llvm.getelementptr %6[%c0_i32, %c0_i32] : (!llvm.ptr<array<15 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %8 = llvm.call @getenv(%7) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    llvm.store %8, %4 : !llvm.ptr<ptr<i8>>
    %9 = llvm.load %3 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %10 = llvm.mlir.null : !llvm.ptr<i8>
    %11 = llvm.icmp "eq" %8, %10 : !llvm.ptr<i8>
    %12 = scf.if %11 -> (i1) {
      scf.yield %true : i1
    } else {
      %38 = llvm.mlir.addressof @str11 : !llvm.ptr<array<1 x i8>>
      %39 = llvm.getelementptr %38[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %40 = llvm.call @strcmp(%8, %39) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %41 = arith.cmpi eq, %40, %c0_i32 : i32
      scf.yield %41 : i1
    }
    %13 = scf.if %12 -> (i1) {
      scf.yield %true : i1
    } else {
      %38 = llvm.mlir.addressof @str12 : !llvm.ptr<array<2 x i8>>
      %39 = llvm.getelementptr %38[%c0_i32, %c0_i32] : (!llvm.ptr<array<2 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %40 = llvm.call @strcmp(%8, %39) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %41 = arith.cmpi eq, %40, %c0_i32 : i32
      scf.yield %41 : i1
    }
    %14 = scf.if %13 -> (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) {
      %38 = llvm.mlir.addressof @stdout : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %39 = llvm.load %38 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      llvm.store %39, %3 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      scf.yield %39 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
    } else {
      %38 = llvm.mlir.addressof @str13 : !llvm.ptr<array<2 x i8>>
      %39 = llvm.getelementptr %38[%c0_i32, %c0_i32] : (!llvm.ptr<array<2 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %40 = llvm.call @fopen(%8, %39) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
      llvm.store %40, %3 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      scf.yield %40 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
    }
    %15 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %16 = llvm.icmp "ne" %14, %15 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %17 = arith.xori %16, %true : i1
    scf.if %17 {
      %38 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %39 = llvm.load %38 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %40 = llvm.mlir.addressof @str14 : !llvm.ptr<array<45 x i8>>
      %41 = llvm.getelementptr %40[%c0_i32, %c0_i32] : (!llvm.ptr<array<45 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %42 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %43 = llvm.load %42 : !llvm.ptr<i32>
      %44 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %45 = llvm.load %44 : !llvm.ptr<i32>
      %46 = call @strerror(%45) : (i32) -> !llvm.ptr<i8>
      %47 = llvm.call @fprintf(%39, %41, %8, %43, %46) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
      call @exit(%c1_i32) : (i32) -> ()
    }
    %18 = llvm.mlir.addressof @str11 : !llvm.ptr<array<1 x i8>>
    %19 = llvm.load %18 : !llvm.ptr<array<1 x i8>>
    llvm.store %19, %2 : !llvm.ptr<array<1 x i8>>
    %20 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    %21 = llvm.mlir.addressof @str15 : !llvm.ptr<array<9 x i8>>
    %22 = llvm.getelementptr %21[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %23 = llvm.call @getenv(%22) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    llvm.store %23, %1 : !llvm.ptr<ptr<i8>>
    %24 = llvm.icmp "ne" %23, %10 : !llvm.ptr<i8>
    %25 = arith.xori %24, %true : i1
    %26 = scf.if %25 -> (!llvm.ptr<i8>) {
      %38 = llvm.getelementptr %2[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.store %38, %1 : !llvm.ptr<ptr<i8>>
      scf.yield %38 : !llvm.ptr<i8>
    } else {
      scf.yield %23 : !llvm.ptr<i8>
    }
    %27 = call @omp_get_max_threads() : () -> i32
    %28 = llvm.load %0 : !llvm.ptr<ptr<i8>>
    %29 = llvm.mlir.addressof @str16 : !llvm.ptr<array<10 x i8>>
    %30 = llvm.getelementptr %29[%c0_i32, %c0_i32] : (!llvm.ptr<array<10 x i8>>, i32, i32) -> !llvm.ptr<i8>
    llvm.store %30, %0 : !llvm.ptr<ptr<i8>>
    %31 = llvm.mlir.addressof @str17 : !llvm.ptr<array<28 x i8>>
    %32 = llvm.getelementptr %31[%c0_i32, %c0_i32] : (!llvm.ptr<array<28 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %33 = llvm.call @fprintf(%14, %32, %arg0, %arg1, %arg2, %26, %30, %27) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, i32) -> i32
    %34 = llvm.mlir.addressof @stdout : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %36 = llvm.icmp "ne" %14, %35 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %37 = scf.if %36 -> (i1) {
      %38 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %39 = llvm.load %38 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %40 = llvm.icmp "ne" %14, %39 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
      scf.yield %40 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %37 {
      %38 = llvm.call @fclose(%14) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    }
    return
  }
  func private @strerror(i32) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func private @omp_get_max_threads() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func @_Z15rgbToComponentsIiEvPT_S1_S1_Phii(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>, %arg3: !llvm.ptr<i8>, %arg4: i32, %arg5: i32) attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %c-128_i32 = arith.constant -128 : i32
    %c4_i32 = arith.constant 4 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0_i8 = arith.constant 0 : i8
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %c256_i32 = arith.constant 256 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c3_i32 = arith.constant 3 : i32
    %c141_i32 = arith.constant 141 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c146_i32 = arith.constant 146 : i32
    %c768_i32 = arith.constant 768 : i32
    %c151_i32 = arith.constant 151 : i32
    %cst = arith.constant 1.000000e-09 : f64
    %c155_i32 = arith.constant 155 : i32
    %c159_i32 = arith.constant 159 : i32
    %c256 = arith.constant 256 : index
    %c3_i64 = arith.constant 3 : i64
    %c2_i64 = arith.constant 2 : i64
    %0 = memref.alloca() : memref<1x2xi64>
    %1 = memref.alloca() : memref<1x2xi64>
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %3 = arith.muli %arg4, %arg5 : i32
    %4 = arith.remsi %3, %c256_i32 : i32
    %5 = arith.cmpi ne, %4, %c0_i32 : i32
    %6 = scf.if %5 -> (i32) {
      %55 = arith.divsi %3, %c256_i32 : i32
      %56 = arith.addi %55, %c1_i32 : i32
      scf.yield %56 : i32
    } else {
      %55 = arith.divsi %3, %c256_i32 : i32
      scf.yield %55 : i32
    }
    %7 = arith.muli %6, %c256_i32 : i32
    %8 = arith.muli %7, %c3_i32 : i32
    %9 = llvm.bitcast %2 : !llvm.ptr<ptr<i8>> to !llvm.ptr<ptr<i8>>
    %10 = arith.extsi %8 : i32 to i64
    %11 = llvm.call @malloc(%10) : (i64) -> !llvm.ptr<i8>
    llvm.store %11, %9 : !llvm.ptr<ptr<i8>>
    %12 = call @cudaGetLastError() : () -> i32
    %13 = arith.cmpi ne, %c0_i32, %12 : i32
    scf.if %13 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str2 : !llvm.ptr<array<12 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%12) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c141_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %14 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %15 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %16 = llvm.bitcast %15 : !llvm.ptr<i8> to !llvm.ptr<i8>
    "llvm.intr.memset"(%16, %c0_i8, %10, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %17 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %18 = llvm.bitcast %17 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %19 = llvm.bitcast %arg3 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %20 = arith.muli %3, %c3_i32 : i32
    %21 = arith.extsi %20 : i32 to i64
    "llvm.intr.memcpy"(%18, %19, %21, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %22 = call @cudaGetLastError() : () -> i32
    %23 = arith.cmpi ne, %c0_i32, %22 : i32
    scf.if %23 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str3 : !llvm.ptr<array<20 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%22) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c146_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %24 = arith.divsi %8, %c768_i32 : i32
    %25 = arith.remsi %8, %c768_i32 : i32
    %26 = arith.cmpi eq, %25, %c0_i32 : i32
    scf.if %26 {
    } else {
      %55 = llvm.mlir.addressof @str4 : !llvm.ptr<array<29 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<29 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str18 : !llvm.ptr<array<73 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<73 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%56, %58, %c151_i32, %60) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %27 = call @cudaDeviceSynchronize() : () -> i32
    %28 = "polygeist.memref2pointer"(%1) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %29 = llvm.call @clock_gettime(%c1_i32, %28) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %30 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %31 = arith.index_cast %24 : i32 to index
    scf.parallel (%arg6) = (%c0) to (%31) step (%c1) {
      %55 = arith.index_cast %arg6 : index to i32
      %56 = llvm.alloca %c1_i64 x !llvm.array<768 x i8> : (i64) -> !llvm.ptr<array<768 x i8>>
      %57 = llvm.addrspacecast %56 : !llvm.ptr<array<768 x i8>> to !llvm.ptr<array<768 x i8>, 5>
      %58 = memref.alloc() : memref<256xindex>
      %59 = memref.alloc() : memref<256xi32>
      %60 = memref.alloc() : memref<256xi64>
      %61 = memref.alloc() : memref<256xi32>
      scf.parallel (%arg7) = (%c0) to (%c256) step (%c1) {
        %62 = arith.index_cast %arg7 : index to i32
        memref.store %62, %61[%arg7] : memref<256xi32>
        %63 = arith.index_cast %arg7 : index to i64
        memref.store %63, %60[%arg7] : memref<256xi64>
        %64 = arith.muli %55, %c256_i32 : i32
        memref.store %64, %59[%arg7] : memref<256xi32>
        %65 = arith.muli %arg6, %c256 : index
        memref.store %65, %58[%arg7] : memref<256xindex>
        %66 = arith.muli %62, %c4_i32 : i32
        %67 = arith.cmpi ult, %66, %c768_i32 : i32
        scf.if %67 {
          %68 = arith.muli %64, %c3_i32 : i32
          %69 = arith.shrsi %68, %c2_i32 : i32
          %70 = arith.addi %69, %62 : i32
          %71 = llvm.bitcast %30 : !llvm.ptr<i8> to !llvm.ptr<f32>
          %72 = llvm.getelementptr %71[%70] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
          %73 = llvm.load %72 : !llvm.ptr<f32>
          %74 = llvm.bitcast %57 : !llvm.ptr<array<768 x i8>, 5> to !llvm.ptr<f32, 5>
          %75 = llvm.getelementptr %74[%62] : (!llvm.ptr<f32, 5>, i32) -> !llvm.ptr<f32, 5>
          llvm.store %73, %75 : !llvm.ptr<f32, 5>
        }
        scf.yield
      }
      scf.parallel (%arg7) = (%c0) to (%c256) step (%c1) {
        %62 = memref.load %60[%arg7] : memref<256xi64>
        %63 = arith.muli %62, %c3_i64 : i64
        %64 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<768 x i8>, 5>, i32, i32) -> !llvm.ptr<i8, 5>
        %65 = llvm.getelementptr %64[%63] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %66 = llvm.load %65 : !llvm.ptr<i8, 5>
        %67 = arith.extsi %66 : i8 to i32
        %68 = arith.addi %63, %c1_i64 : i64
        %69 = llvm.getelementptr %64[%68] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %70 = llvm.load %69 : !llvm.ptr<i8, 5>
        %71 = arith.extsi %70 : i8 to i32
        %72 = arith.addi %63, %c2_i64 : i64
        %73 = llvm.getelementptr %64[%72] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %74 = llvm.load %73 : !llvm.ptr<i8, 5>
        %75 = arith.extsi %74 : i8 to i32
        %76 = memref.load %59[%arg7] : memref<256xi32>
        %77 = memref.load %61[%arg7] : memref<256xi32>
        %78 = arith.addi %76, %77 : i32
        %79 = arith.cmpi ult, %78, %3 : i32
        scf.if %79 {
          %80 = memref.load %58[%arg7] : memref<256xindex>
          %81 = arith.addi %80, %arg7 : index
          %82 = arith.addi %67, %c-128_i32 : i32
          memref.store %82, %arg0[%81] : memref<?xi32>
          %83 = arith.addi %71, %c-128_i32 : i32
          memref.store %83, %arg1[%81] : memref<?xi32>
          %84 = arith.addi %75, %c-128_i32 : i32
          memref.store %84, %arg2[%81] : memref<?xi32>
        }
        scf.yield
      }
      memref.dealloc %58 : memref<256xindex>
      memref.dealloc %59 : memref<256xi32>
      memref.dealloc %60 : memref<256xi64>
      memref.dealloc %61 : memref<256xi32>
      scf.yield
    }
    %32 = call @cudaDeviceSynchronize() : () -> i32
    %33 = "polygeist.memref2pointer"(%0) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %34 = llvm.call @clock_gettime(%c1_i32, %33) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %35 = affine.load %0[0, 0] : memref<1x2xi64>
    %36 = affine.load %1[0, 0] : memref<1x2xi64>
    %37 = arith.subi %35, %36 : i64
    %38 = affine.load %0[0, 1] : memref<1x2xi64>
    %39 = affine.load %1[0, 1] : memref<1x2xi64>
    %40 = arith.subi %38, %39 : i64
    %41 = arith.sitofp %37 : i64 to f64
    %42 = arith.sitofp %40 : i64 to f64
    %43 = arith.mulf %42, %cst : f64
    %44 = arith.addf %41, %43 : f64
    %45 = llvm.mlir.addressof @str6 : !llvm.ptr<array<6 x i8>>
    %46 = llvm.getelementptr %45[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %47 = llvm.mlir.addressof @str7 : !llvm.ptr<array<22 x i8>>
    %48 = llvm.getelementptr %47[%c0_i32, %c0_i32] : (!llvm.ptr<array<22 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%46, %48, %44) : (!llvm.ptr<i8>, !llvm.ptr<i8>, f64) -> ()
    %49 = call @cudaGetLastError() : () -> i32
    %50 = arith.cmpi ne, %c0_i32, %49 : i32
    scf.if %50 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str8 : !llvm.ptr<array<27 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<27 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%49) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c155_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %51 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.call @free(%52) : (!llvm.ptr<i8>) -> ()
    %53 = call @cudaGetLastError() : () -> i32
    %54 = arith.cmpi ne, %c0_i32, %53 : i32
    scf.if %54 {
      %55 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %56 = llvm.load %55 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %57 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = llvm.mlir.addressof @str9 : !llvm.ptr<array<12 x i8>>
      %62 = llvm.getelementptr %61[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %63 = call @cudaGetErrorString(%53) : (i32) -> !llvm.ptr<i8>
      %64 = llvm.call @fprintf(%56, %58, %60, %c159_i32, %62, %63) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    return
  }
  func @_Z13bwToComponentIfEvPT_Phii(%arg0: memref<?xf32>, %arg1: !llvm.ptr<i8>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %cst = arith.constant 2.550000e+02 : f32
    %cst_0 = arith.constant 5.000000e-01 : f32
    %c4_i32 = arith.constant 4 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0_i8 = arith.constant 0 : i8
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %c256_i32 = arith.constant 256 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c175_i32 = arith.constant 175 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c180_i32 = arith.constant 180 : i32
    %c185_i32 = arith.constant 185 : i32
    %cst_1 = arith.constant 1.000000e-09 : f64
    %c189_i32 = arith.constant 189 : i32
    %c193_i32 = arith.constant 193 : i32
    %c256 = arith.constant 256 : index
    %0 = memref.alloca() : memref<1x2xi64>
    %1 = memref.alloca() : memref<1x2xi64>
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %3 = arith.muli %arg2, %arg3 : i32
    %4 = arith.remsi %3, %c256_i32 : i32
    %5 = arith.cmpi ne, %4, %c0_i32 : i32
    %6 = scf.if %5 -> (i32) {
      %53 = arith.divsi %3, %c256_i32 : i32
      %54 = arith.addi %53, %c1_i32 : i32
      scf.yield %54 : i32
    } else {
      %53 = arith.divsi %3, %c256_i32 : i32
      scf.yield %53 : i32
    }
    %7 = arith.muli %6, %c256_i32 : i32
    %8 = llvm.bitcast %2 : !llvm.ptr<ptr<i8>> to !llvm.ptr<ptr<i8>>
    %9 = arith.extsi %7 : i32 to i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr<i8>
    llvm.store %10, %8 : !llvm.ptr<ptr<i8>>
    %11 = call @cudaGetLastError() : () -> i32
    %12 = arith.cmpi ne, %c0_i32, %11 : i32
    scf.if %12 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str2 : !llvm.ptr<array<12 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%11) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c175_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %13 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %14 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<i8> to !llvm.ptr<i8>
    "llvm.intr.memset"(%15, %c0_i8, %9, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %16 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %18 = llvm.bitcast %arg1 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %19 = arith.extsi %3 : i32 to i64
    "llvm.intr.memcpy"(%17, %18, %19, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %20 = call @cudaGetLastError() : () -> i32
    %21 = arith.cmpi ne, %c0_i32, %20 : i32
    scf.if %21 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str3 : !llvm.ptr<array<20 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%20) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c180_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %22 = arith.divsi %7, %c256_i32 : i32
    %23 = arith.remsi %7, %c256_i32 : i32
    %24 = arith.cmpi eq, %23, %c0_i32 : i32
    scf.if %24 {
    } else {
      %53 = llvm.mlir.addressof @str19 : !llvm.ptr<array<27 x i8>>
      %54 = llvm.getelementptr %53[%c0_i32, %c0_i32] : (!llvm.ptr<array<27 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %55 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str20 : !llvm.ptr<array<63 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<63 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%54, %56, %c185_i32, %58) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %25 = call @cudaDeviceSynchronize() : () -> i32
    %26 = "polygeist.memref2pointer"(%1) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %27 = llvm.call @clock_gettime(%c1_i32, %26) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %28 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %29 = arith.index_cast %22 : i32 to index
    scf.parallel (%arg4) = (%c0) to (%29) step (%c1) {
      %53 = arith.index_cast %arg4 : index to i32
      %54 = llvm.alloca %c1_i64 x !llvm.array<256 x i8> : (i64) -> !llvm.ptr<array<256 x i8>>
      %55 = llvm.addrspacecast %54 : !llvm.ptr<array<256 x i8>> to !llvm.ptr<array<256 x i8>, 5>
      %56 = memref.alloc() : memref<256xindex>
      %57 = memref.alloc() : memref<256xi32>
      %58 = memref.alloc() : memref<256xi32>
      scf.parallel (%arg5) = (%c0) to (%c256) step (%c1) {
        %59 = arith.index_cast %arg5 : index to i32
        memref.store %59, %58[%arg5] : memref<256xi32>
        %60 = arith.muli %53, %c256_i32 : i32
        memref.store %60, %57[%arg5] : memref<256xi32>
        %61 = arith.muli %arg4, %c256 : index
        memref.store %61, %56[%arg5] : memref<256xindex>
        %62 = arith.muli %59, %c4_i32 : i32
        %63 = arith.cmpi ult, %62, %c256_i32 : i32
        scf.if %63 {
          %64 = arith.shrsi %60, %c2_i32 : i32
          %65 = arith.addi %64, %59 : i32
          %66 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<f32>
          %67 = llvm.getelementptr %66[%65] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
          %68 = llvm.load %67 : !llvm.ptr<f32>
          %69 = llvm.bitcast %55 : !llvm.ptr<array<256 x i8>, 5> to !llvm.ptr<f32, 5>
          %70 = llvm.getelementptr %69[%59] : (!llvm.ptr<f32, 5>, i32) -> !llvm.ptr<f32, 5>
          llvm.store %68, %70 : !llvm.ptr<f32, 5>
        }
        scf.yield
      }
      scf.parallel (%arg5) = (%c0) to (%c256) step (%c1) {
        %59 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<256 x i8>, 5>, i32, i32) -> !llvm.ptr<i8, 5>
        %60 = arith.index_cast %arg5 : index to i64
        %61 = llvm.getelementptr %59[%60] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %62 = llvm.load %61 : !llvm.ptr<i8, 5>
        %63 = arith.uitofp %62 : i8 to f32
        %64 = memref.load %57[%arg5] : memref<256xi32>
        %65 = memref.load %58[%arg5] : memref<256xi32>
        %66 = arith.addi %64, %65 : i32
        %67 = arith.cmpi ult, %66, %3 : i32
        scf.if %67 {
          %68 = memref.load %56[%arg5] : memref<256xindex>
          %69 = arith.addi %68, %arg5 : index
          %70 = arith.divf %63, %cst : f32
          %71 = arith.subf %70, %cst_0 : f32
          memref.store %71, %arg0[%69] : memref<?xf32>
        }
        scf.yield
      }
      memref.dealloc %56 : memref<256xindex>
      memref.dealloc %57 : memref<256xi32>
      memref.dealloc %58 : memref<256xi32>
      scf.yield
    }
    %30 = call @cudaDeviceSynchronize() : () -> i32
    %31 = "polygeist.memref2pointer"(%0) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %32 = llvm.call @clock_gettime(%c1_i32, %31) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %33 = affine.load %0[0, 0] : memref<1x2xi64>
    %34 = affine.load %1[0, 0] : memref<1x2xi64>
    %35 = arith.subi %33, %34 : i64
    %36 = affine.load %0[0, 1] : memref<1x2xi64>
    %37 = affine.load %1[0, 1] : memref<1x2xi64>
    %38 = arith.subi %36, %37 : i64
    %39 = arith.sitofp %35 : i64 to f64
    %40 = arith.sitofp %38 : i64 to f64
    %41 = arith.mulf %40, %cst_1 : f64
    %42 = arith.addf %39, %41 : f64
    %43 = llvm.mlir.addressof @str6 : !llvm.ptr<array<6 x i8>>
    %44 = llvm.getelementptr %43[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %45 = llvm.mlir.addressof @str21 : !llvm.ptr<array<21 x i8>>
    %46 = llvm.getelementptr %45[%c0_i32, %c0_i32] : (!llvm.ptr<array<21 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%44, %46, %42) : (!llvm.ptr<i8>, !llvm.ptr<i8>, f64) -> ()
    %47 = call @cudaGetLastError() : () -> i32
    %48 = arith.cmpi ne, %c0_i32, %47 : i32
    scf.if %48 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str22 : !llvm.ptr<array<26 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%47) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c189_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %49 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.call @free(%50) : (!llvm.ptr<i8>) -> ()
    %51 = call @cudaGetLastError() : () -> i32
    %52 = arith.cmpi ne, %c0_i32, %51 : i32
    scf.if %52 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str9 : !llvm.ptr<array<12 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%51) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c193_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    return
  }
  func @_Z13bwToComponentIiEvPT_Phii(%arg0: memref<?xi32>, %arg1: !llvm.ptr<i8>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<weak_odr>} {
    %c-128_i32 = arith.constant -128 : i32
    %c4_i32 = arith.constant 4 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0_i8 = arith.constant 0 : i8
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %c256_i32 = arith.constant 256 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c175_i32 = arith.constant 175 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c180_i32 = arith.constant 180 : i32
    %c185_i32 = arith.constant 185 : i32
    %cst = arith.constant 1.000000e-09 : f64
    %c189_i32 = arith.constant 189 : i32
    %c193_i32 = arith.constant 193 : i32
    %c256 = arith.constant 256 : index
    %0 = memref.alloca() : memref<1x2xi64>
    %1 = memref.alloca() : memref<1x2xi64>
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %3 = arith.muli %arg2, %arg3 : i32
    %4 = arith.remsi %3, %c256_i32 : i32
    %5 = arith.cmpi ne, %4, %c0_i32 : i32
    %6 = scf.if %5 -> (i32) {
      %53 = arith.divsi %3, %c256_i32 : i32
      %54 = arith.addi %53, %c1_i32 : i32
      scf.yield %54 : i32
    } else {
      %53 = arith.divsi %3, %c256_i32 : i32
      scf.yield %53 : i32
    }
    %7 = arith.muli %6, %c256_i32 : i32
    %8 = llvm.bitcast %2 : !llvm.ptr<ptr<i8>> to !llvm.ptr<ptr<i8>>
    %9 = arith.extsi %7 : i32 to i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr<i8>
    llvm.store %10, %8 : !llvm.ptr<ptr<i8>>
    %11 = call @cudaGetLastError() : () -> i32
    %12 = arith.cmpi ne, %c0_i32, %11 : i32
    scf.if %12 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str2 : !llvm.ptr<array<12 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%11) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c175_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %13 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %14 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %15 = llvm.bitcast %14 : !llvm.ptr<i8> to !llvm.ptr<i8>
    "llvm.intr.memset"(%15, %c0_i8, %9, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %16 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %18 = llvm.bitcast %arg1 : !llvm.ptr<i8> to !llvm.ptr<i8>
    %19 = arith.extsi %3 : i32 to i64
    "llvm.intr.memcpy"(%17, %18, %19, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %20 = call @cudaGetLastError() : () -> i32
    %21 = arith.cmpi ne, %c0_i32, %20 : i32
    scf.if %21 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str3 : !llvm.ptr<array<20 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<20 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%20) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c180_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %22 = arith.divsi %7, %c256_i32 : i32
    %23 = arith.remsi %7, %c256_i32 : i32
    %24 = arith.cmpi eq, %23, %c0_i32 : i32
    scf.if %24 {
    } else {
      %53 = llvm.mlir.addressof @str19 : !llvm.ptr<array<27 x i8>>
      %54 = llvm.getelementptr %53[%c0_i32, %c0_i32] : (!llvm.ptr<array<27 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %55 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str23 : !llvm.ptr<array<61 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<61 x i8>>, i32, i32) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%54, %56, %c185_i32, %58) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %25 = call @cudaDeviceSynchronize() : () -> i32
    %26 = "polygeist.memref2pointer"(%1) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %27 = llvm.call @clock_gettime(%c1_i32, %26) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %28 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %29 = arith.index_cast %22 : i32 to index
    scf.parallel (%arg4) = (%c0) to (%29) step (%c1) {
      %53 = arith.index_cast %arg4 : index to i32
      %54 = llvm.alloca %c1_i64 x !llvm.array<256 x i8> : (i64) -> !llvm.ptr<array<256 x i8>>
      %55 = llvm.addrspacecast %54 : !llvm.ptr<array<256 x i8>> to !llvm.ptr<array<256 x i8>, 5>
      %56 = memref.alloc() : memref<256xindex>
      %57 = memref.alloc() : memref<256xi32>
      %58 = memref.alloc() : memref<256xi32>
      scf.parallel (%arg5) = (%c0) to (%c256) step (%c1) {
        %59 = arith.index_cast %arg5 : index to i32
        memref.store %59, %58[%arg5] : memref<256xi32>
        %60 = arith.muli %53, %c256_i32 : i32
        memref.store %60, %57[%arg5] : memref<256xi32>
        %61 = arith.muli %arg4, %c256 : index
        memref.store %61, %56[%arg5] : memref<256xindex>
        %62 = arith.muli %59, %c4_i32 : i32
        %63 = arith.cmpi ult, %62, %c256_i32 : i32
        scf.if %63 {
          %64 = arith.shrsi %60, %c2_i32 : i32
          %65 = arith.addi %64, %59 : i32
          %66 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<f32>
          %67 = llvm.getelementptr %66[%65] : (!llvm.ptr<f32>, i32) -> !llvm.ptr<f32>
          %68 = llvm.load %67 : !llvm.ptr<f32>
          %69 = llvm.bitcast %55 : !llvm.ptr<array<256 x i8>, 5> to !llvm.ptr<f32, 5>
          %70 = llvm.getelementptr %69[%59] : (!llvm.ptr<f32, 5>, i32) -> !llvm.ptr<f32, 5>
          llvm.store %68, %70 : !llvm.ptr<f32, 5>
        }
        scf.yield
      }
      scf.parallel (%arg5) = (%c0) to (%c256) step (%c1) {
        %59 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<256 x i8>, 5>, i32, i32) -> !llvm.ptr<i8, 5>
        %60 = arith.index_cast %arg5 : index to i64
        %61 = llvm.getelementptr %59[%60] : (!llvm.ptr<i8, 5>, i64) -> !llvm.ptr<i8, 5>
        %62 = llvm.load %61 : !llvm.ptr<i8, 5>
        %63 = arith.extsi %62 : i8 to i32
        %64 = memref.load %57[%arg5] : memref<256xi32>
        %65 = memref.load %58[%arg5] : memref<256xi32>
        %66 = arith.addi %64, %65 : i32
        %67 = arith.cmpi ult, %66, %3 : i32
        scf.if %67 {
          %68 = memref.load %56[%arg5] : memref<256xindex>
          %69 = arith.addi %68, %arg5 : index
          %70 = arith.addi %63, %c-128_i32 : i32
          memref.store %70, %arg0[%69] : memref<?xi32>
        }
        scf.yield
      }
      memref.dealloc %56 : memref<256xindex>
      memref.dealloc %57 : memref<256xi32>
      memref.dealloc %58 : memref<256xi32>
      scf.yield
    }
    %30 = call @cudaDeviceSynchronize() : () -> i32
    %31 = "polygeist.memref2pointer"(%0) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %32 = llvm.call @clock_gettime(%c1_i32, %31) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %33 = affine.load %0[0, 0] : memref<1x2xi64>
    %34 = affine.load %1[0, 0] : memref<1x2xi64>
    %35 = arith.subi %33, %34 : i64
    %36 = affine.load %0[0, 1] : memref<1x2xi64>
    %37 = affine.load %1[0, 1] : memref<1x2xi64>
    %38 = arith.subi %36, %37 : i64
    %39 = arith.sitofp %35 : i64 to f64
    %40 = arith.sitofp %38 : i64 to f64
    %41 = arith.mulf %40, %cst : f64
    %42 = arith.addf %39, %41 : f64
    %43 = llvm.mlir.addressof @str6 : !llvm.ptr<array<6 x i8>>
    %44 = llvm.getelementptr %43[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %45 = llvm.mlir.addressof @str21 : !llvm.ptr<array<21 x i8>>
    %46 = llvm.getelementptr %45[%c0_i32, %c0_i32] : (!llvm.ptr<array<21 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%44, %46, %42) : (!llvm.ptr<i8>, !llvm.ptr<i8>, f64) -> ()
    %47 = call @cudaGetLastError() : () -> i32
    %48 = arith.cmpi ne, %c0_i32, %47 : i32
    scf.if %48 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str22 : !llvm.ptr<array<26 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%47) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c189_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    %49 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i8>
    llvm.call @free(%50) : (!llvm.ptr<i8>) -> ()
    %51 = call @cudaGetLastError() : () -> i32
    %52 = arith.cmpi ne, %c0_i32, %51 : i32
    scf.if %52 {
      %53 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %55 = llvm.mlir.addressof @str0 : !llvm.ptr<array<17 x i8>>
      %56 = llvm.getelementptr %55[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %57 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
      %58 = llvm.getelementptr %57[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %59 = llvm.mlir.addressof @str9 : !llvm.ptr<array<12 x i8>>
      %60 = llvm.getelementptr %59[%c0_i32, %c0_i32] : (!llvm.ptr<array<12 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %61 = call @cudaGetErrorString(%51) : (i32) -> !llvm.ptr<i8>
      %62 = llvm.call @fprintf(%54, %56, %58, %c193_i32, %60, %61) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c-1_i32) : (i32) -> ()
    }
    return
  }
}
