module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, gpu.container_module, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", polygeist.gpu_module.llvm.data_layout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64", polygeist.gpu_module.llvm.target_triple = "nvptx64-nvidia-cuda", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  gpu.module @__polygeist_gpu_module {
    memref.global @shared_mem_168977072 : memref<100x!llvm.struct<(f64, f64, f64, f64)>, 3> = uninitialized
    memref.global @shared_mem_169842400 : memref<100x!llvm.struct<(f64, f64, f64, f64)>, 3> = uninitialized
    gpu.func @kernel_gpu_cuda_wrapper_kernel169934544(%arg0: !llvm.struct<(f64)>, %arg1: !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, %arg2: memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, %arg3: memref<?x!llvm.struct<(f64, f64, f64, f64)>>, %arg4: memref<?xf64>, %arg5: memref<?x!llvm.struct<(f64, f64, f64, f64)>>) kernel {
      func.call @_Z30__device_stub__kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (!llvm.struct<(f64)>, !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>, memref<?xf64>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> ()
      gpu.return
    }
    func.func private @_Z30__device_stub__kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(%arg0: !llvm.struct<(f64)>, %arg1: !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, %arg2: memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, %arg3: memref<?x!llvm.struct<(f64, f64, f64, f64)>>, %arg4: memref<?xf64>, %arg5: memref<?x!llvm.struct<(f64, f64, f64, f64)>>) attributes {llvm.linkage = #llvm.linkage<external>, polygeist.device_only_func = "1"} {
      call @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (!llvm.struct<(f64)>, !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>, memref<?xf64>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> ()
      return
    }
    func.func private @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(%arg0: !llvm.struct<(f64)>, %arg1: !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, %arg2: memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, %arg3: memref<?x!llvm.struct<(f64, f64, f64, f64)>>, %arg4: memref<?xf64>, %arg5: memref<?x!llvm.struct<(f64, f64, f64, f64)>>) attributes {llvm.linkage = #llvm.linkage<external>, polygeist.device_only_func = "1"} {
      %c-1_i32 = arith.constant -1 : i32
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c100 = arith.constant 100 : index
      %c128 = arith.constant 128 : index
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %0 = memref.get_global @shared_mem_168977072 : memref<100x!llvm.struct<(f64, f64, f64, f64)>, 3>
      %1 = "polygeist.memref2pointer"(%0) : (memref<100x!llvm.struct<(f64, f64, f64, f64)>, 3>) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
      %2 = "polygeist.pointer2memref"(%1) : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> memref<100x!llvm.struct<(f64, f64, f64, f64)>>
      %3 = memref.get_global @shared_mem_169842400 : memref<100x!llvm.struct<(f64, f64, f64, f64)>, 3>
      %4 = "polygeist.memref2pointer"(%3) : (memref<100x!llvm.struct<(f64, f64, f64, f64)>, 3>) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
      %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> memref<100x!llvm.struct<(f64, f64, f64, f64)>>
      %alloca = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
      memref.store %arg1, %alloca[%c0] : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
      %6 = gpu.block_id  x
      %7 = arith.index_cast %6 : index to i32
      %8 = gpu.thread_id  x
      %9 = arith.extsi %7 : i32 to i64
      %10 = "polygeist.memref2pointer"(%alloca) : (memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
      %11 = llvm.getelementptr %10[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
      %12 = llvm.load %11 : !llvm.ptr<i64>
      %13 = arith.cmpi slt, %9, %12 : i64
      scf.if %13 {
        %14 = arith.index_cast %6 : index to i64
        %15 = "polygeist.memref2pointer"(%arg2) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>
        %16 = llvm.getelementptr %15[%14] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>
        %17 = llvm.getelementptr %16[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i64>
        %18 = llvm.load %17 : !llvm.ptr<i64>
        %19 = arith.trunci %18 : i64 to i32
        %20 = arith.index_cast %19 : i32 to index
        scf.for %arg6 = %8 to %c100 step %c128 {
          %23 = "polygeist.subindex"(%5, %arg6) : (memref<100x!llvm.struct<(f64, f64, f64, f64)>>, index) -> memref<?x!llvm.struct<(f64, f64, f64, f64)>>
          %24 = arith.addi %arg6, %20 : index
          %25 = "polygeist.subindex"(%arg3, %24) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>, index) -> memref<?x!llvm.struct<(f64, f64, f64, f64)>>
          %26 = func.call @_ZN11FOUR_VECTORaSERKS_(%23, %25) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> memref<?x!llvm.struct<(f64, f64, f64, f64)>>
        }
        nvvm.barrier0
        %21 = llvm.getelementptr %16[0, 5] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i32>
        %22 = scf.while (%arg6 = %c0_i32) : (i32) -> i32 {
          %23 = llvm.load %21 : !llvm.ptr<i32>
          %24 = arith.addi %23, %c1_i32 : i32
          %25 = arith.cmpi slt, %arg6, %24 : i32
          scf.condition(%25) %arg6 : i32
        } do {
        ^bb0(%arg6: i32):
          %23 = arith.cmpi eq, %arg6, %c0_i32 : i32
          %24 = scf.if %23 -> (i32) {
            scf.yield %7 : i32
          } else {
            %36 = llvm.getelementptr %16[0, 7] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<array<26 x struct<(i32, i32, i32, i32, i64)>>>
            %37 = arith.addi %arg6, %c-1_i32 : i32
            %38 = arith.index_cast %37 : i32 to index
            %39 = arith.index_cast %38 : index to i64
            %40 = llvm.bitcast %36 : !llvm.ptr<array<26 x struct<(i32, i32, i32, i32, i64)>>> to !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
            %41 = llvm.getelementptr %40[%39] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
            %42 = llvm.getelementptr %41[0, 3] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
            %43 = llvm.load %42 : !llvm.ptr<i32>
            scf.yield %43 : i32
          }
          %25 = arith.index_cast %24 : i32 to index
          %26 = arith.index_cast %25 : index to i64
          %27 = llvm.getelementptr %15[%26] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>
          %28 = llvm.getelementptr %27[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i64>
          %29 = llvm.load %28 : !llvm.ptr<i64>
          %30 = arith.trunci %29 : i64 to i32
          %31 = arith.index_cast %30 : i32 to index
          scf.for %arg7 = %8 to %c100 step %c128 {
            %36 = "polygeist.subindex"(%2, %arg7) : (memref<100x!llvm.struct<(f64, f64, f64, f64)>>, index) -> memref<?x!llvm.struct<(f64, f64, f64, f64)>>
            %37 = arith.addi %arg7, %31 : index
            %38 = "polygeist.subindex"(%arg3, %37) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>, index) -> memref<?x!llvm.struct<(f64, f64, f64, f64)>>
            %39 = func.call @_ZN11FOUR_VECTORaSERKS_(%36, %38) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> memref<?x!llvm.struct<(f64, f64, f64, f64)>>
          }
          nvvm.barrier0
          %32 = arith.index_cast %20 : index to i64
          %33 = "polygeist.memref2pointer"(%arg5) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
          %34 = llvm.getelementptr %33[%32] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>, i64) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
          scf.for %arg7 = %8 to %c100 step %c128 {
            %36 = arith.index_cast %arg7 : index to i64
            %37 = llvm.getelementptr %4[%36] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>, i64) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
            %38 = llvm.getelementptr %37[0, 0] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
            %39 = llvm.getelementptr %34[%36] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>, i64) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
            %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
            %41 = llvm.getelementptr %39[0, 1] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
            %42 = llvm.getelementptr %39[0, 2] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
            %43 = llvm.getelementptr %39[0, 3] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
            %44 = llvm.load %38 : !llvm.ptr<f64>
            scf.for %arg8 = %c0 to %c100 step %c1 {
              %45 = llvm.load %40 : !llvm.ptr<f64>
              %46 = arith.addf %45, %44 : f64
              llvm.store %46, %40 : !llvm.ptr<f64>
              %47 = llvm.load %41 : !llvm.ptr<f64>
              %48 = arith.addf %47, %44 : f64
              llvm.store %48, %41 : !llvm.ptr<f64>
              %49 = llvm.load %42 : !llvm.ptr<f64>
              %50 = arith.addf %49, %44 : f64
              llvm.store %50, %42 : !llvm.ptr<f64>
              %51 = llvm.load %43 : !llvm.ptr<f64>
              %52 = arith.addf %51, %44 : f64
              llvm.store %52, %43 : !llvm.ptr<f64>
            }
          }
          nvvm.barrier0
          %35 = arith.addi %arg6, %c1_i32 : i32
          scf.yield %35 : i32
        }
      }
      return
    }
    func.func private @_ZN11FOUR_VECTORaSERKS_(%arg0: memref<?x!llvm.struct<(f64, f64, f64, f64)>>, %arg1: memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> memref<?x!llvm.struct<(f64, f64, f64, f64)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
      %0 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
      %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %2 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
      %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %4 = llvm.load %3 : !llvm.ptr<f64>
      llvm.store %4, %1 : !llvm.ptr<f64>
      %5 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %6 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %7 = llvm.load %6 : !llvm.ptr<f64>
      llvm.store %7, %5 : !llvm.ptr<f64>
      %8 = llvm.getelementptr %0[0, 2] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %9 = llvm.getelementptr %2[0, 2] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %10 = llvm.load %9 : !llvm.ptr<f64>
      llvm.store %10, %8 : !llvm.ptr<f64>
      %11 = llvm.getelementptr %0[0, 3] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %12 = llvm.getelementptr %2[0, 3] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
      %13 = llvm.load %12 : !llvm.ptr<f64>
      llvm.store %13, %11 : !llvm.ptr<f64>
      return %arg0 : memref<?x!llvm.struct<(f64, f64, f64, f64)>>
    }
  }
  llvm.mlir.global internal constant @str50("%s,%s,%.17g,%s,%s,%d,\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str49("eb30eb97f978.polygeist.gpu\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str48("HOSTNAME\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str47("Could not open timing file %s, errno %d, %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str46("a\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stdout() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str45("-\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str44("MY_TIMING_FILE\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str43("Configuration used: boxes1d = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str42("ERROR: Unknown parameter\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str41("ERROR: Missing value to -boxes1d parameter\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str40("ERROR: Value to -boxes1d parameter in not a number\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str39("ERROR: Wrong value to -boxes1d parameter, cannot be <=0\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str38("-boxes1d\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str37("thread block size of kernel = %d \0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str36("%.12f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str35("Total time:\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str34("%15.12f s, %15.12f % : GPU MEM: FRE\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str33("%15.12f s, %15.12f % : GPU MEM: COPY OUT\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str32("%15.12f s, %15.12f % : GPU: KERNEL\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str31("%15.12f s, %15.12f % : GPU MEM: COPY IN\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str30("%15.12f s, %15.12f % : GPU MEM: ALO\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str29("%15.12f s, %15.12f % : GPU: SET DEVICE / DRIVER INIT\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str28("Time spent in different stages of GPU_CUDA KERNEL:\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str27("Verification of %s ended\0Aresult: %s\0Alargest absolute error: %.17g\0Alargest relative error: %.17g\0Alargest relative error (between non-zero): %.17g\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str26("FAIL\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str25("PASS\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str24("Halting\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str23("result: FAIL\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str22("relative error: %.17g, between non-zero: %.17g, absolute_error: %.17g\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str21("%.17g != %.17g expected\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str20("Verification of %s failed at %s:%s, el %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str19("rb\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str18("Starting verification of %s of type %s from file %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str17("Could not open file %s, errno %d, %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str16("wb\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str15("double\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str14("fv_cpu\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str13("Dumping verification info of %s of type %s to file %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str12("MY_VERIFICATION_DUMP\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str11("%s/%s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str10("%s/%s/%s\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("%s:%s\00") {addr_space = 0 : i32}
  llvm.func @sprintf(!llvm.ptr<i8>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str8("254\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("MY_APP_NAME not defined, using empty string\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @stderr() {addr_space = 0 : i32} : memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str6("MY_APP_NAME\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("main.cu\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("MY_VERIFICATION_HALT_WHEN_INCORRECT\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("MY_VERIFICATION_DIR\00") {addr_space = 0 : i32}
  memref.global "private" @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done_0@init" : memref<1xi1> = dense<true>
  memref.global "private" @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done_0" : memref<1xi32> = uninitialized
  llvm.mlir.global internal constant @str2("Start\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("lavaMD\00") {addr_space = 0 : i32}
  memref.global "private" @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done@init" : memref<1xi1> = dense<true>
  memref.global "private" @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done" : memref<1xi32> = uninitialized
  func.func @kernel_gpu_cuda_wrapper(%arg0: !llvm.struct<(f64)>, %arg1: !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, %arg2: memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, %arg3: memref<?x!llvm.struct<(f64, f64, f64, f64)>>, %arg4: memref<?xf64>, %arg5: memref<?x!llvm.struct<(f64, f64, f64, f64)>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %cst = arith.constant 5.6843418860808015E-14 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c8_i64 = arith.constant 8 : i64
    %cst_1 = arith.constant 1.000000e+02 : f32
    %cst_2 = arith.constant 1.000000e+06 : f32
    %cst_3 = arith.constant 1.7976931348623157E+308 : f64
    %cst_4 = arith.constant 2.2250738585072014E-308 : f64
    %c511_i32 = arith.constant 511 : i32
    %c3_i64 = arith.constant 3 : i64
    %c2_i64 = arith.constant 2 : i64
    %c47_i32 = arith.constant 47 : i32
    %c2_i32 = arith.constant 2 : i32
    %cst_5 = arith.constant 1.000000e-09 : f64
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c128_i32 = arith.constant 128 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c1 = arith.constant 1 : index
    %alloca = memref.alloca() : memref<1xi8>
    %0 = memref.get_global @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done_0" : memref<1xi32>
    %alloca_6 = memref.alloca() : memref<1x!llvm.struct<(i64, i64)>>
    %1 = memref.get_global @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done" : memref<1xi32>
    %alloca_7 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32)>>
    %cast = memref.cast %alloca_7 : memref<1x!llvm.struct<(i32, i32, i32)>> to memref<?x!llvm.struct<(i32, i32, i32)>>
    %alloca_8 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32)>>
    %cast_9 = memref.cast %alloca_8 : memref<1x!llvm.struct<(i32, i32, i32)>> to memref<?x!llvm.struct<(i32, i32, i32)>>
    %alloca_10 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %cast_11 = memref.cast %alloca_10 : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>> to memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %alloca_12 = memref.alloca() : memref<1x!llvm.struct<(f64)>>
    %cast_13 = memref.cast %alloca_12 : memref<1x!llvm.struct<(f64)>> to memref<?x!llvm.struct<(f64)>>
    %alloca_14 = memref.alloca() : memref<1x!llvm.struct<(i64, i64)>>
    %alloca_15 = memref.alloca() : memref<1x!llvm.struct<(i64, i64)>>
    %alloca_16 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32)>>
    %cast_17 = memref.cast %alloca_16 : memref<1x!llvm.struct<(i32, i32, i32)>> to memref<?x!llvm.struct<(i32, i32, i32)>>
    %alloca_18 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32)>>
    %cast_19 = memref.cast %alloca_18 : memref<1x!llvm.struct<(i32, i32, i32)>> to memref<?x!llvm.struct<(i32, i32, i32)>>
    %alloca_20 = memref.alloca() : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %alloca_21 = memref.alloca() : memref<1xmemref<?xf64>>
    %alloca_22 = memref.alloca() : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %alloca_23 = memref.alloca() : memref<1xmemref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>>
    %alloca_24 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %cast_25 = memref.cast %alloca_24 : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>> to memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %alloca_26 = memref.alloca() : memref<1x!llvm.struct<(f64)>>
    %cast_27 = memref.cast %alloca_26 : memref<1x!llvm.struct<(f64)>> to memref<?x!llvm.struct<(f64)>>
    memref.store %arg0, %alloca_26[%c0] : memref<1x!llvm.struct<(f64)>>
    memref.store %arg1, %alloca_24[%c0] : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %2 = call @get_time() : () -> i64
    %3 = call @cudaThreadSynchronize() : () -> i32
    call @_ZN4dim3C1Ejjj(%cast_19, %c1_i32, %c1_i32, %c1_i32) : (memref<?x!llvm.struct<(i32, i32, i32)>>, i32, i32, i32) -> ()
    call @_ZN4dim3C1Ejjj(%cast_17, %c1_i32, %c1_i32, %c1_i32) : (memref<?x!llvm.struct<(i32, i32, i32)>>, i32, i32, i32) -> ()
    %4 = "polygeist.memref2pointer"(%alloca_16) : (memref<1x!llvm.struct<(i32, i32, i32)>>) -> !llvm.ptr<struct<(i32, i32, i32)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %6 = "polygeist.memref2pointer"(%alloca_24) : (memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %7 = llvm.getelementptr %6[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %8 = llvm.load %7 : !llvm.ptr<i64>
    %9 = arith.trunci %8 : i64 to i32
    llvm.store %9, %5 : !llvm.ptr<i32>
    %10 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %10 : !llvm.ptr<i32>
    %11 = "polygeist.memref2pointer"(%alloca_18) : (memref<1x!llvm.struct<(i32, i32, i32)>>) -> !llvm.ptr<struct<(i32, i32, i32)>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %c128_i32, %12 : !llvm.ptr<i32>
    %13 = llvm.getelementptr %11[0, 1] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %13 : !llvm.ptr<i32>
    %14 = call @get_time() : () -> i64
    %15 = "polygeist.memref2pointer"(%alloca_23) : (memref<1xmemref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>>) -> !llvm.ptr<i8>
    %16 = "polygeist.pointer2memref"(%15) : (!llvm.ptr<i8>) -> memref<?xmemref<?xi8>>
    %17 = llvm.getelementptr %6[0, 5] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = call @cudaMalloc(%16, %18) : (memref<?xmemref<?xi8>>, i64) -> i32
    %20 = "polygeist.memref2pointer"(%alloca_22) : (memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>) -> !llvm.ptr<i8>
    %21 = "polygeist.pointer2memref"(%20) : (!llvm.ptr<i8>) -> memref<?xmemref<?xi8>>
    %22 = llvm.getelementptr %6[0, 7] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %23 = llvm.load %22 : !llvm.ptr<i64>
    %24 = call @cudaMalloc(%21, %23) : (memref<?xmemref<?xi8>>, i64) -> i32
    %25 = "polygeist.memref2pointer"(%alloca_21) : (memref<1xmemref<?xf64>>) -> !llvm.ptr<i8>
    %26 = "polygeist.pointer2memref"(%25) : (!llvm.ptr<i8>) -> memref<?xmemref<?xi8>>
    %27 = llvm.getelementptr %6[0, 8] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = call @cudaMalloc(%26, %28) : (memref<?xmemref<?xi8>>, i64) -> i32
    %30 = "polygeist.memref2pointer"(%alloca_20) : (memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>) -> !llvm.ptr<i8>
    %31 = "polygeist.pointer2memref"(%30) : (!llvm.ptr<i8>) -> memref<?xmemref<?xi8>>
    %32 = llvm.load %22 : !llvm.ptr<i64>
    %33 = call @cudaMalloc(%31, %32) : (memref<?xmemref<?xi8>>, i64) -> i32
    %34 = call @get_time() : () -> i64
    %35 = memref.load %alloca_23[%c0] : memref<1xmemref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>>
    %36 = "polygeist.memref2pointer"(%35) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i8>
    %37 = "polygeist.pointer2memref"(%36) : (!llvm.ptr<i8>) -> memref<?xi8>
    %38 = "polygeist.memref2pointer"(%arg2) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i8>
    %39 = "polygeist.pointer2memref"(%38) : (!llvm.ptr<i8>) -> memref<?xi8>
    %40 = llvm.load %17 : !llvm.ptr<i64>
    %41 = call @cudaMemcpy(%37, %39, %40, %c1_i32) : (memref<?xi8>, memref<?xi8>, i64, i32) -> i32
    %42 = memref.load %alloca_22[%c0] : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %43 = "polygeist.memref2pointer"(%42) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<i8>
    %44 = "polygeist.pointer2memref"(%43) : (!llvm.ptr<i8>) -> memref<?xi8>
    %45 = "polygeist.memref2pointer"(%arg3) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<i8>
    %46 = "polygeist.pointer2memref"(%45) : (!llvm.ptr<i8>) -> memref<?xi8>
    %47 = llvm.load %22 : !llvm.ptr<i64>
    %48 = call @cudaMemcpy(%44, %46, %47, %c1_i32) : (memref<?xi8>, memref<?xi8>, i64, i32) -> i32
    %49 = memref.load %alloca_21[%c0] : memref<1xmemref<?xf64>>
    %50 = "polygeist.memref2pointer"(%49) : (memref<?xf64>) -> !llvm.ptr<i8>
    %51 = "polygeist.pointer2memref"(%50) : (!llvm.ptr<i8>) -> memref<?xi8>
    %52 = "polygeist.memref2pointer"(%arg4) : (memref<?xf64>) -> !llvm.ptr<i8>
    %53 = "polygeist.pointer2memref"(%52) : (!llvm.ptr<i8>) -> memref<?xi8>
    %54 = llvm.load %27 : !llvm.ptr<i64>
    %55 = call @cudaMemcpy(%51, %53, %54, %c1_i32) : (memref<?xi8>, memref<?xi8>, i64, i32) -> i32
    %56 = memref.load %alloca_20[%c0] : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %57 = "polygeist.memref2pointer"(%56) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<i8>
    %58 = "polygeist.pointer2memref"(%57) : (!llvm.ptr<i8>) -> memref<?xi8>
    %59 = "polygeist.memref2pointer"(%arg5) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<i8>
    %60 = "polygeist.pointer2memref"(%59) : (!llvm.ptr<i8>) -> memref<?xi8>
    %61 = llvm.load %22 : !llvm.ptr<i64>
    %62 = call @cudaMemcpy(%58, %60, %61, %c1_i32) : (memref<?xi8>, memref<?xi8>, i64, i32) -> i32
    %63 = call @get_time() : () -> i64
    %64 = call @cudaDeviceSynchronize() : () -> i32
    %cast_28 = memref.cast %alloca_15 : memref<1x!llvm.struct<(i64, i64)>> to memref<?x!llvm.struct<(i64, i64)>>
    %65 = call @clock_gettime(%c1_i32, %cast_28) : (i32, memref<?x!llvm.struct<(i64, i64)>>) -> i32
    call @_ZN7par_strC1ERKS_(%cast_13, %cast_27) : (memref<?x!llvm.struct<(f64)>>, memref<?x!llvm.struct<(f64)>>) -> ()
    call @_ZN7dim_strC1ERKS_(%cast_11, %cast_25) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>, memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> ()
    %66 = memref.load %alloca_23[%c0] : memref<1xmemref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>>
    %67 = memref.load %alloca_22[%c0] : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %68 = memref.load %alloca_21[%c0] : memref<1xmemref<?xf64>>
    %69 = memref.load %alloca_20[%c0] : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %70 = memref.load %alloca_12[%c0] : memref<1x!llvm.struct<(f64)>>
    %71 = memref.load %alloca_10[%c0] : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    call @_ZN4dim3C1ERKS_(%cast_9, %cast_17) : (memref<?x!llvm.struct<(i32, i32, i32)>>, memref<?x!llvm.struct<(i32, i32, i32)>>) -> ()
    %72 = "polygeist.memref2pointer"(%alloca_8) : (memref<1x!llvm.struct<(i32, i32, i32)>>) -> !llvm.ptr<struct<(i32, i32, i32)>>
    %73 = llvm.getelementptr %72[0, 0] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %74 = llvm.load %73 : !llvm.ptr<i32>
    %75 = arith.index_cast %74 : i32 to index
    %76 = llvm.getelementptr %72[0, 1] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %77 = llvm.load %76 : !llvm.ptr<i32>
    %78 = arith.index_cast %77 : i32 to index
    %79 = llvm.getelementptr %72[0, 2] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %80 = llvm.load %79 : !llvm.ptr<i32>
    %81 = arith.index_cast %80 : i32 to index
    call @_ZN4dim3C1ERKS_(%cast, %cast_19) : (memref<?x!llvm.struct<(i32, i32, i32)>>, memref<?x!llvm.struct<(i32, i32, i32)>>) -> ()
    %82 = "polygeist.memref2pointer"(%alloca_7) : (memref<1x!llvm.struct<(i32, i32, i32)>>) -> !llvm.ptr<struct<(i32, i32, i32)>>
    %83 = llvm.getelementptr %82[0, 0] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %84 = llvm.load %83 : !llvm.ptr<i32>
    %85 = arith.index_cast %84 : i32 to index
    %86 = llvm.getelementptr %82[0, 1] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %87 = llvm.load %86 : !llvm.ptr<i32>
    %88 = arith.index_cast %87 : i32 to index
    %89 = llvm.getelementptr %82[0, 2] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %90 = llvm.load %89 : !llvm.ptr<i32>
    %91 = arith.index_cast %90 : i32 to index
    gpu.launch_func  @__polygeist_gpu_module::@kernel_gpu_cuda_wrapper_kernel169934544 blocks in (%75, %78, %81) threads in (%85, %88, %91) args(%70 : !llvm.struct<(f64)>, %71 : !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, %66 : memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, %67 : memref<?x!llvm.struct<(f64, f64, f64, f64)>>, %68 : memref<?xf64>, %69 : memref<?x!llvm.struct<(f64, f64, f64, f64)>>)
    %92 = call @cudaDeviceSynchronize() : () -> i32
    %93 = memref.get_global @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done@init" : memref<1xi1>
    %94 = memref.load %93[%c0] : memref<1xi1>
    scf.if %94 {
      memref.store %false, %93[%c0] : memref<1xi1>
      memref.store %c0_i32, %1[%c0] : memref<1xi32>
    }
    %95 = memref.load %1[%c0] : memref<1xi32>
    %96 = arith.cmpi ne, %95, %c0_i32 : i32
    scf.if %96 {
    } else {
      memref.store %c1_i32, %1[%c0] : memref<1xi32>
      %cast_29 = memref.cast %alloca_14 : memref<1x!llvm.struct<(i64, i64)>> to memref<?x!llvm.struct<(i64, i64)>>
      %201 = func.call @clock_gettime(%c1_i32, %cast_29) : (i32, memref<?x!llvm.struct<(i64, i64)>>) -> i32
      %202 = "polygeist.memref2pointer"(%alloca_6) : (memref<1x!llvm.struct<(i64, i64)>>) -> !llvm.ptr<struct<(i64, i64)>>
      %203 = llvm.getelementptr %202[0, 0] : (!llvm.ptr<struct<(i64, i64)>>) -> !llvm.ptr<i64>
      %204 = "polygeist.memref2pointer"(%alloca_14) : (memref<1x!llvm.struct<(i64, i64)>>) -> !llvm.ptr<struct<(i64, i64)>>
      %205 = llvm.getelementptr %204[0, 0] : (!llvm.ptr<struct<(i64, i64)>>) -> !llvm.ptr<i64>
      %206 = llvm.load %205 : !llvm.ptr<i64>
      %207 = "polygeist.memref2pointer"(%alloca_15) : (memref<1x!llvm.struct<(i64, i64)>>) -> !llvm.ptr<struct<(i64, i64)>>
      %208 = llvm.getelementptr %207[0, 0] : (!llvm.ptr<struct<(i64, i64)>>) -> !llvm.ptr<i64>
      %209 = llvm.load %208 : !llvm.ptr<i64>
      %210 = arith.subi %206, %209 : i64
      llvm.store %210, %203 : !llvm.ptr<i64>
      %211 = llvm.getelementptr %202[0, 1] : (!llvm.ptr<struct<(i64, i64)>>) -> !llvm.ptr<i64>
      %212 = llvm.getelementptr %204[0, 1] : (!llvm.ptr<struct<(i64, i64)>>) -> !llvm.ptr<i64>
      %213 = llvm.load %212 : !llvm.ptr<i64>
      %214 = llvm.getelementptr %207[0, 1] : (!llvm.ptr<struct<(i64, i64)>>) -> !llvm.ptr<i64>
      %215 = llvm.load %214 : !llvm.ptr<i64>
      %216 = arith.subi %213, %215 : i64
      llvm.store %216, %211 : !llvm.ptr<i64>
      %217 = llvm.load %203 : !llvm.ptr<i64>
      %218 = arith.sitofp %217 : i64 to f64
      %219 = llvm.load %211 : !llvm.ptr<i64>
      %220 = arith.sitofp %219 : i64 to f64
      %221 = arith.mulf %220, %cst_5 : f64
      %222 = arith.addf %218, %221 : f64
      %223 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
      %224 = llvm.mlir.addressof @str1 : !llvm.ptr<array<1 x i8>>
      %225 = "polygeist.pointer2memref"(%223) : (!llvm.ptr<array<7 x i8>>) -> memref<?xi8>
      %226 = "polygeist.pointer2memref"(%224) : (!llvm.ptr<array<1 x i8>>) -> memref<?xi8>
      func.call @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%225, %226, %222) : (memref<?xi8>, memref<?xi8>, f64) -> ()
    }
    %97 = llvm.mlir.addressof @str2 : !llvm.ptr<array<6 x i8>>
    %98 = "polygeist.pointer2memref"(%97) : (!llvm.ptr<array<6 x i8>>) -> memref<?xi8>
    call @_Z14checkCUDAErrorPKc(%98) : (memref<?xi8>) -> ()
    %99 = call @cudaThreadSynchronize() : () -> i32
    %100 = call @get_time() : () -> i64
    %101 = memref.load %alloca_20[%c0] : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %102 = "polygeist.memref2pointer"(%101) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<i8>
    %103 = "polygeist.pointer2memref"(%102) : (!llvm.ptr<i8>) -> memref<?xi8>
    %104 = llvm.load %22 : !llvm.ptr<i64>
    %105 = call @cudaMemcpy(%60, %103, %104, %c2_i32) : (memref<?xi8>, memref<?xi8>, i64, i32) -> i32
    %106 = call @get_time() : () -> i64
    %107 = memref.get_global @"kernel_gpu_cuda_wrapper@static@_ZZ23kernel_gpu_cuda_wrapperE4done_0@init" : memref<1xi1>
    %108 = memref.load %107[%c0] : memref<1xi1>
    scf.if %108 {
      memref.store %false, %107[%c0] : memref<1xi1>
      memref.store %c0_i32, %0[%c0] : memref<1xi32>
    }
    %109 = memref.load %0[%c0] : memref<1xi32>
    %110 = arith.cmpi ne, %109, %c0_i32 : i32
    scf.if %110 {
    } else {
      memref.store %c1_i32, %0[%c0] : memref<1xi32>
      %201 = llvm.mlir.addressof @str3 : !llvm.ptr<array<20 x i8>>
      %202 = "polygeist.pointer2memref"(%201) : (!llvm.ptr<array<20 x i8>>) -> memref<?xi8>
      %203 = func.call @getenv(%202) : (memref<?xi8>) -> memref<?xi8>
      %204 = "polygeist.memref2pointer"(%203) : (memref<?xi8>) -> !llvm.ptr<i8>
      %205 = llvm.mlir.null : !llvm.ptr<i8>
      %206 = llvm.icmp "ne" %204, %205 : !llvm.ptr<i8>
      scf.if %206 {
        %207 = llvm.mlir.addressof @str1 : !llvm.ptr<array<1 x i8>>
        %208 = "polygeist.pointer2memref"(%207) : (!llvm.ptr<array<1 x i8>>) -> memref<?xi8>
        %209 = func.call @strcmp(%203, %208) : (memref<?xi8>, memref<?xi8>) -> i32
        %210 = arith.cmpi ne, %209, %c0_i32 : i32
        scf.if %210 {
          %211 = llvm.mlir.addressof @str4 : !llvm.ptr<array<36 x i8>>
          %212 = "polygeist.pointer2memref"(%211) : (!llvm.ptr<array<36 x i8>>) -> memref<?xi8>
          %213 = func.call @getenv(%212) : (memref<?xi8>) -> memref<?xi8>
          %214 = llvm.load %22 : !llvm.ptr<i64>
          %215 = arith.divui %214, %c8_i64 : i64
          %216 = arith.muli %215, %c8_i64 : i64
          %217 = "polygeist.pointer2memref"(%59) : (!llvm.ptr<i8>) -> memref<?xf64>
          %218 = llvm.mlir.addressof @str5 : !llvm.ptr<array<8 x i8>>
          %219 = "polygeist.pointer2memref"(%218) : (!llvm.ptr<array<8 x i8>>) -> memref<?xi8>
          %220 = func.call @strrchr(%219, %c47_i32) : (memref<?xi8>, i32) -> memref<?xi8>
          %221 = "polygeist.memref2pointer"(%220) : (memref<?xi8>) -> !llvm.ptr<i8>
          %222 = llvm.icmp "ne" %221, %205 : !llvm.ptr<i8>
          %223 = arith.select %222, %220, %219 : memref<?xi8>
          %224 = llvm.mlir.addressof @str6 : !llvm.ptr<array<12 x i8>>
          %225 = "polygeist.pointer2memref"(%224) : (!llvm.ptr<array<12 x i8>>) -> memref<?xi8>
          %226 = func.call @getenv(%225) : (memref<?xi8>) -> memref<?xi8>
          %227 = llvm.getelementptr %207[0, 0] : (!llvm.ptr<array<1 x i8>>) -> !llvm.ptr<i8>
          %228 = llvm.load %227 : !llvm.ptr<i8>
          memref.store %228, %alloca[%c0] : memref<1xi8>
          %229 = "polygeist.memref2pointer"(%226) : (memref<?xi8>) -> !llvm.ptr<i8>
          %230 = llvm.icmp "ne" %229, %205 : !llvm.ptr<i8>
          %231 = scf.if %230 -> (memref<?xi8>) {
            scf.yield %226 : memref<?xi8>
          } else {
            %270 = llvm.mlir.addressof @stderr : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %271 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %272 = "polygeist.memref2pointer"(%271) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %273 = llvm.mlir.addressof @str7 : !llvm.ptr<array<45 x i8>>
            %274 = llvm.getelementptr %273[0, 0] : (!llvm.ptr<array<45 x i8>>) -> !llvm.ptr<i8>
            %275 = llvm.call @fprintf(%272, %274) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
            %cast_31 = memref.cast %alloca : memref<1xi8> to memref<?xi8>
            scf.yield %cast_31 : memref<?xi8>
          }
          %232 = "polygeist.memref2pointer"(%223) : (memref<?xi8>) -> !llvm.ptr<i8>
          %233 = func.call @strlen(%232) : (!llvm.ptr<i8>) -> i64
          %234 = llvm.mlir.addressof @str8 : !llvm.ptr<array<4 x i8>>
          %235 = llvm.getelementptr %234[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
          %236 = func.call @strlen(%235) : (!llvm.ptr<i8>) -> i64
          %237 = arith.addi %233, %236 : i64
          %238 = arith.addi %237, %c2_i64 : i64
          %239 = arith.index_cast %238 : i64 to index
          %alloc = memref.alloc(%239) : memref<?xi8>
          %240 = "polygeist.memref2pointer"(%alloc) : (memref<?xi8>) -> !llvm.ptr<i8>
          %241 = llvm.mlir.addressof @str9 : !llvm.ptr<array<6 x i8>>
          %242 = llvm.getelementptr %241[0, 0] : (!llvm.ptr<array<6 x i8>>) -> !llvm.ptr<i8>
          %243 = llvm.call @sprintf(%240, %242, %232, %235) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %244 = func.call @strlen(%240) : (!llvm.ptr<i8>) -> i64
          %245 = func.call @strlen(%204) : (!llvm.ptr<i8>) -> i64
          %246 = arith.addi %244, %245 : i64
          %247 = "polygeist.memref2pointer"(%231) : (memref<?xi8>) -> !llvm.ptr<i8>
          %248 = func.call @strlen(%247) : (!llvm.ptr<i8>) -> i64
          %249 = arith.addi %246, %248 : i64
          %250 = arith.addi %249, %c3_i64 : i64
          %251 = arith.index_cast %250 : i64 to index
          %alloc_29 = memref.alloc(%251) : memref<?xi8>
          %252 = "polygeist.memref2pointer"(%alloc_29) : (memref<?xi8>) -> !llvm.ptr<i8>
          %253 = llvm.mlir.addressof @str10 : !llvm.ptr<array<9 x i8>>
          %254 = llvm.getelementptr %253[0, 0] : (!llvm.ptr<array<9 x i8>>) -> !llvm.ptr<i8>
          %255 = llvm.call @sprintf(%252, %254, %204, %247, %240) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %256 = func.call @strlen(%204) : (!llvm.ptr<i8>) -> i64
          %257 = func.call @strlen(%247) : (!llvm.ptr<i8>) -> i64
          %258 = arith.addi %256, %257 : i64
          %259 = arith.addi %258, %c2_i64 : i64
          %260 = arith.index_cast %259 : i64 to index
          %alloc_30 = memref.alloc(%260) : memref<?xi8>
          %261 = "polygeist.memref2pointer"(%alloc_30) : (memref<?xi8>) -> !llvm.ptr<i8>
          %262 = llvm.mlir.addressof @str11 : !llvm.ptr<array<6 x i8>>
          %263 = llvm.getelementptr %262[0, 0] : (!llvm.ptr<array<6 x i8>>) -> !llvm.ptr<i8>
          %264 = llvm.call @sprintf(%261, %263, %204, %247) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
          %265 = llvm.mlir.addressof @str12 : !llvm.ptr<array<21 x i8>>
          %266 = "polygeist.pointer2memref"(%265) : (!llvm.ptr<array<21 x i8>>) -> memref<?xi8>
          %267 = func.call @getenv(%266) : (memref<?xi8>) -> memref<?xi8>
          %268 = "polygeist.memref2pointer"(%267) : (memref<?xi8>) -> !llvm.ptr<i8>
          %269 = llvm.icmp "ne" %268, %205 : !llvm.ptr<i8>
          scf.if %269 {
            %270 = func.call @mkdir(%alloc_30, %c511_i32) : (memref<?xi8>, i32) -> i32
            %271 = llvm.mlir.addressof @stderr : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %272 = llvm.load %271 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %273 = "polygeist.memref2pointer"(%272) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %274 = llvm.mlir.addressof @str13 : !llvm.ptr<array<55 x i8>>
            %275 = llvm.getelementptr %274[0, 0] : (!llvm.ptr<array<55 x i8>>) -> !llvm.ptr<i8>
            %276 = llvm.mlir.addressof @str14 : !llvm.ptr<array<7 x i8>>
            %277 = llvm.getelementptr %276[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
            %278 = llvm.mlir.addressof @str15 : !llvm.ptr<array<7 x i8>>
            %279 = llvm.getelementptr %278[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
            %280 = llvm.call @fprintf(%273, %275, %277, %279, %252) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
            %281 = llvm.mlir.addressof @str16 : !llvm.ptr<array<3 x i8>>
            %282 = "polygeist.pointer2memref"(%281) : (!llvm.ptr<array<3 x i8>>) -> memref<?xi8>
            %283 = func.call @fopen(%alloc_29, %282) : (memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %284 = "polygeist.memref2pointer"(%283) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %285 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %286 = llvm.icmp "ne" %284, %285 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %287 = arith.xori %286, %true : i1
            scf.if %287 {
              %290 = llvm.load %271 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %291 = "polygeist.memref2pointer"(%290) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
              %292 = llvm.mlir.addressof @str17 : !llvm.ptr<array<38 x i8>>
              %293 = llvm.getelementptr %292[0, 0] : (!llvm.ptr<array<38 x i8>>) -> !llvm.ptr<i8>
              %294 = func.call @__errno_location() : () -> memref<?xi32>
              %295 = memref.load %294[%c0] : memref<?xi32>
              %296 = func.call @__errno_location() : () -> memref<?xi32>
              %297 = memref.load %296[%c0] : memref<?xi32>
              %298 = func.call @strerror(%297) : (i32) -> memref<?xi8>
              %299 = "polygeist.memref2pointer"(%298) : (memref<?xi8>) -> !llvm.ptr<i8>
              %300 = llvm.call @fprintf(%291, %293, %252, %295, %299) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
              func.call @exit(%c1_i32) : (i32) -> ()
            }
            %288 = func.call @fwrite(%60, %c8_i64, %215, %283) : (memref<?xi8>, i64, i64, memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
            %289 = func.call @fclose(%283) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
          } else {
            %270 = llvm.mlir.addressof @stderr : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %271 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %272 = "polygeist.memref2pointer"(%271) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %273 = llvm.mlir.addressof @str18 : !llvm.ptr<array<53 x i8>>
            %274 = llvm.getelementptr %273[0, 0] : (!llvm.ptr<array<53 x i8>>) -> !llvm.ptr<i8>
            %275 = llvm.mlir.addressof @str14 : !llvm.ptr<array<7 x i8>>
            %276 = llvm.getelementptr %275[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
            %277 = llvm.mlir.addressof @str15 : !llvm.ptr<array<7 x i8>>
            %278 = llvm.getelementptr %277[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
            %279 = llvm.call @fprintf(%272, %274, %276, %278, %252) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
            %280 = llvm.mlir.addressof @str19 : !llvm.ptr<array<3 x i8>>
            %281 = "polygeist.pointer2memref"(%280) : (!llvm.ptr<array<3 x i8>>) -> memref<?xi8>
            %282 = func.call @fopen(%alloc_29, %281) : (memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %283 = "polygeist.memref2pointer"(%282) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %284 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %285 = llvm.icmp "ne" %283, %284 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %286 = arith.xori %285, %true : i1
            scf.if %286 {
              %303 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
              %304 = "polygeist.memref2pointer"(%303) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
              %305 = llvm.mlir.addressof @str17 : !llvm.ptr<array<38 x i8>>
              %306 = llvm.getelementptr %305[0, 0] : (!llvm.ptr<array<38 x i8>>) -> !llvm.ptr<i8>
              %307 = func.call @__errno_location() : () -> memref<?xi32>
              %308 = memref.load %307[%c0] : memref<?xi32>
              %309 = func.call @__errno_location() : () -> memref<?xi32>
              %310 = memref.load %309[%c0] : memref<?xi32>
              %311 = func.call @strerror(%310) : (i32) -> memref<?xi8>
              %312 = "polygeist.memref2pointer"(%311) : (memref<?xi8>) -> !llvm.ptr<i8>
              %313 = llvm.call @fprintf(%304, %306, %252, %308, %312) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
              func.call @exit(%c1_i32) : (i32) -> ()
            }
            %287 = func.call @malloc(%216) : (i64) -> memref<?xi8>
            %288 = func.call @fread(%287, %c8_i64, %215, %282) : (memref<?xi8>, i64, i64, memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64
            %289 = "polygeist.memref2pointer"(%287) : (memref<?xi8>) -> !llvm.ptr<i8>
            %290 = "polygeist.pointer2memref"(%289) : (!llvm.ptr<i8>) -> memref<?xf64>
            %291 = "polygeist.memref2pointer"(%arg5) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
            %292 = llvm.getelementptr %291[%215] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
            %293:6 = scf.while (%arg6 = %cst_0, %arg7 = %cst_0, %arg8 = %cst_0, %arg9 = %290, %arg10 = %217, %arg11 = %c1_i32) : (f64, f64, f64, memref<?xf64>, memref<?xf64>, i32) -> (f64, f64, f64, i32, memref<?xf64>, memref<?xf64>) {
              %303 = "polygeist.memref2pointer"(%arg10) : (memref<?xf64>) -> !llvm.ptr<f64>
              %304 = llvm.icmp "ult" %303, %292 : !llvm.ptr<f64>
              scf.condition(%304) %arg6, %arg7, %arg8, %arg11, %arg9, %arg10 : f64, f64, f64, i32, memref<?xf64>, memref<?xf64>
            } do {
            ^bb0(%arg6: f64, %arg7: f64, %arg8: f64, %arg9: i32, %arg10: memref<?xf64>, %arg11: memref<?xf64>):
              %303 = "polygeist.memref2pointer"(%arg11) : (memref<?xf64>) -> !llvm.ptr<f64>
              %304 = memref.load %arg11[%c0] : memref<?xf64>
              %305 = memref.load %arg10[%c0] : memref<?xf64>
              %306 = arith.cmpf oeq, %304, %305 : f64
              %307 = scf.if %306 -> (i1) {
                scf.yield %true : i1
              } else {
                %314 = arith.subf %304, %305 : f64
                %315 = arith.cmpf ogt, %314, %cst_0 : f64
                %316 = scf.if %315 -> (f64) {
                  scf.yield %314 : f64
                } else {
                  %328 = arith.negf %314 : f64
                  scf.yield %328 : f64
                }
                %317 = arith.cmpf ogt, %304, %cst_0 : f64
                %318 = scf.if %317 -> (f64) {
                  scf.yield %304 : f64
                } else {
                  %328 = arith.negf %304 : f64
                  scf.yield %328 : f64
                }
                %319 = arith.cmpf ogt, %305, %cst_0 : f64
                %320 = scf.if %319 -> (f64) {
                  scf.yield %305 : f64
                } else {
                  %328 = arith.negf %305 : f64
                  scf.yield %328 : f64
                }
                %321 = arith.addf %318, %320 : f64
                %322 = arith.cmpf ogt, %321, %cst_3 : f64
                %323 = scf.if %322 -> (f64) {
                  scf.yield %cst_3 : f64
                } else {
                  %328 = scf.if %317 -> (f64) {
                    scf.yield %304 : f64
                  } else {
                    %331 = arith.negf %304 : f64
                    scf.yield %331 : f64
                  }
                  %329 = scf.if %319 -> (f64) {
                    scf.yield %305 : f64
                  } else {
                    %331 = arith.negf %305 : f64
                    scf.yield %331 : f64
                  }
                  %330 = arith.addf %328, %329 : f64
                  scf.yield %330 : f64
                }
                %324 = arith.mulf %323, %cst : f64
                %325 = arith.cmpf ogt, %cst_4, %324 : f64
                %326 = scf.if %325 -> (f64) {
                  scf.yield %cst_4 : f64
                } else {
                  %328 = scf.if %317 -> (f64) {
                    scf.yield %304 : f64
                  } else {
                    %334 = arith.negf %304 : f64
                    scf.yield %334 : f64
                  }
                  %329 = scf.if %319 -> (f64) {
                    scf.yield %305 : f64
                  } else {
                    %334 = arith.negf %305 : f64
                    scf.yield %334 : f64
                  }
                  %330 = arith.addf %328, %329 : f64
                  %331 = arith.cmpf ogt, %330, %cst_3 : f64
                  %332 = scf.if %331 -> (f64) {
                    scf.yield %cst_3 : f64
                  } else {
                    %334 = scf.if %317 -> (f64) {
                      scf.yield %304 : f64
                    } else {
                      %337 = arith.negf %304 : f64
                      scf.yield %337 : f64
                    }
                    %335 = scf.if %319 -> (f64) {
                      scf.yield %305 : f64
                    } else {
                      %337 = arith.negf %305 : f64
                      scf.yield %337 : f64
                    }
                    %336 = arith.addf %334, %335 : f64
                    scf.yield %336 : f64
                  }
                  %333 = arith.mulf %332, %cst : f64
                  scf.yield %333 : f64
                }
                %327 = arith.cmpf olt, %316, %326 : f64
                scf.yield %327 : i1
              }
              %308 = arith.extui %307 : i1 to i8
              %309 = arith.cmpi eq, %308, %c0_i8 : i8
              %310 = arith.select %309, %c0_i32, %arg9 : i32
              %311:3 = scf.if %309 -> (f64, f64, f64) {
                %314 = memref.load %arg11[%c0] : memref<?xf64>
                %315 = arith.cmpf ole, %314, %cst_4 : f64
                %316 = scf.if %315 -> (i1) {
                  scf.yield %true : i1
                } else {
                  %360 = memref.load %arg10[%c0] : memref<?xf64>
                  %361 = arith.cmpf ole, %360, %cst_4 : f64
                  scf.yield %361 : i1
                }
                %317 = scf.if %316 -> (f64) {
                  scf.yield %cst_0 : f64
                } else {
                  %360 = memref.load %arg10[%c0] : memref<?xf64>
                  %361 = arith.subf %314, %360 : f64
                  %362 = arith.cmpf ogt, %361, %cst_0 : f64
                  %363 = scf.if %362 -> (f64) {
                    scf.yield %361 : f64
                  } else {
                    %370 = arith.negf %361 : f64
                    scf.yield %370 : f64
                  }
                  %364 = arith.cmpf ogt, %314, %cst_0 : f64
                  %365 = scf.if %364 -> (f64) {
                    scf.yield %314 : f64
                  } else {
                    %370 = arith.negf %314 : f64
                    scf.yield %370 : f64
                  }
                  %366 = arith.cmpf ogt, %360, %cst_0 : f64
                  %367 = scf.if %366 -> (f64) {
                    scf.yield %360 : f64
                  } else {
                    %370 = arith.negf %360 : f64
                    scf.yield %370 : f64
                  }
                  %368 = arith.addf %365, %367 : f64
                  %369 = arith.divf %363, %368 : f64
                  scf.yield %369 : f64
                }
                %318 = arith.cmpf ogt, %317, %arg6 : f64
                %319 = arith.select %318, %317, %arg6 : f64
                %320 = memref.load %arg10[%c0] : memref<?xf64>
                %321 = arith.subf %314, %320 : f64
                %322 = arith.cmpf ogt, %321, %cst_0 : f64
                %323 = scf.if %322 -> (f64) {
                  scf.yield %321 : f64
                } else {
                  %360 = arith.negf %321 : f64
                  scf.yield %360 : f64
                }
                %324 = arith.cmpf ogt, %314, %cst_0 : f64
                %325 = scf.if %324 -> (f64) {
                  scf.yield %314 : f64
                } else {
                  %360 = arith.negf %314 : f64
                  scf.yield %360 : f64
                }
                %326 = arith.cmpf ogt, %320, %cst_0 : f64
                %327 = scf.if %326 -> (f64) {
                  scf.yield %320 : f64
                } else {
                  %360 = arith.negf %320 : f64
                  scf.yield %360 : f64
                }
                %328 = arith.addf %325, %327 : f64
                %329 = arith.divf %323, %328 : f64
                %330 = arith.cmpf ogt, %329, %arg7 : f64
                %331 = arith.select %330, %329, %arg7 : f64
                %332 = scf.if %322 -> (f64) {
                  scf.yield %321 : f64
                } else {
                  %360 = arith.negf %321 : f64
                  scf.yield %360 : f64
                }
                %333 = arith.cmpf ogt, %332, %arg8 : f64
                %334 = arith.select %333, %332, %arg8 : f64
                %335 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %336 = "polygeist.memref2pointer"(%335) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
                %337 = llvm.mlir.addressof @str20 : !llvm.ptr<array<43 x i8>>
                %338 = llvm.getelementptr %337[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
                %339 = llvm.getelementptr %218[0, 0] : (!llvm.ptr<array<8 x i8>>) -> !llvm.ptr<i8>
                %340 = llvm.ptrtoint %303 : !llvm.ptr<f64> to i64
                %341 = llvm.ptrtoint %291 : !llvm.ptr<f64> to i64
                %342 = arith.subi %340, %341 : i64
                %343 = arith.divsi %342, %c8_i64 : i64
                %344 = arith.trunci %343 : i64 to i32
                %345 = llvm.call @fprintf(%336, %338, %276, %339, %235, %344) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32) -> i32
                %346 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %347 = "polygeist.memref2pointer"(%346) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
                %348 = llvm.mlir.addressof @str21 : !llvm.ptr<array<25 x i8>>
                %349 = llvm.getelementptr %348[0, 0] : (!llvm.ptr<array<25 x i8>>) -> !llvm.ptr<i8>
                %350 = memref.load %arg11[%c0] : memref<?xf64>
                %351 = memref.load %arg10[%c0] : memref<?xf64>
                %352 = llvm.call @fprintf(%347, %349, %350, %351) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64) -> i32
                %353 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                %354 = "polygeist.memref2pointer"(%353) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
                %355 = llvm.mlir.addressof @str22 : !llvm.ptr<array<71 x i8>>
                %356 = llvm.getelementptr %355[0, 0] : (!llvm.ptr<array<71 x i8>>) -> !llvm.ptr<i8>
                %357 = llvm.call @fprintf(%354, %356, %329, %317, %332) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64, f64, f64) -> i32
                %358 = "polygeist.memref2pointer"(%213) : (memref<?xi8>) -> !llvm.ptr<i8>
                %359 = llvm.icmp "ne" %358, %205 : !llvm.ptr<i8>
                scf.if %359 {
                  %360 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                  %361 = "polygeist.memref2pointer"(%360) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
                  %362 = llvm.mlir.addressof @str23 : !llvm.ptr<array<14 x i8>>
                  %363 = llvm.getelementptr %362[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
                  %364 = llvm.call @fprintf(%361, %363) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                  %365 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
                  %366 = "polygeist.memref2pointer"(%365) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
                  %367 = llvm.mlir.addressof @str24 : !llvm.ptr<array<9 x i8>>
                  %368 = llvm.getelementptr %367[0, 0] : (!llvm.ptr<array<9 x i8>>) -> !llvm.ptr<i8>
                  %369 = llvm.call @fprintf(%366, %368) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
                  func.call @exit(%c1_i32) : (i32) -> ()
                }
                scf.yield %319, %331, %334 : f64, f64, f64
              } else {
                scf.yield %arg6, %arg7, %arg8 : f64, f64, f64
              }
              %312 = "polygeist.subindex"(%arg11, %c1) : (memref<?xf64>, index) -> memref<?xf64>
              %313 = "polygeist.subindex"(%arg10, %c1) : (memref<?xf64>, index) -> memref<?xf64>
              scf.yield %311#0, %311#1, %311#2, %313, %312, %310 : f64, f64, f64, memref<?xf64>, memref<?xf64>, i32
            }
            %294 = arith.cmpi ne, %293#3, %c0_i32 : i32
            %295 = scf.if %294 -> (memref<?xi8>) {
              %303 = llvm.mlir.addressof @str25 : !llvm.ptr<array<5 x i8>>
              %304 = "polygeist.pointer2memref"(%303) : (!llvm.ptr<array<5 x i8>>) -> memref<?xi8>
              scf.yield %304 : memref<?xi8>
            } else {
              %303 = llvm.mlir.addressof @str26 : !llvm.ptr<array<5 x i8>>
              %304 = "polygeist.pointer2memref"(%303) : (!llvm.ptr<array<5 x i8>>) -> memref<?xi8>
              scf.yield %304 : memref<?xi8>
            }
            %296 = llvm.load %270 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %297 = "polygeist.memref2pointer"(%296) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
            %298 = llvm.mlir.addressof @str27 : !llvm.ptr<array<146 x i8>>
            %299 = llvm.getelementptr %298[0, 0] : (!llvm.ptr<array<146 x i8>>) -> !llvm.ptr<i8>
            %300 = "polygeist.memref2pointer"(%295) : (memref<?xi8>) -> !llvm.ptr<i8>
            %301 = llvm.call @fprintf(%297, %299, %276, %300, %293#2, %293#1, %293#0) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, f64, f64) -> i32
            memref.dealloc %287 : memref<?xi8>
            %302 = func.call @fclose(%282) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
          }
          memref.dealloc %alloc : memref<?xi8>
          memref.dealloc %alloc_29 : memref<?xi8>
          memref.dealloc %alloc_30 : memref<?xi8>
        }
      }
    }
    %111 = memref.load %alloca_22[%c0] : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %112 = "polygeist.memref2pointer"(%111) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<i8>
    %113 = "polygeist.pointer2memref"(%112) : (!llvm.ptr<i8>) -> memref<?xi8>
    %114 = call @cudaFree(%113) : (memref<?xi8>) -> i32
    %115 = memref.load %alloca_21[%c0] : memref<1xmemref<?xf64>>
    %116 = "polygeist.memref2pointer"(%115) : (memref<?xf64>) -> !llvm.ptr<i8>
    %117 = "polygeist.pointer2memref"(%116) : (!llvm.ptr<i8>) -> memref<?xi8>
    %118 = call @cudaFree(%117) : (memref<?xi8>) -> i32
    %119 = memref.load %alloca_20[%c0] : memref<1xmemref<?x!llvm.struct<(f64, f64, f64, f64)>>>
    %120 = "polygeist.memref2pointer"(%119) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<i8>
    %121 = "polygeist.pointer2memref"(%120) : (!llvm.ptr<i8>) -> memref<?xi8>
    %122 = call @cudaFree(%121) : (memref<?xi8>) -> i32
    %123 = memref.load %alloca_23[%c0] : memref<1xmemref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>>
    %124 = "polygeist.memref2pointer"(%123) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i8>
    %125 = "polygeist.pointer2memref"(%124) : (!llvm.ptr<i8>) -> memref<?xi8>
    %126 = call @cudaFree(%125) : (memref<?xi8>) -> i32
    %127 = call @get_time() : () -> i64
    %128 = llvm.mlir.addressof @str28 : !llvm.ptr<array<52 x i8>>
    %129 = llvm.getelementptr %128[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %130 = llvm.call @printf(%129) : (!llvm.ptr<i8>) -> i32
    %131 = llvm.mlir.addressof @str29 : !llvm.ptr<array<54 x i8>>
    %132 = llvm.getelementptr %131[0, 0] : (!llvm.ptr<array<54 x i8>>) -> !llvm.ptr<i8>
    %133 = arith.subi %14, %2 : i64
    %134 = arith.sitofp %133 : i64 to f32
    %135 = arith.divf %134, %cst_2 : f32
    %136 = arith.extf %135 : f32 to f64
    %137 = arith.subi %127, %2 : i64
    %138 = arith.sitofp %137 : i64 to f32
    %139 = arith.divf %134, %138 : f32
    %140 = arith.mulf %139, %cst_1 : f32
    %141 = arith.extf %140 : f32 to f64
    %142 = llvm.call @printf(%132, %136, %141) : (!llvm.ptr<i8>, f64, f64) -> i32
    %143 = llvm.mlir.addressof @str30 : !llvm.ptr<array<37 x i8>>
    %144 = llvm.getelementptr %143[0, 0] : (!llvm.ptr<array<37 x i8>>) -> !llvm.ptr<i8>
    %145 = arith.subi %34, %14 : i64
    %146 = arith.sitofp %145 : i64 to f32
    %147 = arith.divf %146, %cst_2 : f32
    %148 = arith.extf %147 : f32 to f64
    %149 = arith.divf %146, %138 : f32
    %150 = arith.mulf %149, %cst_1 : f32
    %151 = arith.extf %150 : f32 to f64
    %152 = llvm.call @printf(%144, %148, %151) : (!llvm.ptr<i8>, f64, f64) -> i32
    %153 = llvm.mlir.addressof @str31 : !llvm.ptr<array<41 x i8>>
    %154 = llvm.getelementptr %153[0, 0] : (!llvm.ptr<array<41 x i8>>) -> !llvm.ptr<i8>
    %155 = arith.subi %63, %34 : i64
    %156 = arith.sitofp %155 : i64 to f32
    %157 = arith.divf %156, %cst_2 : f32
    %158 = arith.extf %157 : f32 to f64
    %159 = arith.divf %156, %138 : f32
    %160 = arith.mulf %159, %cst_1 : f32
    %161 = arith.extf %160 : f32 to f64
    %162 = llvm.call @printf(%154, %158, %161) : (!llvm.ptr<i8>, f64, f64) -> i32
    %163 = llvm.mlir.addressof @str32 : !llvm.ptr<array<36 x i8>>
    %164 = llvm.getelementptr %163[0, 0] : (!llvm.ptr<array<36 x i8>>) -> !llvm.ptr<i8>
    %165 = arith.subi %100, %63 : i64
    %166 = arith.sitofp %165 : i64 to f32
    %167 = arith.divf %166, %cst_2 : f32
    %168 = arith.extf %167 : f32 to f64
    %169 = arith.divf %166, %138 : f32
    %170 = arith.mulf %169, %cst_1 : f32
    %171 = arith.extf %170 : f32 to f64
    %172 = llvm.call @printf(%164, %168, %171) : (!llvm.ptr<i8>, f64, f64) -> i32
    %173 = llvm.mlir.addressof @str33 : !llvm.ptr<array<42 x i8>>
    %174 = llvm.getelementptr %173[0, 0] : (!llvm.ptr<array<42 x i8>>) -> !llvm.ptr<i8>
    %175 = arith.subi %106, %100 : i64
    %176 = arith.sitofp %175 : i64 to f32
    %177 = arith.divf %176, %cst_2 : f32
    %178 = arith.extf %177 : f32 to f64
    %179 = arith.divf %176, %138 : f32
    %180 = arith.mulf %179, %cst_1 : f32
    %181 = arith.extf %180 : f32 to f64
    %182 = llvm.call @printf(%174, %178, %181) : (!llvm.ptr<i8>, f64, f64) -> i32
    %183 = llvm.mlir.addressof @str34 : !llvm.ptr<array<37 x i8>>
    %184 = llvm.getelementptr %183[0, 0] : (!llvm.ptr<array<37 x i8>>) -> !llvm.ptr<i8>
    %185 = arith.subi %127, %106 : i64
    %186 = arith.sitofp %185 : i64 to f32
    %187 = arith.divf %186, %cst_2 : f32
    %188 = arith.extf %187 : f32 to f64
    %189 = arith.divf %186, %138 : f32
    %190 = arith.mulf %189, %cst_1 : f32
    %191 = arith.extf %190 : f32 to f64
    %192 = llvm.call @printf(%184, %188, %191) : (!llvm.ptr<i8>, f64, f64) -> i32
    %193 = llvm.mlir.addressof @str35 : !llvm.ptr<array<13 x i8>>
    %194 = llvm.getelementptr %193[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %195 = llvm.call @printf(%194) : (!llvm.ptr<i8>) -> i32
    %196 = llvm.mlir.addressof @str36 : !llvm.ptr<array<9 x i8>>
    %197 = llvm.getelementptr %196[0, 0] : (!llvm.ptr<array<9 x i8>>) -> !llvm.ptr<i8>
    %198 = arith.divf %138, %cst_2 : f32
    %199 = arith.extf %198 : f32 to f64
    %200 = llvm.call @printf(%197, %199) : (!llvm.ptr<i8>, f64) -> i32
    return
  }
  func.func private @get_time() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cudaThreadSynchronize() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_ZN4dim3C1Ejjj(%arg0: memref<?x!llvm.struct<(i32, i32, i32)>>, %arg1: i32, %arg2: i32, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, i32)>>) -> !llvm.ptr<struct<(i32, i32, i32)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg1, %1 : !llvm.ptr<i32>
    %2 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg2, %2 : !llvm.ptr<i32>
    %3 = llvm.getelementptr %0[0, 2] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg3, %3 : !llvm.ptr<i32>
    return
  }
  func.func private @cudaMalloc(memref<?xmemref<?xi8>>, i64) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cudaMemcpy(memref<?xi8>, memref<?xi8>, i64, i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cudaDeviceSynchronize() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @clock_gettime(i32, memref<?x!llvm.struct<(i64, i64)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_ZN7par_strC1ERKS_(%arg0: memref<?x!llvm.struct<(f64)>>, %arg1: memref<?x!llvm.struct<(f64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(f64)>>) -> !llvm.ptr<struct<(f64)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(f64)>>) -> !llvm.ptr<f64>
    %2 = llvm.load %1 : !llvm.ptr<f64>
    %3 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(f64)>>) -> !llvm.ptr<struct<(f64)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(f64)>>) -> !llvm.ptr<f64>
    llvm.store %2, %4 : !llvm.ptr<f64>
    return
  }
  func.func private @_ZN7dim_strC1ERKS_(%arg0: memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>, %arg1: memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    %2 = llvm.load %1 : !llvm.ptr<i32>
    %3 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    llvm.store %2, %4 : !llvm.ptr<i32>
    %5 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    %6 = llvm.load %5 : !llvm.ptr<i32>
    %7 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    llvm.store %6, %7 : !llvm.ptr<i32>
    %8 = llvm.getelementptr %0[0, 2] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    %9 = llvm.load %8 : !llvm.ptr<i32>
    %10 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    llvm.store %9, %10 : !llvm.ptr<i32>
    %11 = llvm.getelementptr %0[0, 3] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    %12 = llvm.load %11 : !llvm.ptr<i32>
    %13 = llvm.getelementptr %3[0, 3] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    llvm.store %12, %13 : !llvm.ptr<i32>
    %14 = llvm.getelementptr %0[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %15 = llvm.load %14 : !llvm.ptr<i64>
    %16 = llvm.getelementptr %3[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %15, %16 : !llvm.ptr<i64>
    %17 = llvm.getelementptr %0[0, 5] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.getelementptr %3[0, 5] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %18, %19 : !llvm.ptr<i64>
    %20 = llvm.getelementptr %0[0, 6] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.getelementptr %3[0, 6] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %21, %22 : !llvm.ptr<i64>
    %23 = llvm.getelementptr %0[0, 7] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %24 = llvm.load %23 : !llvm.ptr<i64>
    %25 = llvm.getelementptr %3[0, 7] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %24, %25 : !llvm.ptr<i64>
    %26 = llvm.getelementptr %0[0, 8] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    %27 = llvm.load %26 : !llvm.ptr<i64>
    %28 = llvm.getelementptr %3[0, 8] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %27, %28 : !llvm.ptr<i64>
    return
  }
  func.func private @_ZN4dim3C1ERKS_(%arg0: memref<?x!llvm.struct<(i32, i32, i32)>>, %arg1: memref<?x!llvm.struct<(i32, i32, i32)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = "polygeist.memref2pointer"(%arg1) : (memref<?x!llvm.struct<(i32, i32, i32)>>) -> !llvm.ptr<struct<(i32, i32, i32)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %2 = llvm.load %1 : !llvm.ptr<i32>
    %3 = "polygeist.memref2pointer"(%arg0) : (memref<?x!llvm.struct<(i32, i32, i32)>>) -> !llvm.ptr<struct<(i32, i32, i32)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %2, %4 : !llvm.ptr<i32>
    %5 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %6 = llvm.load %5 : !llvm.ptr<i32>
    %7 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %6, %7 : !llvm.ptr<i32>
    %8 = llvm.getelementptr %0[0, 2] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    %9 = llvm.load %8 : !llvm.ptr<i32>
    %10 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<(i32, i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %9, %10 : !llvm.ptr<i32>
    return
  }
  func.func private @_ZL21MY_WRITE_TIME_TO_FILEPKcS0_d(%arg0: memref<?xi8>, %arg1: memref<?xi8>, %arg2: f64) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<1xi8>
    %0 = llvm.mlir.addressof @str44 : !llvm.ptr<array<15 x i8>>
    %1 = "polygeist.pointer2memref"(%0) : (!llvm.ptr<array<15 x i8>>) -> memref<?xi8>
    %2 = call @getenv(%1) : (memref<?xi8>) -> memref<?xi8>
    %3 = llvm.mlir.null : !llvm.ptr<i8>
    %4 = "polygeist.memref2pointer"(%2) : (memref<?xi8>) -> !llvm.ptr<i8>
    %5 = llvm.icmp "eq" %4, %3 : !llvm.ptr<i8>
    %6 = scf.if %5 -> (i1) {
      scf.yield %true : i1
    } else {
      %35 = llvm.mlir.addressof @str1 : !llvm.ptr<array<1 x i8>>
      %36 = "polygeist.pointer2memref"(%35) : (!llvm.ptr<array<1 x i8>>) -> memref<?xi8>
      %37 = func.call @strcmp(%2, %36) : (memref<?xi8>, memref<?xi8>) -> i32
      %38 = arith.cmpi eq, %37, %c0_i32 : i32
      scf.yield %38 : i1
    }
    %7 = scf.if %6 -> (i1) {
      scf.yield %true : i1
    } else {
      %35 = llvm.mlir.addressof @str45 : !llvm.ptr<array<2 x i8>>
      %36 = "polygeist.pointer2memref"(%35) : (!llvm.ptr<array<2 x i8>>) -> memref<?xi8>
      %37 = func.call @strcmp(%2, %36) : (memref<?xi8>, memref<?xi8>) -> i32
      %38 = arith.cmpi eq, %37, %c0_i32 : i32
      scf.yield %38 : i1
    }
    %8 = scf.if %7 -> (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) {
      %35 = llvm.mlir.addressof @stdout : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %36 = llvm.load %35 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      scf.yield %36 : memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    } else {
      %35 = llvm.mlir.addressof @str46 : !llvm.ptr<array<2 x i8>>
      %36 = "polygeist.pointer2memref"(%35) : (!llvm.ptr<array<2 x i8>>) -> memref<?xi8>
      %37 = func.call @fopen(%2, %36) : (memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
      scf.yield %37 : memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    }
    %9 = "polygeist.memref2pointer"(%8) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %10 = llvm.mlir.null : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %11 = llvm.icmp "ne" %9, %10 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %12 = arith.xori %11, %true : i1
    scf.if %12 {
      %35 = llvm.mlir.addressof @stderr : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %36 = llvm.load %35 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %37 = "polygeist.memref2pointer"(%36) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
      %38 = llvm.mlir.addressof @str47 : !llvm.ptr<array<45 x i8>>
      %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<45 x i8>>) -> !llvm.ptr<i8>
      %40 = func.call @__errno_location() : () -> memref<?xi32>
      %41 = memref.load %40[%c0] : memref<?xi32>
      %42 = func.call @__errno_location() : () -> memref<?xi32>
      %43 = memref.load %42[%c0] : memref<?xi32>
      %44 = func.call @strerror(%43) : (i32) -> memref<?xi8>
      %45 = "polygeist.memref2pointer"(%44) : (memref<?xi8>) -> !llvm.ptr<i8>
      %46 = llvm.call @fprintf(%37, %39, %4, %41, %45) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %13 = llvm.mlir.addressof @str1 : !llvm.ptr<array<1 x i8>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<1 x i8>>) -> !llvm.ptr<i8>
    %15 = llvm.load %14 : !llvm.ptr<i8>
    memref.store %15, %alloca[%c0] : memref<1xi8>
    %16 = llvm.mlir.addressof @str48 : !llvm.ptr<array<9 x i8>>
    %17 = "polygeist.pointer2memref"(%16) : (!llvm.ptr<array<9 x i8>>) -> memref<?xi8>
    %18 = call @getenv(%17) : (memref<?xi8>) -> memref<?xi8>
    %19 = "polygeist.memref2pointer"(%18) : (memref<?xi8>) -> !llvm.ptr<i8>
    %20 = llvm.icmp "ne" %19, %3 : !llvm.ptr<i8>
    %21 = scf.if %20 -> (memref<?xi8>) {
      scf.yield %18 : memref<?xi8>
    } else {
      %cast = memref.cast %alloca : memref<1xi8> to memref<?xi8>
      scf.yield %cast : memref<?xi8>
    }
    %22 = call @omp_get_max_threads() : () -> i32
    %23 = llvm.mlir.addressof @str49 : !llvm.ptr<array<27 x i8>>
    %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %25 = llvm.mlir.addressof @str50 : !llvm.ptr<array<23 x i8>>
    %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<array<23 x i8>>) -> !llvm.ptr<i8>
    %27 = "polygeist.memref2pointer"(%arg0) : (memref<?xi8>) -> !llvm.ptr<i8>
    %28 = "polygeist.memref2pointer"(%arg1) : (memref<?xi8>) -> !llvm.ptr<i8>
    %29 = "polygeist.memref2pointer"(%21) : (memref<?xi8>) -> !llvm.ptr<i8>
    %30 = llvm.call @fprintf(%9, %26, %27, %28, %arg2, %29, %24, %22) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, i32) -> i32
    %31 = llvm.mlir.addressof @stdout : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %32 = llvm.load %31 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %33 = "polygeist.memref2pointer"(%32) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %34 = llvm.icmp "ne" %9, %33 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    scf.if %34 {
      %35 = llvm.mlir.addressof @stderr : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %36 = llvm.load %35 : !llvm.ptr<memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %37 = "polygeist.memref2pointer"(%36) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
      %38 = llvm.icmp "ne" %9, %37 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
      scf.if %38 {
        %39 = func.call @fclose(%8) : (memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
      }
    }
    return
  }
  func.func private @_Z14checkCUDAErrorPKc(memref<?xi8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @getenv(memref<?xi8>) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @strrchr(memref<?xi8>, i32) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @strlen(!llvm.ptr<i8>) -> i64
  func.func private @mkdir(memref<?xi8>, i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fopen(memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @__errno_location() -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @strerror(i32) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fwrite(memref<?xi8>, i64, i64, memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fclose(memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @malloc(i64) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fread(memref<?xi8>, i64, i64, memref<?x!llvm.struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cudaFree(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %true = arith.constant true
    %c32_i64 = arith.constant 32 : i64
    %c8_i64 = arith.constant 8 : i64
    %c656_i64 = arith.constant 656 : i64
    %c656 = arith.constant 656 : index
    %c8 = arith.constant 8 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+01 : f64
    %c10_i32 = arith.constant 10 : i32
    %c7_i32 = arith.constant 7 : i32
    %c100_i32 = arith.constant 100 : i32
    %c100_i64 = arith.constant 100 : i64
    %cst_1 = arith.constant 5.000000e-01 : f64
    %false = arith.constant false
    %c1_i32 = arith.constant 1 : i32
    %c128_i32 = arith.constant 128 : i32
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %cast = memref.cast %alloca : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>> to memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %alloca_2 = memref.alloca() : memref<1x!llvm.struct<(f64)>>
    %cast_3 = memref.cast %alloca_2 : memref<1x!llvm.struct<(f64)>> to memref<?x!llvm.struct<(f64)>>
    %0 = llvm.mlir.undef : i32
    %alloca_4 = memref.alloca() : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %cast_5 = memref.cast %alloca_4 : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>> to memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %alloca_6 = memref.alloca() : memref<1x!llvm.struct<(f64)>>
    %cast_7 = memref.cast %alloca_6 : memref<1x!llvm.struct<(f64)>> to memref<?x!llvm.struct<(f64)>>
    %1 = llvm.mlir.addressof @str37 : !llvm.ptr<array<35 x i8>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<array<35 x i8>>) -> !llvm.ptr<i8>
    %3 = llvm.call @printf(%2, %c128_i32) : (!llvm.ptr<i8>, i32) -> i32
    %4 = call @get_time() : () -> i64
    %5 = call @get_time() : () -> i64
    %6 = "polygeist.memref2pointer"(%alloca_4) : (memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
    %7 = llvm.getelementptr %6[0, 3] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %7 : !llvm.ptr<i32>
    %8 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %8 : !llvm.ptr<i32>
    %9 = llvm.mlir.addressof @str38 : !llvm.ptr<array<9 x i8>>
    %10 = "polygeist.pointer2memref"(%9) : (!llvm.ptr<array<9 x i8>>) -> memref<?xi8>
    %11:2 = scf.while (%arg2 = %true, %arg3 = %0, %arg4 = %true) : (i1, i32, i1) -> (i1, i32) {
      %13 = llvm.load %8 : !llvm.ptr<i32>
      %14 = arith.cmpi slt, %13, %arg0 : i32
      %15 = arith.andi %14, %arg4 : i1
      scf.condition(%15) %arg2, %arg3 : i1, i32
    } do {
    ^bb0(%arg2: i1, %arg3: i32):
      %13 = llvm.load %8 : !llvm.ptr<i32>
      %14 = arith.index_cast %13 : i32 to index
      %15 = memref.load %arg1[%14] : memref<?xmemref<?xi8>>
      %16 = func.call @strcmp(%15, %10) : (memref<?xi8>, memref<?xi8>) -> i32
      %17 = arith.cmpi eq, %16, %c0_i32 : i32
      %18:3 = scf.if %17 -> (i1, i32, i1) {
        %19 = llvm.load %8 : !llvm.ptr<i32>
        %20 = arith.addi %19, %c1_i32 : i32
        %21 = arith.cmpi sge, %arg0, %20 : i32
        %22:3 = scf.if %21 -> (i1, i32, i1) {
          %23 = llvm.load %8 : !llvm.ptr<i32>
          %24 = arith.addi %23, %c1_i32 : i32
          %25 = arith.index_cast %24 : i32 to index
          %26 = memref.load %arg1[%25] : memref<?xmemref<?xi8>>
          %27 = func.call @isInteger(%26) : (memref<?xi8>) -> i32
          %28 = arith.cmpi eq, %27, %c1_i32 : i32
          %29:3 = scf.if %28 -> (i1, i32, i1) {
            %30 = llvm.load %8 : !llvm.ptr<i32>
            %31 = arith.addi %30, %c1_i32 : i32
            %32 = arith.index_cast %31 : i32 to index
            %33 = memref.load %arg1[%32] : memref<?xmemref<?xi8>>
            %34 = func.call @atoi(%33) : (memref<?xi8>) -> i32
            llvm.store %34, %7 : !llvm.ptr<i32>
            %35 = llvm.load %7 : !llvm.ptr<i32>
            %36 = arith.cmpi slt, %35, %c0_i32 : i32
            %37 = arith.cmpi sge, %35, %c0_i32 : i32
            %38 = arith.andi %37, %arg2 : i1
            %39 = arith.select %36, %c0_i32, %arg3 : i32
            scf.if %36 {
              %40 = llvm.mlir.addressof @str39 : !llvm.ptr<array<57 x i8>>
              %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<57 x i8>>) -> !llvm.ptr<i8>
              %42 = llvm.call @printf(%41) : (!llvm.ptr<i8>) -> i32
            } else {
              %40 = llvm.load %8 : !llvm.ptr<i32>
              %41 = arith.addi %40, %c1_i32 : i32
              llvm.store %41, %8 : !llvm.ptr<i32>
            }
            scf.if %37 {
              %40 = llvm.load %8 : !llvm.ptr<i32>
              %41 = arith.addi %40, %c1_i32 : i32
              llvm.store %41, %8 : !llvm.ptr<i32>
            }
            scf.yield %38, %39, %37 : i1, i32, i1
          } else {
            %30 = llvm.mlir.addressof @str40 : !llvm.ptr<array<52 x i8>>
            %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
            %32 = llvm.call @printf(%31) : (!llvm.ptr<i8>) -> i32
            scf.yield %false, %c0_i32, %false : i1, i32, i1
          }
          scf.yield %29#0, %29#1, %29#2 : i1, i32, i1
        } else {
          %23 = llvm.mlir.addressof @str41 : !llvm.ptr<array<44 x i8>>
          %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr<array<44 x i8>>) -> !llvm.ptr<i8>
          %25 = llvm.call @printf(%24) : (!llvm.ptr<i8>) -> i32
          scf.yield %false, %c0_i32, %false : i1, i32, i1
        }
        scf.yield %22#0, %22#1, %22#2 : i1, i32, i1
      } else {
        %19 = llvm.mlir.addressof @str42 : !llvm.ptr<array<26 x i8>>
        %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
        %21 = llvm.call @printf(%20) : (!llvm.ptr<i8>) -> i32
        scf.yield %false, %c0_i32, %false : i1, i32, i1
      }
      scf.yield %18#0, %18#1, %18#2 : i1, i32, i1
    }
    %12 = arith.select %11#0, %c0_i32, %11#1 : i32
    scf.if %11#0 {
      %13 = llvm.mlir.addressof @str43 : !llvm.ptr<array<34 x i8>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<34 x i8>>) -> !llvm.ptr<i8>
      %15 = llvm.load %7 : !llvm.ptr<i32>
      %16 = llvm.call @printf(%14, %15) : (!llvm.ptr<i8>, i32) -> i32
      %17 = func.call @get_time() : () -> i64
      %18 = "polygeist.memref2pointer"(%alloca_6) : (memref<1x!llvm.struct<(f64)>>) -> !llvm.ptr<struct<(f64)>>
      %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<(f64)>>) -> !llvm.ptr<f64>
      llvm.store %cst_1, %19 : !llvm.ptr<f64>
      %20 = func.call @get_time() : () -> i64
      %21 = llvm.getelementptr %6[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
      %22 = llvm.load %7 : !llvm.ptr<i32>
      %23 = arith.muli %22, %22 : i32
      %24 = arith.muli %23, %22 : i32
      %25 = arith.extsi %24 : i32 to i64
      llvm.store %25, %21 : !llvm.ptr<i64>
      %26 = llvm.getelementptr %6[0, 6] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
      %27 = llvm.load %21 : !llvm.ptr<i64>
      %28 = arith.muli %27, %c100_i64 : i64
      llvm.store %28, %26 : !llvm.ptr<i64>
      %29 = llvm.getelementptr %6[0, 7] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
      %30 = llvm.load %26 : !llvm.ptr<i64>
      %31 = arith.muli %30, %c32_i64 : i64
      llvm.store %31, %29 : !llvm.ptr<i64>
      %32 = llvm.getelementptr %6[0, 8] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
      %33 = llvm.load %26 : !llvm.ptr<i64>
      %34 = arith.muli %33, %c8_i64 : i64
      llvm.store %34, %32 : !llvm.ptr<i64>
      %35 = llvm.getelementptr %6[0, 5] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> !llvm.ptr<i64>
      %36 = llvm.load %21 : !llvm.ptr<i64>
      %37 = arith.muli %36, %c656_i64 : i64
      llvm.store %37, %35 : !llvm.ptr<i64>
      %38 = func.call @get_time() : () -> i64
      %39 = llvm.load %35 : !llvm.ptr<i64>
      %40 = arith.index_cast %39 : i64 to index
      %41 = arith.divui %40, %c656 : index
      %alloc = memref.alloc(%41) : memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>
      %42 = llvm.load %7 : !llvm.ptr<i32>
      %43 = arith.index_cast %42 : i32 to index
      %44 = "polygeist.memref2pointer"(%alloc) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>
      %45 = arith.cmpi sgt, %43, %c0 : index
      scf.if %45 {
        %66 = llvm.load %7 : !llvm.ptr<i32>
        %67 = arith.index_cast %66 : i32 to index
        %68 = arith.cmpi sgt, %67, %c0 : index
        %69 = scf.for %arg2 = %c0 to %43 step %c1 iter_args(%arg3 = %c0_i32) -> (i32) {
          %70 = scf.if %68 -> (i32) {
            %71 = arith.index_cast %arg2 : index to i32
            %72 = llvm.load %7 : !llvm.ptr<i32>
            %73 = arith.index_cast %72 : i32 to index
            %74 = scf.for %arg4 = %c0 to %67 step %c1 iter_args(%arg5 = %arg3) -> (i32) {
              %75 = arith.index_cast %arg4 : index to i32
              %76 = arith.index_cast %arg5 : i32 to index
              %77 = arith.addi %76, %73 : index
              %78 = arith.index_cast %77 : index to i32
              scf.for %arg6 = %c0 to %73 step %c1 {
                %79 = arith.index_cast %arg6 : index to i32
                %80 = arith.addi %76, %arg6 : index
                %81 = arith.index_cast %80 : index to i32
                %82 = arith.index_cast %80 : index to i64
                %83 = llvm.getelementptr %44[%82] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>
                %84 = llvm.getelementptr %83[0, 0] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i32>
                llvm.store %79, %84 : !llvm.ptr<i32>
                %85 = llvm.getelementptr %83[0, 1] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i32>
                llvm.store %75, %85 : !llvm.ptr<i32>
                %86 = llvm.getelementptr %83[0, 2] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i32>
                llvm.store %71, %86 : !llvm.ptr<i32>
                %87 = llvm.getelementptr %83[0, 3] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i32>
                llvm.store %81, %87 : !llvm.ptr<i32>
                %88 = llvm.getelementptr %83[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i64>
                %89 = arith.muli %81, %c100_i32 : i32
                %90 = arith.extsi %89 : i32 to i64
                llvm.store %90, %88 : !llvm.ptr<i64>
                %91 = llvm.getelementptr %83[0, 5] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<i32>
                llvm.store %c0_i32, %91 : !llvm.ptr<i32>
                %92 = llvm.getelementptr %83[0, 7] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>) -> !llvm.ptr<array<26 x struct<(i32, i32, i32, i32, i64)>>>
                %93 = llvm.bitcast %92 : !llvm.ptr<array<26 x struct<(i32, i32, i32, i32, i64)>>> to !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
                scf.for %arg7 = %c-1 to %c2 step %c1 {
                  %94 = arith.index_cast %arg7 : index to i32
                  %95 = arith.addi %71, %94 : i32
                  %96 = arith.cmpi sge, %95, %c0_i32 : i32
                  %97 = arith.cmpi eq, %94, %c0_i32 : i32
                  scf.for %arg8 = %c-1 to %c2 step %c1 {
                    %98 = arith.index_cast %arg8 : index to i32
                    %99 = arith.addi %75, %98 : i32
                    %100 = arith.cmpi sge, %99, %c0_i32 : i32
                    %101 = arith.andi %96, %100 : i1
                    %102 = arith.cmpi eq, %98, %c0_i32 : i32
                    %103 = arith.andi %97, %102 : i1
                    scf.for %arg9 = %c-1 to %c2 step %c1 {
                      %104 = arith.index_cast %arg9 : index to i32
                      %105 = scf.if %101 -> (i1) {
                        %108 = arith.addi %79, %104 : i32
                        %109 = arith.cmpi sge, %108, %c0_i32 : i32
                        scf.yield %109 : i1
                      } else {
                        scf.yield %false : i1
                      }
                      %106 = arith.extui %105 : i1 to i32
                      %107 = arith.cmpi eq, %106, %c1_i32 : i32
                      scf.if %107 {
                        %108 = llvm.load %7 : !llvm.ptr<i32>
                        %109 = arith.cmpi slt, %95, %108 : i32
                        %110 = scf.if %109 -> (i1) {
                          %113 = llvm.load %7 : !llvm.ptr<i32>
                          %114 = arith.cmpi slt, %99, %113 : i32
                          %115 = scf.if %114 -> (i1) {
                            %116 = arith.addi %79, %104 : i32
                            %117 = llvm.load %7 : !llvm.ptr<i32>
                            %118 = arith.cmpi slt, %116, %117 : i32
                            scf.yield %118 : i1
                          } else {
                            scf.yield %false : i1
                          }
                          scf.yield %115 : i1
                        } else {
                          scf.yield %false : i1
                        }
                        %111 = arith.extui %110 : i1 to i32
                        %112 = arith.cmpi eq, %111, %c1_i32 : i32
                        scf.if %112 {
                          %113 = scf.if %103 -> (i1) {
                            %116 = arith.cmpi eq, %104, %c0_i32 : i32
                            scf.yield %116 : i1
                          } else {
                            scf.yield %false : i1
                          }
                          %114 = arith.extui %113 : i1 to i32
                          %115 = arith.cmpi eq, %114, %c0_i32 : i32
                          scf.if %115 {
                            %116 = llvm.load %91 : !llvm.ptr<i32>
                            %117 = arith.index_cast %116 : i32 to index
                            %118 = arith.index_cast %117 : index to i64
                            %119 = llvm.getelementptr %93[%118] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
                            %120 = llvm.getelementptr %119[0, 0] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            %121 = arith.addi %79, %104 : i32
                            llvm.store %121, %120 : !llvm.ptr<i32>
                            %122 = llvm.load %91 : !llvm.ptr<i32>
                            %123 = arith.index_cast %122 : i32 to index
                            %124 = arith.index_cast %123 : index to i64
                            %125 = llvm.getelementptr %93[%124] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
                            %126 = llvm.getelementptr %125[0, 1] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            llvm.store %99, %126 : !llvm.ptr<i32>
                            %127 = llvm.load %91 : !llvm.ptr<i32>
                            %128 = arith.index_cast %127 : i32 to index
                            %129 = arith.index_cast %128 : index to i64
                            %130 = llvm.getelementptr %93[%129] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
                            %131 = llvm.getelementptr %130[0, 2] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            llvm.store %95, %131 : !llvm.ptr<i32>
                            %132 = llvm.load %91 : !llvm.ptr<i32>
                            %133 = arith.index_cast %132 : i32 to index
                            %134 = arith.index_cast %133 : index to i64
                            %135 = llvm.getelementptr %93[%134] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
                            %136 = llvm.getelementptr %135[0, 3] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            %137 = llvm.getelementptr %135[0, 2] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            %138 = llvm.load %137 : !llvm.ptr<i32>
                            %139 = llvm.load %7 : !llvm.ptr<i32>
                            %140 = arith.muli %138, %139 : i32
                            %141 = arith.muli %140, %139 : i32
                            %142 = llvm.getelementptr %135[0, 1] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            %143 = llvm.load %142 : !llvm.ptr<i32>
                            %144 = arith.muli %143, %139 : i32
                            %145 = arith.addi %141, %144 : i32
                            %146 = llvm.getelementptr %135[0, 0] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            %147 = llvm.load %146 : !llvm.ptr<i32>
                            %148 = arith.addi %145, %147 : i32
                            llvm.store %148, %136 : !llvm.ptr<i32>
                            %149 = llvm.load %91 : !llvm.ptr<i32>
                            %150 = arith.index_cast %149 : i32 to index
                            %151 = arith.index_cast %150 : index to i64
                            %152 = llvm.getelementptr %93[%151] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>, i64) -> !llvm.ptr<struct<(i32, i32, i32, i32, i64)>>
                            %153 = llvm.getelementptr %152[0, 4] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i64>
                            %154 = llvm.getelementptr %152[0, 3] : (!llvm.ptr<struct<(i32, i32, i32, i32, i64)>>) -> !llvm.ptr<i32>
                            %155 = llvm.load %154 : !llvm.ptr<i32>
                            %156 = arith.muli %155, %c100_i32 : i32
                            %157 = arith.extsi %156 : i32 to i64
                            llvm.store %157, %153 : !llvm.ptr<i64>
                            %158 = llvm.load %91 : !llvm.ptr<i32>
                            %159 = arith.addi %158, %c1_i32 : i32
                            llvm.store %159, %91 : !llvm.ptr<i32>
                          }
                        }
                      }
                    }
                  }
                }
              }
              scf.yield %78 : i32
            }
            scf.yield %74 : i32
          } else {
            scf.yield %arg3 : i32
          }
          scf.yield %70 : i32
        }
      }
      func.call @srand(%c7_i32) : (i32) -> ()
      %46 = llvm.load %29 : !llvm.ptr<i64>
      %47 = arith.index_cast %46 : i64 to index
      %48 = arith.divui %47, %c32 : index
      %alloc_8 = memref.alloc(%48) : memref<?x!llvm.struct<(f64, f64, f64, f64)>>
      %49 = "polygeist.memref2pointer"(%alloc_8) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
      %50 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
        %66 = arith.extsi %arg2 : i32 to i64
        %67 = llvm.load %26 : !llvm.ptr<i64>
        %68 = arith.cmpi slt, %66, %67 : i64
        scf.condition(%68) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %66 = arith.index_cast %arg2 : i32 to index
        %67 = arith.index_cast %66 : index to i64
        %68 = llvm.getelementptr %49[%67] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>, i64) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
        %69 = llvm.getelementptr %68[0, 0] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        %70 = func.call @rand() : () -> i32
        %71 = arith.remsi %70, %c10_i32 : i32
        %72 = arith.addi %71, %c1_i32 : i32
        %73 = arith.sitofp %72 : i32 to f64
        %74 = arith.divf %73, %cst_0 : f64
        llvm.store %74, %69 : !llvm.ptr<f64>
        %75 = llvm.getelementptr %68[0, 1] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        %76 = func.call @rand() : () -> i32
        %77 = arith.remsi %76, %c10_i32 : i32
        %78 = arith.addi %77, %c1_i32 : i32
        %79 = arith.sitofp %78 : i32 to f64
        %80 = arith.divf %79, %cst_0 : f64
        llvm.store %80, %75 : !llvm.ptr<f64>
        %81 = llvm.getelementptr %68[0, 2] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        %82 = func.call @rand() : () -> i32
        %83 = arith.remsi %82, %c10_i32 : i32
        %84 = arith.addi %83, %c1_i32 : i32
        %85 = arith.sitofp %84 : i32 to f64
        %86 = arith.divf %85, %cst_0 : f64
        llvm.store %86, %81 : !llvm.ptr<f64>
        %87 = llvm.getelementptr %68[0, 3] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        %88 = func.call @rand() : () -> i32
        %89 = arith.remsi %88, %c10_i32 : i32
        %90 = arith.addi %89, %c1_i32 : i32
        %91 = arith.sitofp %90 : i32 to f64
        %92 = arith.divf %91, %cst_0 : f64
        llvm.store %92, %87 : !llvm.ptr<f64>
        %93 = arith.addi %arg2, %c1_i32 : i32
        scf.yield %93 : i32
      }
      %51 = llvm.load %32 : !llvm.ptr<i64>
      %52 = arith.index_cast %51 : i64 to index
      %53 = arith.divui %52, %c8 : index
      %alloc_9 = memref.alloc(%53) : memref<?xf64>
      %54 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
        %66 = arith.extsi %arg2 : i32 to i64
        %67 = llvm.load %26 : !llvm.ptr<i64>
        %68 = arith.cmpi slt, %66, %67 : i64
        scf.condition(%68) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %66 = arith.index_cast %arg2 : i32 to index
        %67 = func.call @rand() : () -> i32
        %68 = arith.remsi %67, %c10_i32 : i32
        %69 = arith.addi %68, %c1_i32 : i32
        %70 = arith.sitofp %69 : i32 to f64
        %71 = arith.divf %70, %cst_0 : f64
        memref.store %71, %alloc_9[%66] : memref<?xf64>
        %72 = arith.addi %arg2, %c1_i32 : i32
        scf.yield %72 : i32
      }
      %55 = llvm.load %29 : !llvm.ptr<i64>
      %56 = arith.index_cast %55 : i64 to index
      %57 = arith.divui %56, %c32 : index
      %alloc_10 = memref.alloc(%57) : memref<?x!llvm.struct<(f64, f64, f64, f64)>>
      %58 = llvm.load %26 : !llvm.ptr<i64>
      %59 = "polygeist.memref2pointer"(%alloc_10) : (memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
      %60 = arith.index_cast %58 : i64 to index
      scf.for %arg2 = %c0 to %60 step %c1 {
        %66 = arith.index_cast %arg2 : index to i64
        %67 = llvm.getelementptr %59[%66] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>, i64) -> !llvm.ptr<struct<(f64, f64, f64, f64)>>
        %68 = llvm.getelementptr %67[0, 0] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        llvm.store %cst, %68 : !llvm.ptr<f64>
        %69 = llvm.getelementptr %67[0, 1] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        llvm.store %cst, %69 : !llvm.ptr<f64>
        %70 = llvm.getelementptr %67[0, 2] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        llvm.store %cst, %70 : !llvm.ptr<f64>
        %71 = llvm.getelementptr %67[0, 3] : (!llvm.ptr<struct<(f64, f64, f64, f64)>>) -> !llvm.ptr<f64>
        llvm.store %cst, %71 : !llvm.ptr<f64>
      }
      %61 = func.call @get_time() : () -> i64
      func.call @_ZN7par_strC1ERKS_(%cast_3, %cast_7) : (memref<?x!llvm.struct<(f64)>>, memref<?x!llvm.struct<(f64)>>) -> ()
      func.call @_ZN7dim_strC1ERKS_(%cast, %cast_5) : (memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>, memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>) -> ()
      %62 = memref.load %alloca_2[%c0] : memref<1x!llvm.struct<(f64)>>
      %63 = memref.load %alloca[%c0] : memref<1x!llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>>
      func.call @kernel_gpu_cuda_wrapper(%62, %63, %alloc, %alloc_8, %alloc_9, %alloc_10) : (!llvm.struct<(f64)>, !llvm.struct<(i32, i32, i32, i32, i64, i64, i64, i64, i64)>, memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>, memref<?xf64>, memref<?x!llvm.struct<(f64, f64, f64, f64)>>) -> ()
      %64 = func.call @get_time() : () -> i64
      memref.dealloc %alloc_8 : memref<?x!llvm.struct<(f64, f64, f64, f64)>>
      memref.dealloc %alloc_9 : memref<?xf64>
      memref.dealloc %alloc_10 : memref<?x!llvm.struct<(f64, f64, f64, f64)>>
      memref.dealloc %alloc : memref<?x!llvm.struct<(i32, i32, i32, i32, i64, i32, array<4 x i8>, array<26 x struct<(i32, i32, i32, i32, i64)>>)>>
      %65 = func.call @get_time() : () -> i64
    }
    return %12 : i32
  }
  func.func private @isInteger(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @srand(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @omp_get_max_threads() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
