module {
  func @mixed(%mr : !llvm.ptr<memref<2xf32>>) {
    %2 = memref.alloc() : memref<2xf32>
    llvm.store %2, %mr : !llvm.ptr<memref<2xf32>>
    return
  }
}

