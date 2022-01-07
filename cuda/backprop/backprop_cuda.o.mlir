module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Starting training kernel\0A\00")
  func @alloc_1d_dbl(%arg0: i32) -> memref<?xf32> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %0 = arith.extui %arg0 : i32 to i64
    %1 = arith.muli %0, %c4_i64 : i64
    %2 = arith.trunci %1 : i64 to i32
    %3 = arith.extui %2 : i32 to i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = arith.divui %4, %c4 : index
    %6 = memref.alloc(%5) : memref<?xf32>
    return %6 : memref<?xf32>
  }
  func @bpnn_randomize_row(%arg0: memref<?xf32>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 1.000000e-01 : f32
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.addi %0, %c1 : index
    scf.for %arg2 = %c0 to %1 step %c1 {
      memref.store %cst, %arg0[%arg2] : memref<?xf32>
    }
    return
  }
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2 = arith.constant 2 : index
    %cst = arith.constant 1.000000e-01 : f32
    %c1_i32 = arith.constant 1 : i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(i32, memref<?xf32>)> : (i64) -> !llvm.ptr<!llvm.struct<(i32, memref<?xf32>)>>
    %1 = llvm.getelementptr %0[%c0_i32, %c1_i32] : (!llvm.ptr<!llvm.struct<(i32, memref<?xf32>)>>, i32, i32) -> !llvm.ptr<memref<?xf32>>
    %2 = llvm.load %1 : !llvm.ptr<memref<?xf32>>
    scf.for %arg2 = %c0 to %c2 step %c1 {
      memref.store %cst, %2[%arg2] : memref<?xf32>
    }
    %3 = llvm.mlir.addressof @str0 : !llvm.ptr<array<26 x i8>>
    %4 = llvm.getelementptr %3[%c0_i32, %c0_i32] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %5 = llvm.call @printf(%4) : (!llvm.ptr<i8>) -> i32
    return %c0_i32 : i32
  }
}
