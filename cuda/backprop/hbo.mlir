module attributes {llvm.data_layout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64", llvm.target_triple = "nvptx64-nvidia-cuda"}  {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Starting training kernel\0A\00")
  func private @cudaFuncGetAttributes(%arg0: !llvm.ptr<struct<(i64, i64, i64, i32, i32, i32, i32, i32, i32, i32)>>, %arg1: !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<weak>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %c1_i64_0 = arith.constant 1 : i64
    %1 = llvm.alloca %c1_i64_0 x !llvm.ptr<struct<(i64, i64, i64, i32, i32, i32, i32, i32, i32, i32)>> : (i64) -> !llvm.ptr<ptr<struct<(i64, i64, i64, i32, i32, i32, i32, i32, i32, i32)>>>
    llvm.store %arg0, %1 : !llvm.ptr<ptr<struct<(i64, i64, i64, i32, i32, i32, i32, i32, i32, i32)>>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i8>>
    %true = arith.constant true
    %2 = memref.alloca() : memref<i1>
    %3 = memref.alloca() : memref<i1>
    memref.store %true, %3[] : memref<i1>
    memref.store %true, %2[] : memref<i1>
    %4 = memref.alloca() : memref<i32>
    %5 = llvm.mlir.undef : i32
    memref.store %5, %4[] : memref<i32>
    %6 = memref.load %2[] : memref<i1>
    scf.if %6 {
      scf.execute_region {
        %8 = memref.load %2[] : memref<i1>
        scf.if %8 {
          scf.execute_region {
            %c999_i32 = arith.constant 999 : i32
            memref.store %c999_i32, %4[] : memref<i32>
            %false = arith.constant false
            memref.store %false, %2[] : memref<i1>
            memref.store %false, %3[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %7 = memref.load %4[] : memref<i32>
    return %7 : i32
  }
  func private @cudaDeviceGetAttribute(%arg0: memref<?xi32>, %arg1: i32, %arg2: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<weak>} {
    %0 = memref.alloca() : memref<1xi32>
    %1 = memref.cast %0 : memref<1xi32> to memref<?xi32>
    %c0 = arith.constant 0 : index
    %2 = llvm.mlir.undef : i32
    memref.store %2, %1[%c0] : memref<?xi32>
    %3 = memref.alloca() : memref<1xi32>
    %4 = memref.cast %3 : memref<1xi32> to memref<?xi32>
    %c0_0 = arith.constant 0 : index
    %5 = llvm.mlir.undef : i32
    memref.store %5, %4[%c0_0] : memref<?xi32>
    %6 = memref.alloca() : memref<1xmemref<?xi32>>
    %7 = memref.cast %6 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    memref.store %arg0, %7[%c0_1] : memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %4[%c0_2] : memref<?xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %arg2, %1[%c0_3] : memref<?xi32>
    %true = arith.constant true
    %8 = memref.alloca() : memref<i1>
    %9 = memref.alloca() : memref<i1>
    memref.store %true, %9[] : memref<i1>
    memref.store %true, %8[] : memref<i1>
    %10 = memref.alloca() : memref<i32>
    %11 = llvm.mlir.undef : i32
    memref.store %11, %10[] : memref<i32>
    %12 = memref.load %8[] : memref<i1>
    scf.if %12 {
      scf.execute_region {
        %14 = memref.load %8[] : memref<i1>
        scf.if %14 {
          scf.execute_region {
            %c999_i32 = arith.constant 999 : i32
            memref.store %c999_i32, %10[] : memref<i32>
            %false = arith.constant false
            memref.store %false, %8[] : memref<i1>
            memref.store %false, %9[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %13 = memref.load %10[] : memref<i32>
    return %13 : i32
  }
  func private @cudaOccupancyMaxActiveBlocksPerMultiprocessor(%arg0: memref<?xi32>, %arg1: !llvm.ptr<i8>, %arg2: i32, %arg3: i64) -> i32 attributes {llvm.linkage = #llvm.linkage<weak>} {
    %0 = memref.alloca() : memref<1xi64>
    %1 = memref.cast %0 : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %2 = llvm.mlir.undef : i64
    memref.store %2, %1[%c0] : memref<?xi64>
    %3 = memref.alloca() : memref<1xi32>
    %4 = memref.cast %3 : memref<1xi32> to memref<?xi32>
    %c0_0 = arith.constant 0 : index
    %5 = llvm.mlir.undef : i32
    memref.store %5, %4[%c0_0] : memref<?xi32>
    %c1_i64 = arith.constant 1 : i64
    %6 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %7 = memref.alloca() : memref<1xmemref<?xi32>>
    %8 = memref.cast %7 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    memref.store %arg0, %8[%c0_1] : memref<?xmemref<?xi32>>
    llvm.store %arg1, %6 : !llvm.ptr<ptr<i8>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg2, %4[%c0_2] : memref<?xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %arg3, %1[%c0_3] : memref<?xi64>
    %true = arith.constant true
    %9 = memref.alloca() : memref<i1>
    %10 = memref.alloca() : memref<i1>
    memref.store %true, %10[] : memref<i1>
    memref.store %true, %9[] : memref<i1>
    %11 = memref.alloca() : memref<i32>
    %12 = llvm.mlir.undef : i32
    memref.store %12, %11[] : memref<i32>
    %13 = memref.load %9[] : memref<i1>
    scf.if %13 {
      scf.execute_region {
        %15 = memref.load %9[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %c999_i32 = arith.constant 999 : i32
            memref.store %c999_i32, %11[] : memref<i32>
            %false = arith.constant false
            memref.store %false, %9[] : memref<i1>
            memref.store %false, %10[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %14 = memref.load %11[] : memref<i32>
    return %14 : i32
  }
  func private @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(%arg0: memref<?xi32>, %arg1: !llvm.ptr<i8>, %arg2: i32, %arg3: i64, %arg4: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<weak>} {
    %0 = memref.alloca() : memref<1xi32>
    %1 = memref.cast %0 : memref<1xi32> to memref<?xi32>
    %c0 = arith.constant 0 : index
    %2 = llvm.mlir.undef : i32
    memref.store %2, %1[%c0] : memref<?xi32>
    %3 = memref.alloca() : memref<1xi64>
    %4 = memref.cast %3 : memref<1xi64> to memref<?xi64>
    %c0_0 = arith.constant 0 : index
    %5 = llvm.mlir.undef : i64
    memref.store %5, %4[%c0_0] : memref<?xi64>
    %6 = memref.alloca() : memref<1xi32>
    %7 = memref.cast %6 : memref<1xi32> to memref<?xi32>
    %c0_1 = arith.constant 0 : index
    %8 = llvm.mlir.undef : i32
    memref.store %8, %7[%c0_1] : memref<?xi32>
    %c1_i64 = arith.constant 1 : i64
    %9 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %10 = memref.alloca() : memref<1xmemref<?xi32>>
    %11 = memref.cast %10 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg0, %11[%c0_2] : memref<?xmemref<?xi32>>
    llvm.store %arg1, %9 : !llvm.ptr<ptr<i8>>
    %c0_3 = arith.constant 0 : index
    memref.store %arg2, %7[%c0_3] : memref<?xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg3, %4[%c0_4] : memref<?xi64>
    %c0_5 = arith.constant 0 : index
    memref.store %arg4, %1[%c0_5] : memref<?xi32>
    %true = arith.constant true
    %12 = memref.alloca() : memref<i1>
    %13 = memref.alloca() : memref<i1>
    memref.store %true, %13[] : memref<i1>
    memref.store %true, %12[] : memref<i1>
    %14 = memref.alloca() : memref<i32>
    %15 = llvm.mlir.undef : i32
    memref.store %15, %14[] : memref<i32>
    %16 = memref.load %12[] : memref<i1>
    scf.if %16 {
      scf.execute_region {
        %18 = memref.load %12[] : memref<i1>
        scf.if %18 {
          scf.execute_region {
            %c999_i32 = arith.constant 999 : i32
            memref.store %c999_i32, %14[] : memref<i32>
            %false = arith.constant false
            memref.store %false, %12[] : memref<i1>
            memref.store %false, %13[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %17 = memref.load %14[] : memref<i32>
    return %17 : i32
  }
  func @_Z12alloc_1d_dbli(%arg0: i32) -> memref<?xf32> attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = memref.alloca() : memref<1xmemref<?xf32>>
    %1 = memref.cast %0 : memref<1xmemref<?xf32>> to memref<?xmemref<?xf32>>
    %2 = memref.alloca() : memref<1xi32>
    %3 = memref.cast %2 : memref<1xi32> to memref<?xi32>
    %c0 = arith.constant 0 : index
    %4 = llvm.mlir.undef : i32
    memref.store %4, %3[%c0] : memref<?xi32>
    %c0_0 = arith.constant 0 : index
    memref.store %arg0, %3[%c0_0] : memref<?xi32>
    %true = arith.constant true
    %5 = memref.alloca() : memref<i1>
    %6 = memref.alloca() : memref<i1>
    memref.store %true, %6[] : memref<i1>
    memref.store %true, %5[] : memref<i1>
    %7 = memref.alloca() : memref<memref<?xf32>>
    %8 = memref.load %5[] : memref<i1>
    scf.if %8 {
      scf.execute_region {
        %12 = memref.load %5[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %9 = memref.load %5[] : memref<i1>
    scf.if %9 {
      scf.execute_region {
        %c0_1 = arith.constant 0 : index
        %12 = memref.load %3[%c0_1] : memref<?xi32>
        %13 = arith.extui %12 : i32 to i64
        %c4_i64 = arith.constant 4 : i64
        %14 = arith.muli %13, %c4_i64 : i64
        %15 = arith.trunci %14 : i64 to i32
        %16 = arith.extsi %15 : i32 to i64
        %17 = arith.index_cast %16 : i64 to index
        %c4 = arith.constant 4 : index
        %18 = arith.divui %17, %c4 : index
        %19 = memref.alloc(%18) : memref<?xf32>
        %c0_2 = arith.constant 0 : index
        memref.store %19, %1[%c0_2] : memref<?xmemref<?xf32>>
        scf.yield
      }
    }
    %10 = memref.load %5[] : memref<i1>
    scf.if %10 {
      scf.execute_region {
        %12 = memref.load %5[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            %c0_1 = arith.constant 0 : index
            %13 = memref.load %1[%c0_1] : memref<?xmemref<?xf32>>
            memref.store %13, %7[] : memref<memref<?xf32>>
            %false = arith.constant false
            memref.store %false, %5[] : memref<i1>
            memref.store %false, %6[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %11 = memref.load %7[] : memref<memref<?xf32>>
    return %11 : memref<?xf32>
  }
  func @_Z18bpnn_randomize_rowPfi(%arg0: memref<?xf32>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %0 = memref.alloca() : memref<1xi32>
    %1 = memref.cast %0 : memref<1xi32> to memref<?xi32>
    %c0_0 = arith.constant 0 : index
    %2 = llvm.mlir.undef : i32
    memref.store %2, %1[%c0_0] : memref<?xi32>
    %3 = memref.alloca() : memref<1xi32>
    %4 = memref.cast %3 : memref<1xi32> to memref<?xi32>
    %c0_1 = arith.constant 0 : index
    %5 = llvm.mlir.undef : i32
    memref.store %5, %4[%c0_1] : memref<?xi32>
    %6 = memref.alloca() : memref<1xmemref<?xf32>>
    %7 = memref.cast %6 : memref<1xmemref<?xf32>> to memref<?xmemref<?xf32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg0, %7[%c0_2] : memref<?xmemref<?xf32>>
    %c0_3 = arith.constant 0 : index
    memref.store %arg1, %4[%c0_3] : memref<?xi32>
    %true = arith.constant true
    %8 = memref.alloca() : memref<i1>
    %9 = memref.alloca() : memref<i1>
    memref.store %true, %9[] : memref<i1>
    memref.store %true, %8[] : memref<i1>
    %10 = memref.load %8[] : memref<i1>
    scf.if %10 {
      scf.execute_region {
        %12 = memref.load %8[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %11 = memref.load %8[] : memref<i1>
    scf.if %11 {
      scf.execute_region {
        %12 = memref.load %8[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_4 = arith.constant 0 : index
            memref.store %c0_i32, %1[%c0_4] : memref<?xi32>
            %true_5 = arith.constant true
            %13 = memref.alloca() : memref<i1>
            %14 = memref.alloca() : memref<i1>
            memref.store %true_5, %14[] : memref<i1>
            br ^bb1
          ^bb1:  // 2 preds: ^bb0, ^bb2
            %c0_6 = arith.constant 0 : index
            %15 = memref.load %1[%c0_6] : memref<?xi32>
            %c0_7 = arith.constant 0 : index
            %16 = memref.load %4[%c0_7] : memref<?xi32>
            %17 = arith.cmpi sle, %15, %16 : i32
            %18 = arith.extui %17 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %19 = arith.cmpi ne, %18, %c0_i8 : i8
            %20 = memref.load %14[] : memref<i1>
            %21 = arith.andi %19, %20 : i1
            cond_br %21, ^bb2, ^bb3
          ^bb2:  // pred: ^bb1
            %22 = memref.load %14[] : memref<i1>
            memref.store %22, %13[] : memref<i1>
            %23 = memref.load %13[] : memref<i1>
            scf.if %23 {
              scf.execute_region {
                %c0_10 = arith.constant 0 : index
                %26 = memref.load %7[%c0_10] : memref<?xmemref<?xf32>>
                %c0_11 = arith.constant 0 : index
                %27 = memref.load %1[%c0_11] : memref<?xi32>
                %28 = arith.index_cast %27 : i32 to index
                %29 = "polygeist.subindex"(%26, %28) : (memref<?xf32>, index) -> memref<?xf32>
                %30 = "polygeist.subindex"(%29, %c0) : (memref<?xf32>, index) -> memref<?xf32>
                %cst = arith.constant 1.000000e-01 : f64
                %cst_12 = arith.constant 1.000000e-01 : f32
                %c0_13 = arith.constant 0 : index
                memref.store %cst_12, %30[%c0_13] : memref<?xf32>
                scf.yield
              }
            }
            %c0_8 = arith.constant 0 : index
            %24 = memref.load %1[%c0_8] : memref<?xi32>
            %c1_i32 = arith.constant 1 : i32
            %25 = arith.addi %24, %c1_i32 : i32
            %c0_9 = arith.constant 0 : index
            memref.store %25, %1[%c0_9] : memref<?xi32>
            br ^bb1
          ^bb3:  // pred: ^bb1
            scf.yield
          }
        }
        scf.yield
      }
    }
    return
  }
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(i32, memref<?xf32>)> : (i64) -> !llvm.ptr<!llvm.struct<(i32, memref<?xf32>)>>
    %1 = memref.alloca() : memref<1xi32>
    %2 = memref.cast %1 : memref<1xi32> to memref<?xi32>
    %c0 = arith.constant 0 : index
    %3 = llvm.mlir.undef : i32
    memref.store %3, %2[%c0] : memref<?xi32>
    %c1_i64_0 = arith.constant 1 : i64
    %4 = llvm.alloca %c1_i64_0 x !llvm.ptr<ptr<i8>> : (i64) -> !llvm.ptr<ptr<ptr<i8>>>
    %5 = memref.alloca() : memref<1xi32>
    %6 = memref.cast %5 : memref<1xi32> to memref<?xi32>
    %c0_1 = arith.constant 0 : index
    %7 = llvm.mlir.undef : i32
    memref.store %7, %6[%c0_1] : memref<?xi32>
    %c0_2 = arith.constant 0 : index
    memref.store %arg0, %6[%c0_2] : memref<?xi32>
    llvm.store %arg1, %4 : !llvm.ptr<ptr<ptr<i8>>>
    %true = arith.constant true
    %8 = memref.alloca() : memref<i1>
    %9 = memref.alloca() : memref<i1>
    memref.store %true, %9[] : memref<i1>
    memref.store %true, %8[] : memref<i1>
    %10 = memref.alloca() : memref<i32>
    %11 = llvm.mlir.undef : i32
    memref.store %11, %10[] : memref<i32>
    %12 = memref.load %8[] : memref<i1>
    scf.if %12 {
      scf.execute_region {
        %19 = memref.load %8[] : memref<i1>
        scf.if %19 {
          scf.execute_region {
            %c1_i32 = arith.constant 1 : i32
            %c0_3 = arith.constant 0 : index
            memref.store %c1_i32, %2[%c0_3] : memref<?xi32>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %13 = memref.load %8[] : memref<i1>
    scf.if %13 {
      scf.execute_region {
        %19 = memref.load %8[] : memref<i1>
        scf.if %19 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %14 = memref.load %8[] : memref<i1>
    scf.if %14 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c1_i32 = arith.constant 1 : i32
        %19 = llvm.getelementptr %0[%c0_i32, %c1_i32] : (!llvm.ptr<!llvm.struct<(i32, memref<?xf32>)>>, i32, i32) -> !llvm.ptr<memref<?xf32>>
        %c0_3 = arith.constant 0 : index
        %20 = memref.load %2[%c0_3] : memref<?xi32>
        %c1_i32_4 = arith.constant 1 : i32
        %21 = arith.addi %20, %c1_i32_4 : i32
        %22 = call @_Z12alloc_1d_dbli(%21) : (i32) -> memref<?xf32>
        llvm.store %22, %19 : !llvm.ptr<memref<?xf32>>
        scf.yield
      }
    }
    %15 = memref.load %8[] : memref<i1>
    scf.if %15 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c1_i32 = arith.constant 1 : i32
        %19 = llvm.getelementptr %0[%c0_i32, %c1_i32] : (!llvm.ptr<!llvm.struct<(i32, memref<?xf32>)>>, i32, i32) -> !llvm.ptr<memref<?xf32>>
        %20 = llvm.load %19 : !llvm.ptr<memref<?xf32>>
        %c0_3 = arith.constant 0 : index
        %21 = memref.load %2[%c0_3] : memref<?xi32>
        call @_Z18bpnn_randomize_rowPfi(%20, %21) : (memref<?xf32>, i32) -> ()
        scf.yield
      }
    }
    %16 = memref.load %8[] : memref<i1>
    scf.if %16 {
      scf.execute_region {
        %19 = llvm.mlir.addressof @str0 : !llvm.ptr<array<26 x i8>>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_3 = arith.constant 0 : i32
        %20 = llvm.getelementptr %19[%c0_i32, %c0_i32_3] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %21 = llvm.call @printf(%20) : (!llvm.ptr<i8>) -> i32
        scf.yield
      }
    }
    %17 = memref.load %8[] : memref<i1>
    scf.if %17 {
      scf.execute_region {
        %19 = memref.load %8[] : memref<i1>
        scf.if %19 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            memref.store %c0_i32, %10[] : memref<i32>
            %false = arith.constant false
            memref.store %false, %8[] : memref<i1>
            memref.store %false, %9[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %18 = memref.load %10[] : memref<i32>
    return %18 : i32
  }
}
