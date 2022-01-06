module attributes {llvm.data_layout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64", llvm.target_triple = "nvptx64-nvidia-cuda"}  {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
  llvm.mlir.global internal constant @str11("%s, %s, %.17g, %s, %s, %d,\0A\00")
  llvm.mlir.global internal constant @str10("polygeist\00")
  llvm.mlir.global internal constant @str9("HOSTNAME\00")
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.func @__errno_location() -> !llvm.ptr<i32>
  llvm.mlir.global internal constant @str8("Could not open timing file %s, errno %d, %s\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str7("a\00")
  llvm.mlir.global external @stdout() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str6("-\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  llvm.mlir.global internal constant @str5("\00")
  llvm.func @getenv(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str4("MY_TIMING_FILE\00")
  llvm.mlir.global internal constant @str3("fdwt53Kernel in launchFDWT53Kernel has finished\00")
  llvm.mlir.global internal constant @str2("fdwt53Kernel\00")
  llvm.mlir.global internal constant @str1("dwt2d\00")
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("\0A sliding steps = %d , gx = %d , gy = %d \0A\00")
  func @_ZN8dwt_cuda6fdwt53EPiS0_iii(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: i32, %arg3: i32, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c960_i32 = arith.constant 960 : i32
    %c480_i32 = arith.constant 480 : i32
    %0 = arith.cmpi sge, %arg2, %c960_i32 : i32
    scf.if %0 {
      call @_ZN8dwt_cuda18launchFDWT53KernelILi192ELi8EEEvPiS1_ii(%arg0, %arg1, %arg2, %arg3) : (memref<?xi32>, memref<?xi32>, i32, i32) -> ()
    } else {
      %1 = arith.cmpi sge, %arg2, %c480_i32 : i32
      scf.if %1 {
        call @_ZN8dwt_cuda18launchFDWT53KernelILi128ELi8EEEvPiS1_ii(%arg0, %arg1, %arg2, %arg3) : (memref<?xi32>, memref<?xi32>, i32, i32) -> ()
      } else {
        call @_ZN8dwt_cuda18launchFDWT53KernelILi64ELi8EEEvPiS1_ii(%arg0, %arg1, %arg2, %arg3) : (memref<?xi32>, memref<?xi32>, i32, i32) -> ()
      }
    }
    return
  }
  func @_ZN8dwt_cuda18launchFDWT53KernelILi192ELi8EEEvPiS1_ii(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %c120_i32 = arith.constant 120 : i32
    %c192_i32 = arith.constant 192 : i32
    %c8_i32 = arith.constant 8 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst = arith.constant 1.000000e-09 : f64
    %c192 = arith.constant 192 : index
    %c8 = arith.constant 8 : index
    %c120 = arith.constant 120 : index
    %c98_i64 = arith.constant 98 : i64
    %c196_i64 = arith.constant 196 : i64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = arith.index_cast %arg3 : i32 to index
    %2 = memref.alloca() : memref<1x2xi64>
    %3 = memref.alloca() : memref<1x2xi64>
    %4 = arith.divsi %arg3, %c120_i32 : i32
    %5 = arith.divsi %1, %c120 : index
    %6 = arith.remsi %arg3, %c120_i32 : i32
    %7 = arith.cmpi ne, %6, %c0_i32 : i32
    %8 = arith.extui %7 : i1 to i32
    %9 = arith.index_cast %8 : i32 to index
    %10 = arith.addi %4, %8 : i32
    %11 = arith.addi %5, %9 : index
    %12 = arith.divsi %arg2, %c192_i32 : i32
    %13 = arith.remsi %arg2, %c192_i32 : i32
    %14 = arith.cmpi ne, %13, %c0_i32 : i32
    %15 = arith.extui %14 : i1 to i32
    %16 = arith.addi %12, %15 : i32
    %17 = arith.muli %10, %c8_i32 : i32
    %18 = arith.muli %11, %c8 : index
    %19 = arith.divsi %arg3, %17 : i32
    %20 = arith.remsi %arg3, %17 : i32
    %21 = arith.cmpi ne, %20, %c0_i32 : i32
    %22 = arith.extui %21 : i1 to i32
    %23 = arith.addi %19, %22 : i32
    %24 = llvm.mlir.addressof @str0 : !llvm.ptr<array<43 x i8>>
    %25 = llvm.getelementptr %24[%c0_i32, %c0_i32] : (!llvm.ptr<array<43 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %26 = llvm.call @printf(%25, %10, %16, %23) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    %27 = arith.divsi %0, %c192 : index
    %28 = arith.index_cast %15 : i32 to index
    %29 = arith.divsi %1, %18 : index
    %30 = arith.index_cast %22 : i32 to index
    %31 = call @cudaDeviceSynchronize() : () -> i32
    %32 = "polygeist.memref2pointer"(%3) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %33 = llvm.call @clock_gettime(%c1_i32, %32) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %34 = arith.addi %27, %28 : index
    %35 = arith.addi %29, %30 : index
    scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%34, %35) step (%c1, %c1) {
      %56 = arith.index_cast %arg5 : index to i32
      %57 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(array<2158 x i32>)>)> : (i64) -> !llvm.ptr<struct<(struct<(array<2158 x i32>)>)>>
      %58 = llvm.addrspacecast %57 : !llvm.ptr<struct<(struct<(array<2158 x i32>)>)>> to !llvm.ptr<struct<(struct<(array<2158 x i32>)>)>, 5>
      %59 = arith.addi %56, %c1_i32 : i32
      %60 = arith.muli %59, %c8_i32 : i32
      %61 = arith.muli %60, %10 : i32
      %62 = arith.addi %61, %c1_i32 : i32
      %63 = arith.cmpi sge, %62, %arg3 : i32
      %64 = memref.alloc() : memref<192xindex>
      scf.parallel (%arg6) = (%c0) to (%c192) step (%c1) {
        %66 = arith.extui %63 : i1 to i64
        %67 = arith.index_cast %66 : i64 to index
        memref.store %67, %64[%arg6] : memref<192xindex>
        scf.yield
      }
      %65 = memref.load %64[%c0] : memref<192xindex>
      scf.for %arg6 = %c0 to %65 step %c1 {
        %66 = memref.alloc() : memref<192x!llvm.ptr<i32>>
        %67 = memref.alloc() : memref<192x!llvm.ptr<i32>>
        %68 = memref.alloc() : memref<192x!llvm.ptr<i32>>
        %69 = memref.alloc() : memref<192x!llvm.ptr<i32>>
        %70 = memref.alloc() : memref<192x!llvm.ptr<i32>>
        scf.parallel (%arg7) = (%c0) to (%c192) step (%c1) {
          %71 = llvm.addrspacecast %58 : !llvm.ptr<struct<(struct<(array<2158 x i32>)>)>, 5> to !llvm.ptr<struct<(struct<(array<2158 x i32>)>)>>
          %72 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>
          %73 = llvm.getelementptr %71[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(array<2158 x i32>)>)>>, i32, i32) -> !llvm.ptr<struct<(array<2158 x i32>)>>
          %74 = llvm.getelementptr %72[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %74, %70[%arg7] : memref<192x!llvm.ptr<i32>>
          %75 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<2158 x i32>)>>, i32, i32) -> !llvm.ptr<array<2158 x i32>>
          %76 = llvm.getelementptr %75[%c0_i32, %c0_i32] : (!llvm.ptr<array<2158 x i32>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %76, %69[%arg7] : memref<192x!llvm.ptr<i32>>
          %77 = llvm.getelementptr %72[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %77, %68[%arg7] : memref<192x!llvm.ptr<i32>>
          %78 = llvm.getelementptr %72[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %78, %67[%arg7] : memref<192x!llvm.ptr<i32>>
          %79 = llvm.getelementptr %72[%c0_i32, %c4_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %79, %66[%arg7] : memref<192x!llvm.ptr<i32>>
          scf.yield
        }
        scf.for %arg7 = %c0 to %11 step %c1 {
          scf.parallel (%arg8) = (%c0) to (%c192) step (%c1) {
            %71 = memref.load %70[%arg8] : memref<192x!llvm.ptr<i32>>
            %72 = llvm.load %71 : !llvm.ptr<i32>
            %73 = arith.index_cast %72 : i32 to index
            %74 = arith.index_cast %73 : index to i64
            %75 = memref.load %69[%arg8] : memref<192x!llvm.ptr<i32>>
            %76 = llvm.getelementptr %75[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %77 = memref.load %68[%arg8] : memref<192x!llvm.ptr<i32>>
            %78 = llvm.load %77 : !llvm.ptr<i32>
            %79 = llvm.getelementptr %76[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %78, %79 : !llvm.ptr<i32>
            %80 = memref.load %70[%arg8] : memref<192x!llvm.ptr<i32>>
            %81 = llvm.load %80 : !llvm.ptr<i32>
            %82 = arith.index_cast %81 : i32 to index
            %83 = arith.index_cast %82 : index to i64
            %84 = arith.addi %83, %c98_i64 : i64
            %85 = memref.load %69[%arg8] : memref<192x!llvm.ptr<i32>>
            %86 = llvm.getelementptr %85[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %87 = memref.load %67[%arg8] : memref<192x!llvm.ptr<i32>>
            %88 = llvm.load %87 : !llvm.ptr<i32>
            %89 = llvm.getelementptr %86[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %88, %89 : !llvm.ptr<i32>
            %90 = memref.load %70[%arg8] : memref<192x!llvm.ptr<i32>>
            %91 = llvm.load %90 : !llvm.ptr<i32>
            %92 = arith.index_cast %91 : i32 to index
            %93 = arith.index_cast %92 : index to i64
            %94 = arith.addi %93, %c196_i64 : i64
            %95 = memref.load %69[%arg8] : memref<192x!llvm.ptr<i32>>
            %96 = llvm.getelementptr %95[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %97 = memref.load %66[%arg8] : memref<192x!llvm.ptr<i32>>
            %98 = llvm.load %97 : !llvm.ptr<i32>
            %99 = llvm.getelementptr %96[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %98, %99 : !llvm.ptr<i32>
            scf.yield
          }
        }
        memref.dealloc %66 : memref<192x!llvm.ptr<i32>>
        memref.dealloc %67 : memref<192x!llvm.ptr<i32>>
        memref.dealloc %68 : memref<192x!llvm.ptr<i32>>
        memref.dealloc %69 : memref<192x!llvm.ptr<i32>>
        memref.dealloc %70 : memref<192x!llvm.ptr<i32>>
      }
      memref.dealloc %64 : memref<192xindex>
      scf.yield
    }
    %36 = call @cudaDeviceSynchronize() : () -> i32
    %37 = "polygeist.memref2pointer"(%2) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %38 = llvm.call @clock_gettime(%c1_i32, %37) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %39 = affine.load %2[0, 0] : memref<1x2xi64>
    %40 = affine.load %3[0, 0] : memref<1x2xi64>
    %41 = arith.subi %39, %40 : i64
    %42 = affine.load %2[0, 1] : memref<1x2xi64>
    %43 = affine.load %3[0, 1] : memref<1x2xi64>
    %44 = arith.subi %42, %43 : i64
    %45 = arith.sitofp %41 : i64 to f64
    %46 = arith.sitofp %44 : i64 to f64
    %47 = arith.mulf %46, %cst : f64
    %48 = arith.addf %45, %47 : f64
    %49 = llvm.mlir.addressof @str1 : !llvm.ptr<array<6 x i8>>
    %50 = llvm.getelementptr %49[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %51 = llvm.mlir.addressof @str2 : !llvm.ptr<array<13 x i8>>
    %52 = llvm.getelementptr %51[%c0_i32, %c0_i32] : (!llvm.ptr<array<13 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%50, %52, %48) : (!llvm.ptr<i8>, !llvm.ptr<i8>, f64) -> ()
    %53 = llvm.mlir.addressof @str3 : !llvm.ptr<array<48 x i8>>
    %54 = llvm.getelementptr %53[%c0_i32, %c0_i32] : (!llvm.ptr<array<48 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %55 = llvm.call @printf(%54) : (!llvm.ptr<i8>) -> i32
    return
  }
  func @_ZN8dwt_cuda18launchFDWT53KernelILi128ELi8EEEvPiS1_ii(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %c120_i32 = arith.constant 120 : i32
    %c128_i32 = arith.constant 128 : i32
    %c8_i32 = arith.constant 8 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst = arith.constant 1.000000e-09 : f64
    %c128 = arith.constant 128 : index
    %c8 = arith.constant 8 : index
    %c120 = arith.constant 120 : index
    %c66_i64 = arith.constant 66 : i64
    %c132_i64 = arith.constant 132 : i64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = arith.index_cast %arg3 : i32 to index
    %2 = memref.alloca() : memref<1x2xi64>
    %3 = memref.alloca() : memref<1x2xi64>
    %4 = arith.divsi %arg3, %c120_i32 : i32
    %5 = arith.divsi %1, %c120 : index
    %6 = arith.remsi %arg3, %c120_i32 : i32
    %7 = arith.cmpi ne, %6, %c0_i32 : i32
    %8 = arith.extui %7 : i1 to i32
    %9 = arith.index_cast %8 : i32 to index
    %10 = arith.addi %4, %8 : i32
    %11 = arith.addi %5, %9 : index
    %12 = arith.divsi %arg2, %c128_i32 : i32
    %13 = arith.remsi %arg2, %c128_i32 : i32
    %14 = arith.cmpi ne, %13, %c0_i32 : i32
    %15 = arith.extui %14 : i1 to i32
    %16 = arith.addi %12, %15 : i32
    %17 = arith.muli %10, %c8_i32 : i32
    %18 = arith.muli %11, %c8 : index
    %19 = arith.divsi %arg3, %17 : i32
    %20 = arith.remsi %arg3, %17 : i32
    %21 = arith.cmpi ne, %20, %c0_i32 : i32
    %22 = arith.extui %21 : i1 to i32
    %23 = arith.addi %19, %22 : i32
    %24 = llvm.mlir.addressof @str0 : !llvm.ptr<array<43 x i8>>
    %25 = llvm.getelementptr %24[%c0_i32, %c0_i32] : (!llvm.ptr<array<43 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %26 = llvm.call @printf(%25, %10, %16, %23) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    %27 = arith.divsi %0, %c128 : index
    %28 = arith.index_cast %15 : i32 to index
    %29 = arith.divsi %1, %18 : index
    %30 = arith.index_cast %22 : i32 to index
    %31 = call @cudaDeviceSynchronize() : () -> i32
    %32 = "polygeist.memref2pointer"(%3) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %33 = llvm.call @clock_gettime(%c1_i32, %32) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %34 = arith.addi %27, %28 : index
    %35 = arith.addi %29, %30 : index
    scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%34, %35) step (%c1, %c1) {
      %56 = arith.index_cast %arg5 : index to i32
      %57 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(array<1454 x i32>)>)> : (i64) -> !llvm.ptr<struct<(struct<(array<1454 x i32>)>)>>
      %58 = llvm.addrspacecast %57 : !llvm.ptr<struct<(struct<(array<1454 x i32>)>)>> to !llvm.ptr<struct<(struct<(array<1454 x i32>)>)>, 5>
      %59 = arith.addi %56, %c1_i32 : i32
      %60 = arith.muli %59, %c8_i32 : i32
      %61 = arith.muli %60, %10 : i32
      %62 = arith.addi %61, %c1_i32 : i32
      %63 = arith.cmpi sge, %62, %arg3 : i32
      %64 = memref.alloc() : memref<128xindex>
      scf.parallel (%arg6) = (%c0) to (%c128) step (%c1) {
        %66 = arith.extui %63 : i1 to i64
        %67 = arith.index_cast %66 : i64 to index
        memref.store %67, %64[%arg6] : memref<128xindex>
        scf.yield
      }
      %65 = memref.load %64[%c0] : memref<128xindex>
      scf.for %arg6 = %c0 to %65 step %c1 {
        %66 = memref.alloc() : memref<128x!llvm.ptr<i32>>
        %67 = memref.alloc() : memref<128x!llvm.ptr<i32>>
        %68 = memref.alloc() : memref<128x!llvm.ptr<i32>>
        %69 = memref.alloc() : memref<128x!llvm.ptr<i32>>
        %70 = memref.alloc() : memref<128x!llvm.ptr<i32>>
        scf.parallel (%arg7) = (%c0) to (%c128) step (%c1) {
          %71 = llvm.addrspacecast %58 : !llvm.ptr<struct<(struct<(array<1454 x i32>)>)>, 5> to !llvm.ptr<struct<(struct<(array<1454 x i32>)>)>>
          %72 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>
          %73 = llvm.getelementptr %71[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(array<1454 x i32>)>)>>, i32, i32) -> !llvm.ptr<struct<(array<1454 x i32>)>>
          %74 = llvm.getelementptr %72[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %74, %70[%arg7] : memref<128x!llvm.ptr<i32>>
          %75 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<1454 x i32>)>>, i32, i32) -> !llvm.ptr<array<1454 x i32>>
          %76 = llvm.getelementptr %75[%c0_i32, %c0_i32] : (!llvm.ptr<array<1454 x i32>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %76, %69[%arg7] : memref<128x!llvm.ptr<i32>>
          %77 = llvm.getelementptr %72[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %77, %68[%arg7] : memref<128x!llvm.ptr<i32>>
          %78 = llvm.getelementptr %72[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %78, %67[%arg7] : memref<128x!llvm.ptr<i32>>
          %79 = llvm.getelementptr %72[%c0_i32, %c4_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %79, %66[%arg7] : memref<128x!llvm.ptr<i32>>
          scf.yield
        }
        scf.for %arg7 = %c0 to %11 step %c1 {
          scf.parallel (%arg8) = (%c0) to (%c128) step (%c1) {
            %71 = memref.load %70[%arg8] : memref<128x!llvm.ptr<i32>>
            %72 = llvm.load %71 : !llvm.ptr<i32>
            %73 = arith.index_cast %72 : i32 to index
            %74 = arith.index_cast %73 : index to i64
            %75 = memref.load %69[%arg8] : memref<128x!llvm.ptr<i32>>
            %76 = llvm.getelementptr %75[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %77 = memref.load %68[%arg8] : memref<128x!llvm.ptr<i32>>
            %78 = llvm.load %77 : !llvm.ptr<i32>
            %79 = llvm.getelementptr %76[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %78, %79 : !llvm.ptr<i32>
            %80 = memref.load %70[%arg8] : memref<128x!llvm.ptr<i32>>
            %81 = llvm.load %80 : !llvm.ptr<i32>
            %82 = arith.index_cast %81 : i32 to index
            %83 = arith.index_cast %82 : index to i64
            %84 = arith.addi %83, %c66_i64 : i64
            %85 = memref.load %69[%arg8] : memref<128x!llvm.ptr<i32>>
            %86 = llvm.getelementptr %85[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %87 = memref.load %67[%arg8] : memref<128x!llvm.ptr<i32>>
            %88 = llvm.load %87 : !llvm.ptr<i32>
            %89 = llvm.getelementptr %86[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %88, %89 : !llvm.ptr<i32>
            %90 = memref.load %70[%arg8] : memref<128x!llvm.ptr<i32>>
            %91 = llvm.load %90 : !llvm.ptr<i32>
            %92 = arith.index_cast %91 : i32 to index
            %93 = arith.index_cast %92 : index to i64
            %94 = arith.addi %93, %c132_i64 : i64
            %95 = memref.load %69[%arg8] : memref<128x!llvm.ptr<i32>>
            %96 = llvm.getelementptr %95[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %97 = memref.load %66[%arg8] : memref<128x!llvm.ptr<i32>>
            %98 = llvm.load %97 : !llvm.ptr<i32>
            %99 = llvm.getelementptr %96[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %98, %99 : !llvm.ptr<i32>
            scf.yield
          }
        }
        memref.dealloc %66 : memref<128x!llvm.ptr<i32>>
        memref.dealloc %67 : memref<128x!llvm.ptr<i32>>
        memref.dealloc %68 : memref<128x!llvm.ptr<i32>>
        memref.dealloc %69 : memref<128x!llvm.ptr<i32>>
        memref.dealloc %70 : memref<128x!llvm.ptr<i32>>
      }
      memref.dealloc %64 : memref<128xindex>
      scf.yield
    }
    %36 = call @cudaDeviceSynchronize() : () -> i32
    %37 = "polygeist.memref2pointer"(%2) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %38 = llvm.call @clock_gettime(%c1_i32, %37) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %39 = affine.load %2[0, 0] : memref<1x2xi64>
    %40 = affine.load %3[0, 0] : memref<1x2xi64>
    %41 = arith.subi %39, %40 : i64
    %42 = affine.load %2[0, 1] : memref<1x2xi64>
    %43 = affine.load %3[0, 1] : memref<1x2xi64>
    %44 = arith.subi %42, %43 : i64
    %45 = arith.sitofp %41 : i64 to f64
    %46 = arith.sitofp %44 : i64 to f64
    %47 = arith.mulf %46, %cst : f64
    %48 = arith.addf %45, %47 : f64
    %49 = llvm.mlir.addressof @str1 : !llvm.ptr<array<6 x i8>>
    %50 = llvm.getelementptr %49[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %51 = llvm.mlir.addressof @str2 : !llvm.ptr<array<13 x i8>>
    %52 = llvm.getelementptr %51[%c0_i32, %c0_i32] : (!llvm.ptr<array<13 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%50, %52, %48) : (!llvm.ptr<i8>, !llvm.ptr<i8>, f64) -> ()
    %53 = llvm.mlir.addressof @str3 : !llvm.ptr<array<48 x i8>>
    %54 = llvm.getelementptr %53[%c0_i32, %c0_i32] : (!llvm.ptr<array<48 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %55 = llvm.call @printf(%54) : (!llvm.ptr<i8>) -> i32
    return
  }
  func @_ZN8dwt_cuda18launchFDWT53KernelILi64ELi8EEEvPiS1_ii(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %c120_i32 = arith.constant 120 : i32
    %c64_i32 = arith.constant 64 : i32
    %c8_i32 = arith.constant 8 : i32
    %c1_i32 = arith.constant 1 : i32
    %cst = arith.constant 1.000000e-09 : f64
    %c64 = arith.constant 64 : index
    %c8 = arith.constant 8 : index
    %c120 = arith.constant 120 : index
    %c34_i64 = arith.constant 34 : i64
    %c68_i64 = arith.constant 68 : i64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = arith.index_cast %arg3 : i32 to index
    %2 = memref.alloca() : memref<1x2xi64>
    %3 = memref.alloca() : memref<1x2xi64>
    %4 = arith.divsi %arg3, %c120_i32 : i32
    %5 = arith.divsi %1, %c120 : index
    %6 = arith.remsi %arg3, %c120_i32 : i32
    %7 = arith.cmpi ne, %6, %c0_i32 : i32
    %8 = arith.extui %7 : i1 to i32
    %9 = arith.index_cast %8 : i32 to index
    %10 = arith.addi %4, %8 : i32
    %11 = arith.addi %5, %9 : index
    %12 = arith.divsi %arg2, %c64_i32 : i32
    %13 = arith.remsi %arg2, %c64_i32 : i32
    %14 = arith.cmpi ne, %13, %c0_i32 : i32
    %15 = arith.extui %14 : i1 to i32
    %16 = arith.addi %12, %15 : i32
    %17 = arith.muli %10, %c8_i32 : i32
    %18 = arith.muli %11, %c8 : index
    %19 = arith.divsi %arg3, %17 : i32
    %20 = arith.remsi %arg3, %17 : i32
    %21 = arith.cmpi ne, %20, %c0_i32 : i32
    %22 = arith.extui %21 : i1 to i32
    %23 = arith.addi %19, %22 : i32
    %24 = llvm.mlir.addressof @str0 : !llvm.ptr<array<43 x i8>>
    %25 = llvm.getelementptr %24[%c0_i32, %c0_i32] : (!llvm.ptr<array<43 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %26 = llvm.call @printf(%25, %10, %16, %23) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    %27 = arith.divsi %0, %c64 : index
    %28 = arith.index_cast %15 : i32 to index
    %29 = arith.divsi %1, %18 : index
    %30 = arith.index_cast %22 : i32 to index
    %31 = call @cudaDeviceSynchronize() : () -> i32
    %32 = "polygeist.memref2pointer"(%3) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %33 = llvm.call @clock_gettime(%c1_i32, %32) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %34 = arith.addi %27, %28 : index
    %35 = arith.addi %29, %30 : index
    scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%34, %35) step (%c1, %c1) {
      %56 = arith.index_cast %arg5 : index to i32
      %57 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(array<750 x i32>)>)> : (i64) -> !llvm.ptr<struct<(struct<(array<750 x i32>)>)>>
      %58 = llvm.addrspacecast %57 : !llvm.ptr<struct<(struct<(array<750 x i32>)>)>> to !llvm.ptr<struct<(struct<(array<750 x i32>)>)>, 5>
      %59 = arith.addi %56, %c1_i32 : i32
      %60 = arith.muli %59, %c8_i32 : i32
      %61 = arith.muli %60, %10 : i32
      %62 = arith.addi %61, %c1_i32 : i32
      %63 = arith.cmpi sge, %62, %arg3 : i32
      %64 = memref.alloc() : memref<64xindex>
      scf.parallel (%arg6) = (%c0) to (%c64) step (%c1) {
        %66 = arith.extui %63 : i1 to i64
        %67 = arith.index_cast %66 : i64 to index
        memref.store %67, %64[%arg6] : memref<64xindex>
        scf.yield
      }
      %65 = memref.load %64[%c0] : memref<64xindex>
      scf.for %arg6 = %c0 to %65 step %c1 {
        %66 = memref.alloc() : memref<64x!llvm.ptr<i32>>
        %67 = memref.alloc() : memref<64x!llvm.ptr<i32>>
        %68 = memref.alloc() : memref<64x!llvm.ptr<i32>>
        %69 = memref.alloc() : memref<64x!llvm.ptr<i32>>
        %70 = memref.alloc() : memref<64x!llvm.ptr<i32>>
        scf.parallel (%arg7) = (%c0) to (%c64) step (%c1) {
          %71 = llvm.addrspacecast %58 : !llvm.ptr<struct<(struct<(array<750 x i32>)>)>, 5> to !llvm.ptr<struct<(struct<(array<750 x i32>)>)>>
          %72 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>
          %73 = llvm.getelementptr %71[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(struct<(array<750 x i32>)>)>>, i32, i32) -> !llvm.ptr<struct<(array<750 x i32>)>>
          %74 = llvm.getelementptr %72[%c0_i32, %c1_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %74, %70[%arg7] : memref<64x!llvm.ptr<i32>>
          %75 = llvm.getelementptr %73[%c0_i32, %c0_i32] : (!llvm.ptr<struct<(array<750 x i32>)>>, i32, i32) -> !llvm.ptr<array<750 x i32>>
          %76 = llvm.getelementptr %75[%c0_i32, %c0_i32] : (!llvm.ptr<array<750 x i32>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %76, %69[%arg7] : memref<64x!llvm.ptr<i32>>
          %77 = llvm.getelementptr %72[%c0_i32, %c2_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %77, %68[%arg7] : memref<64x!llvm.ptr<i32>>
          %78 = llvm.getelementptr %72[%c0_i32, %c3_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %78, %67[%arg7] : memref<64x!llvm.ptr<i32>>
          %79 = llvm.getelementptr %72[%c0_i32, %c4_i32] : (!llvm.ptr<struct<(struct<(struct<(i32, i32)>, i32)>, i32, i32, i32, i32)>>, i32, i32) -> !llvm.ptr<i32>
          memref.store %79, %66[%arg7] : memref<64x!llvm.ptr<i32>>
          scf.yield
        }
        scf.for %arg7 = %c0 to %11 step %c1 {
          scf.parallel (%arg8) = (%c0) to (%c64) step (%c1) {
            %71 = memref.load %70[%arg8] : memref<64x!llvm.ptr<i32>>
            %72 = llvm.load %71 : !llvm.ptr<i32>
            %73 = arith.index_cast %72 : i32 to index
            %74 = arith.index_cast %73 : index to i64
            %75 = memref.load %69[%arg8] : memref<64x!llvm.ptr<i32>>
            %76 = llvm.getelementptr %75[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %77 = memref.load %68[%arg8] : memref<64x!llvm.ptr<i32>>
            %78 = llvm.load %77 : !llvm.ptr<i32>
            %79 = llvm.getelementptr %76[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %78, %79 : !llvm.ptr<i32>
            %80 = memref.load %70[%arg8] : memref<64x!llvm.ptr<i32>>
            %81 = llvm.load %80 : !llvm.ptr<i32>
            %82 = arith.index_cast %81 : i32 to index
            %83 = arith.index_cast %82 : index to i64
            %84 = arith.addi %83, %c34_i64 : i64
            %85 = memref.load %69[%arg8] : memref<64x!llvm.ptr<i32>>
            %86 = llvm.getelementptr %85[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %87 = memref.load %67[%arg8] : memref<64x!llvm.ptr<i32>>
            %88 = llvm.load %87 : !llvm.ptr<i32>
            %89 = llvm.getelementptr %86[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %88, %89 : !llvm.ptr<i32>
            %90 = memref.load %70[%arg8] : memref<64x!llvm.ptr<i32>>
            %91 = llvm.load %90 : !llvm.ptr<i32>
            %92 = arith.index_cast %91 : i32 to index
            %93 = arith.index_cast %92 : index to i64
            %94 = arith.addi %93, %c68_i64 : i64
            %95 = memref.load %69[%arg8] : memref<64x!llvm.ptr<i32>>
            %96 = llvm.getelementptr %95[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
            %97 = memref.load %66[%arg8] : memref<64x!llvm.ptr<i32>>
            %98 = llvm.load %97 : !llvm.ptr<i32>
            %99 = llvm.getelementptr %96[%c0_i32] : (!llvm.ptr<i32>, i32) -> !llvm.ptr<i32>
            llvm.store %98, %99 : !llvm.ptr<i32>
            scf.yield
          }
        }
        memref.dealloc %66 : memref<64x!llvm.ptr<i32>>
        memref.dealloc %67 : memref<64x!llvm.ptr<i32>>
        memref.dealloc %68 : memref<64x!llvm.ptr<i32>>
        memref.dealloc %69 : memref<64x!llvm.ptr<i32>>
        memref.dealloc %70 : memref<64x!llvm.ptr<i32>>
      }
      memref.dealloc %64 : memref<64xindex>
      scf.yield
    }
    %36 = call @cudaDeviceSynchronize() : () -> i32
    %37 = "polygeist.memref2pointer"(%2) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %38 = llvm.call @clock_gettime(%c1_i32, %37) : (i32, !llvm.ptr<struct<(i64, i64)>>) -> i32
    %39 = affine.load %2[0, 0] : memref<1x2xi64>
    %40 = affine.load %3[0, 0] : memref<1x2xi64>
    %41 = arith.subi %39, %40 : i64
    %42 = affine.load %2[0, 1] : memref<1x2xi64>
    %43 = affine.load %3[0, 1] : memref<1x2xi64>
    %44 = arith.subi %42, %43 : i64
    %45 = arith.sitofp %41 : i64 to f64
    %46 = arith.sitofp %44 : i64 to f64
    %47 = arith.mulf %46, %cst : f64
    %48 = arith.addf %45, %47 : f64
    %49 = llvm.mlir.addressof @str1 : !llvm.ptr<array<6 x i8>>
    %50 = llvm.getelementptr %49[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %51 = llvm.mlir.addressof @str2 : !llvm.ptr<array<13 x i8>>
    %52 = llvm.getelementptr %51[%c0_i32, %c0_i32] : (!llvm.ptr<array<13 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%50, %52, %48) : (!llvm.ptr<i8>, !llvm.ptr<i8>, f64) -> ()
    %53 = llvm.mlir.addressof @str3 : !llvm.ptr<array<48 x i8>>
    %54 = llvm.getelementptr %53[%c0_i32, %c0_i32] : (!llvm.ptr<array<48 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %55 = llvm.call @printf(%54) : (!llvm.ptr<i8>) -> i32
    return
  }
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
    %6 = llvm.mlir.addressof @str4 : !llvm.ptr<array<15 x i8>>
    %7 = llvm.getelementptr %6[%c0_i32, %c0_i32] : (!llvm.ptr<array<15 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %8 = llvm.call @getenv(%7) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    llvm.store %8, %4 : !llvm.ptr<ptr<i8>>
    %9 = llvm.load %3 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %10 = llvm.mlir.null : !llvm.ptr<i8>
    %11 = llvm.icmp "eq" %8, %10 : !llvm.ptr<i8>
    %12 = scf.if %11 -> (i1) {
      scf.yield %true : i1
    } else {
      %38 = llvm.mlir.addressof @str5 : !llvm.ptr<array<1 x i8>>
      %39 = llvm.getelementptr %38[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %40 = llvm.call @strcmp(%8, %39) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %41 = arith.cmpi eq, %40, %c0_i32 : i32
      scf.yield %41 : i1
    }
    %13 = scf.if %12 -> (i1) {
      scf.yield %true : i1
    } else {
      %38 = llvm.mlir.addressof @str6 : !llvm.ptr<array<2 x i8>>
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
      %38 = llvm.mlir.addressof @str7 : !llvm.ptr<array<2 x i8>>
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
      %40 = llvm.mlir.addressof @str8 : !llvm.ptr<array<45 x i8>>
      %41 = llvm.getelementptr %40[%c0_i32, %c0_i32] : (!llvm.ptr<array<45 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %42 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %43 = llvm.load %42 : !llvm.ptr<i32>
      %44 = llvm.call @__errno_location() : () -> !llvm.ptr<i32>
      %45 = llvm.load %44 : !llvm.ptr<i32>
      %46 = call @strerror(%45) : (i32) -> !llvm.ptr<i8>
      %47 = llvm.call @fprintf(%39, %41, %8, %43, %46) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", (ptr<struct<"struct._IO_marker">>, ptr<struct<"struct._IO_FILE">>, i32, array<4 x i8>)>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
      call @exit(%c1_i32) : (i32) -> ()
    }
    %18 = llvm.mlir.addressof @str5 : !llvm.ptr<array<1 x i8>>
    %19 = llvm.load %18 : !llvm.ptr<array<1 x i8>>
    llvm.store %19, %2 : !llvm.ptr<array<1 x i8>>
    %20 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    %21 = llvm.mlir.addressof @str9 : !llvm.ptr<array<9 x i8>>
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
    %29 = llvm.mlir.addressof @str10 : !llvm.ptr<array<10 x i8>>
    %30 = llvm.getelementptr %29[%c0_i32, %c0_i32] : (!llvm.ptr<array<10 x i8>>, i32, i32) -> !llvm.ptr<i8>
    llvm.store %30, %0 : !llvm.ptr<ptr<i8>>
    %31 = llvm.mlir.addressof @str11 : !llvm.ptr<array<28 x i8>>
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
  func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func private @omp_get_max_threads() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
