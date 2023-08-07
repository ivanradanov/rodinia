//
// Generated by LLVM NVPTX Back-End
//

.version 7.4
.target sm_86
.address_size 64

	// .globl	_Z7extractlPf
// _ZZ6reduceliiPfS_E6d_psum has been demoted
// _ZZ6reduceliiPfS_E7d_psum2 has been demoted

.visible .entry _Z7extractlPf(
	.param .u64 _Z7extractlPf_param_0,
	.param .u64 _Z7extractlPf_param_1
)
{
	.reg .pred 	%p<2>;
	.reg .b32 	%r<7>;
	.reg .f32 	%f<15>;
	.reg .b64 	%rd<7>;

	ld.param.u64 	%rd3, [_Z7extractlPf_param_0];
	mov.u32 	%r1, %ctaid.x;
	mov.u32 	%r2, %tid.x;
	shl.b32 	%r3, %r1, 9;
	add.s32 	%r4, %r3, %r2;
	cvt.s64.s32 	%rd2, %r4;
	setp.ge.s64 	%p1, %rd2, %rd3;
	@%p1 bra 	$L__BB0_2;
	ld.param.u64 	%rd4, [_Z7extractlPf_param_1];
	cvta.to.global.u64 	%rd1, %rd4;
	shl.b64 	%rd5, %rd2, 2;
	add.s64 	%rd6, %rd1, %rd5;
	ld.global.f32 	%f1, [%rd6];
	div.rn.f32 	%f2, %f1, 0f437F0000;
	fma.rn.f32 	%f3, %f2, 0f3BBB989D, 0f3F000000;
	cvt.sat.f32.f32 	%f4, %f3;
	mov.f32 	%f5, 0f4B400001;
	mov.f32 	%f6, 0f437C0000;
	fma.rm.f32 	%f7, %f4, %f6, %f5;
	add.f32 	%f8, %f7, 0fCB40007F;
	neg.f32 	%f9, %f8;
	fma.rn.f32 	%f10, %f2, 0f3FB8AA3B, %f9;
	fma.rn.f32 	%f11, %f2, 0f32A57060, %f10;
	mov.b32 	%r5, %f7;
	shl.b32 	%r6, %r5, 23;
	mov.b32 	%f12, %r6;
	ex2.approx.ftz.f32 	%f13, %f11;
	mul.f32 	%f14, %f13, %f12;
	st.global.f32 	[%rd6], %f14;
$L__BB0_2:
	ret;

}
	// .globl	_Z7preparelPfS_S_
.visible .entry _Z7preparelPfS_S_(
	.param .u64 _Z7preparelPfS_S__param_0,
	.param .u64 _Z7preparelPfS_S__param_1,
	.param .u64 _Z7preparelPfS_S__param_2,
	.param .u64 _Z7preparelPfS_S__param_3
)
{
	.reg .pred 	%p<2>;
	.reg .b32 	%r<5>;
	.reg .f32 	%f<4>;
	.reg .b64 	%rd<13>;

	ld.param.u64 	%rd5, [_Z7preparelPfS_S__param_0];
	mov.u32 	%r1, %ctaid.x;
	mov.u32 	%r2, %tid.x;
	shl.b32 	%r3, %r1, 9;
	add.s32 	%r4, %r3, %r2;
	cvt.s64.s32 	%rd4, %r4;
	setp.ge.s64 	%p1, %rd4, %rd5;
	@%p1 bra 	$L__BB1_2;
	ld.param.u64 	%rd6, [_Z7preparelPfS_S__param_3];
	cvta.to.global.u64 	%rd1, %rd6;
	ld.param.u64 	%rd7, [_Z7preparelPfS_S__param_1];
	ld.param.u64 	%rd8, [_Z7preparelPfS_S__param_2];
	cvta.to.global.u64 	%rd2, %rd8;
	cvta.to.global.u64 	%rd3, %rd7;
	shl.b64 	%rd9, %rd4, 2;
	add.s64 	%rd10, %rd3, %rd9;
	ld.global.f32 	%f1, [%rd10];
	add.s64 	%rd11, %rd2, %rd9;
	st.global.f32 	[%rd11], %f1;
	ld.global.f32 	%f2, [%rd10];
	mul.f32 	%f3, %f2, %f2;
	add.s64 	%rd12, %rd1, %rd9;
	st.global.f32 	[%rd12], %f3;
$L__BB1_2:
	ret;

}
	// .globl	_Z6reduceliiPfS_
.visible .entry _Z6reduceliiPfS_(
	.param .u64 _Z6reduceliiPfS__param_0,
	.param .u32 _Z6reduceliiPfS__param_1,
	.param .u32 _Z6reduceliiPfS__param_2,
	.param .u64 _Z6reduceliiPfS__param_3,
	.param .u64 _Z6reduceliiPfS__param_4
)
{
	.reg .pred 	%p<14>;
	.reg .b32 	%r<20>;
	.reg .f32 	%f<57>;
	.reg .b64 	%rd<13>;
	// demoted variable
	.shared .align 4 .b8 _ZZ6reduceliiPfS_E6d_psum[2048];
	// demoted variable
	.shared .align 4 .b8 _ZZ6reduceliiPfS_E7d_psum2[2048];
	ld.param.u32 	%r4, [_Z6reduceliiPfS__param_1];
	mov.u32 	%r1, %ctaid.x;
	mov.u32 	%r2, %tid.x;
	shl.b32 	%r6, %r1, 9;
	add.s32 	%r7, %r6, %r2;
	setp.ge.s32 	%p1, %r7, %r4;
	mul.wide.s32 	%rd10, %r2, 4;
	mov.u64 	%rd11, _ZZ6reduceliiPfS_E6d_psum;
	add.s64 	%rd2, %rd11, %rd10;
	mov.u64 	%rd12, _ZZ6reduceliiPfS_E7d_psum2;
	add.s64 	%rd4, %rd12, %rd10;
	@%p1 bra 	$L__BB2_2;
	ld.param.u64 	%rd5, [_Z6reduceliiPfS__param_4];
	cvta.to.global.u64 	%rd6, %rd5;
	ld.param.u64 	%rd7, [_Z6reduceliiPfS__param_3];
	cvta.to.global.u64 	%rd8, %rd7;
	ld.param.u32 	%r5, [_Z6reduceliiPfS__param_2];
	mul.lo.s32 	%r8, %r7, %r5;
	mul.wide.s32 	%rd9, %r8, 4;
	add.s64 	%rd1, %rd8, %rd9;
	add.s64 	%rd3, %rd6, %rd9;
	ld.global.f32 	%f1, [%rd1];
	st.shared.f32 	[%rd2], %f1;
	ld.global.f32 	%f2, [%rd3];
	st.shared.f32 	[%rd4], %f2;
$L__BB2_2:
	bar.sync 	0;
	mov.u32 	%r9, %nctaid.x;
	add.s32 	%r10, %r9, -1;
	setp.eq.s32 	%p2, %r1, %r10;
	@%p2 bra 	$L__BB2_22;
	add.s32 	%r3, %r2, 1;
	and.b32  	%r11, %r3, 1;
	setp.eq.b32 	%p3, %r11, 1;
	mov.pred 	%p4, 0;
	xor.pred  	%p5, %p3, %p4;
	@%p5 bra 	$L__BB2_5;
	ld.shared.f32 	%f3, [%rd2];
	ld.shared.f32 	%f4, [%rd2+-4];
	add.rn.f32 	%f5, %f3, %f4;
	st.shared.f32 	[%rd2], %f5;
	ld.shared.f32 	%f6, [%rd4];
	ld.shared.f32 	%f7, [%rd4+-4];
	add.rn.f32 	%f8, %f6, %f7;
	st.shared.f32 	[%rd4], %f8;
$L__BB2_5:
	bar.sync 	0;
	and.b32  	%r12, %r3, 3;
	setp.ne.s32 	%p6, %r12, 0;
	@%p6 bra 	$L__BB2_7;
	ld.shared.f32 	%f9, [%rd2];
	ld.shared.f32 	%f10, [%rd2+-8];
	add.rn.f32 	%f11, %f9, %f10;
	st.shared.f32 	[%rd2], %f11;
	ld.shared.f32 	%f12, [%rd4];
	ld.shared.f32 	%f13, [%rd4+-8];
	add.rn.f32 	%f14, %f12, %f13;
	st.shared.f32 	[%rd4], %f14;
$L__BB2_7:
	bar.sync 	0;
	and.b32  	%r13, %r3, 7;
	setp.ne.s32 	%p7, %r13, 0;
	@%p7 bra 	$L__BB2_9;
	ld.shared.f32 	%f15, [%rd2];
	ld.shared.f32 	%f16, [%rd2+-16];
	add.rn.f32 	%f17, %f15, %f16;
	st.shared.f32 	[%rd2], %f17;
	ld.shared.f32 	%f18, [%rd4];
	ld.shared.f32 	%f19, [%rd4+-16];
	add.rn.f32 	%f20, %f18, %f19;
	st.shared.f32 	[%rd4], %f20;
$L__BB2_9:
	bar.sync 	0;
	and.b32  	%r14, %r3, 15;
	setp.ne.s32 	%p8, %r14, 0;
	@%p8 bra 	$L__BB2_11;
	ld.shared.f32 	%f21, [%rd2];
	ld.shared.f32 	%f22, [%rd2+-32];
	add.rn.f32 	%f23, %f21, %f22;
	st.shared.f32 	[%rd2], %f23;
	ld.shared.f32 	%f24, [%rd4];
	ld.shared.f32 	%f25, [%rd4+-32];
	add.rn.f32 	%f26, %f24, %f25;
	st.shared.f32 	[%rd4], %f26;
$L__BB2_11:
	bar.sync 	0;
	and.b32  	%r15, %r3, 31;
	setp.ne.s32 	%p9, %r15, 0;
	@%p9 bra 	$L__BB2_13;
	ld.shared.f32 	%f27, [%rd2];
	ld.shared.f32 	%f28, [%rd2+-64];
	add.rn.f32 	%f29, %f27, %f28;
	st.shared.f32 	[%rd2], %f29;
	ld.shared.f32 	%f30, [%rd4];
	ld.shared.f32 	%f31, [%rd4+-64];
	add.rn.f32 	%f32, %f30, %f31;
	st.shared.f32 	[%rd4], %f32;
$L__BB2_13:
	bar.sync 	0;
	and.b32  	%r16, %r3, 63;
	setp.ne.s32 	%p10, %r16, 0;
	@%p10 bra 	$L__BB2_15;
	ld.shared.f32 	%f33, [%rd2];
	ld.shared.f32 	%f34, [%rd2+-128];
	add.rn.f32 	%f35, %f33, %f34;
	st.shared.f32 	[%rd2], %f35;
	ld.shared.f32 	%f36, [%rd4];
	ld.shared.f32 	%f37, [%rd4+-128];
	add.rn.f32 	%f38, %f36, %f37;
	st.shared.f32 	[%rd4], %f38;
$L__BB2_15:
	bar.sync 	0;
	and.b32  	%r17, %r3, 127;
	setp.ne.s32 	%p11, %r17, 0;
	@%p11 bra 	$L__BB2_17;
	ld.shared.f32 	%f39, [%rd2];
	ld.shared.f32 	%f40, [%rd2+-256];
	add.rn.f32 	%f41, %f39, %f40;
	st.shared.f32 	[%rd2], %f41;
	ld.shared.f32 	%f42, [%rd4];
	ld.shared.f32 	%f43, [%rd4+-256];
	add.rn.f32 	%f44, %f42, %f43;
	st.shared.f32 	[%rd4], %f44;
$L__BB2_17:
	bar.sync 	0;
	and.b32  	%r18, %r3, 255;
	setp.ne.s32 	%p12, %r18, 0;
	@%p12 bra 	$L__BB2_19;
	ld.shared.f32 	%f45, [%rd2];
	ld.shared.f32 	%f46, [%rd2+-512];
	add.rn.f32 	%f47, %f45, %f46;
	st.shared.f32 	[%rd2], %f47;
	ld.shared.f32 	%f48, [%rd4];
	ld.shared.f32 	%f49, [%rd4+-512];
	add.rn.f32 	%f50, %f48, %f49;
	st.shared.f32 	[%rd4], %f50;
$L__BB2_19:
	bar.sync 	0;
	and.b32  	%r19, %r3, 511;
	setp.ne.s32 	%p13, %r19, 0;
	@%p13 bra 	$L__BB2_21;
	ld.shared.f32 	%f51, [%rd2];
	ld.shared.f32 	%f52, [%rd2+-1024];
	add.rn.f32 	%f53, %f51, %f52;
	st.shared.f32 	[%rd2], %f53;
	ld.shared.f32 	%f54, [%rd4];
	ld.shared.f32 	%f55, [%rd4+-1024];
	add.rn.f32 	%f56, %f54, %f55;
	st.shared.f32 	[%rd4], %f56;
$L__BB2_21:
	bar.sync 	0;
$L__BB2_22:
	ret;

}
	// .globl	_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_
.visible .entry _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_(
	.param .f32 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_0,
	.param .u32 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_1,
	.param .u32 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_2,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_3,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_4,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_5,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_6,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_7,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_8,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_9,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_10,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_11,
	.param .f32 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_12,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_13,
	.param .u64 _Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_14
)
{
	.reg .pred 	%p<5>;
	.reg .b32 	%r<24>;
	.reg .f32 	%f<35>;
	.reg .b64 	%rd<50>;
	.reg .f64 	%fd<10>;

	ld.param.u64 	%rd15, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_3];
	mov.u32 	%r2, %ctaid.x;
	mov.u32 	%r3, %tid.x;
	shl.b32 	%r4, %r2, 9;
	add.s32 	%r5, %r4, %r3;
	cvt.s64.s32 	%rd11, %r5;
	setp.ge.s64 	%p1, %rd11, %rd15;
	@%p1 bra 	$L__BB3_5;
	ld.param.f32 	%f7, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_12];
	ld.param.u32 	%r1, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_1];
	ld.param.u64 	%rd12, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_14];
	cvta.to.global.u64 	%rd1, %rd12;
	ld.param.u64 	%rd13, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_13];
	cvta.to.global.u64 	%rd2, %rd13;
	ld.param.u64 	%rd14, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_11];
	cvta.to.global.u64 	%rd3, %rd14;
	ld.param.u64 	%rd16, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_10];
	cvta.to.global.u64 	%rd4, %rd16;
	ld.param.u64 	%rd17, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_4];
	ld.param.u64 	%rd18, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_9];
	cvta.to.global.u64 	%rd5, %rd18;
	ld.param.u64 	%rd19, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_5];
	ld.param.u64 	%rd20, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_8];
	cvta.to.global.u64 	%rd6, %rd20;
	ld.param.u64 	%rd21, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_6];
	ld.param.u64 	%rd22, [_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0__param_7];
	cvta.to.global.u64 	%rd7, %rd22;
	cvta.to.global.u64 	%rd8, %rd21;
	cvta.to.global.u64 	%rd9, %rd19;
	cvta.to.global.u64 	%rd10, %rd17;
	cvt.u32.u64 	%r6, %rd11;
	add.s32 	%r8, %r6, 1;
	div.s32 	%r9, %r8, %r1;
	mul.lo.s32 	%r10, %r9, %r1;
	sub.s32 	%r11, %r8, %r10;
	setp.eq.s32 	%p2, %r11, 0;
	selp.b32 	%r12, %r1, %r11, %p2;
	selp.s32 	%r13, -1, 0, %p2;
	add.s32 	%r14, %r9, %r13;
	shl.b64 	%rd23, %rd11, 2;
	add.s64 	%rd24, %rd1, %rd23;
	ld.global.f32 	%f9, [%rd24];
	cvt.s64.s32 	%rd25, %r12;
	mul.wide.s32 	%rd26, %r12, 4;
	add.s64 	%rd27, %rd10, %rd26;
	ld.global.u32 	%r15, [%rd27+-4];
	mul.lo.s32 	%r16, %r14, %r1;
	add.s32 	%r17, %r16, %r15;
	mul.wide.s32 	%rd28, %r17, 4;
	add.s64 	%rd29, %rd1, %rd28;
	ld.global.f32 	%f10, [%rd29];
	sub.f32 	%f1, %f10, %f9;
	add.s64 	%rd30, %rd9, %rd26;
	ld.global.u32 	%r18, [%rd30+-4];
	add.s32 	%r19, %r18, %r16;
	mul.wide.s32 	%rd31, %r19, 4;
	add.s64 	%rd32, %rd1, %rd31;
	ld.global.f32 	%f11, [%rd32];
	sub.f32 	%f2, %f11, %f9;
	mul.wide.s32 	%rd33, %r14, 4;
	add.s64 	%rd34, %rd7, %rd33;
	ld.global.u32 	%r20, [%rd34];
	mul.lo.s32 	%r21, %r20, %r1;
	cvt.s64.s32 	%rd35, %r21;
	add.s64 	%rd36, %rd35, %rd25;
	shl.b64 	%rd37, %rd36, 2;
	add.s64 	%rd38, %rd1, %rd37;
	ld.global.f32 	%f12, [%rd38+-4];
	sub.f32 	%f3, %f12, %f9;
	add.s64 	%rd39, %rd8, %rd33;
	ld.global.u32 	%r22, [%rd39];
	mul.lo.s32 	%r23, %r22, %r1;
	cvt.s64.s32 	%rd40, %r23;
	add.s64 	%rd41, %rd40, %rd25;
	shl.b64 	%rd42, %rd41, 2;
	add.s64 	%rd43, %rd1, %rd42;
	ld.global.f32 	%f13, [%rd43+-4];
	sub.f32 	%f4, %f13, %f9;
	mul.f32 	%f14, %f2, %f2;
	fma.rn.f32 	%f15, %f1, %f1, %f14;
	fma.rn.f32 	%f16, %f3, %f3, %f15;
	fma.rn.f32 	%f17, %f4, %f4, %f16;
	mul.f32 	%f18, %f9, %f9;
	div.rn.f32 	%f19, %f17, %f18;
	add.f32 	%f20, %f1, %f2;
	add.f32 	%f21, %f20, %f3;
	add.f32 	%f22, %f21, %f4;
	div.rn.f32 	%f23, %f22, %f9;
	cvt.f64.f32 	%fd1, %f19;
	mul.f32 	%f24, %f23, %f23;
	cvt.f64.f32 	%fd2, %f24;
	mul.f64 	%fd3, %fd2, 0dBFB0000000000000;
	fma.rn.f64 	%fd4, %fd1, 0d3FE0000000000000, %fd3;
	cvt.rn.f32.f64 	%f25, %fd4;
	cvt.f64.f32 	%fd5, %f23;
	fma.rn.f64 	%fd6, %fd5, 0d3FD0000000000000, 0d3FF0000000000000;
	cvt.rn.f32.f64 	%f26, %fd6;
	mul.f32 	%f27, %f26, %f26;
	div.rn.f32 	%f28, %f25, %f27;
	sub.f32 	%f29, %f28, %f7;
	add.f32 	%f30, %f7, 0f3F800000;
	mul.f32 	%f31, %f30, %f7;
	div.rn.f32 	%f32, %f29, %f31;
	cvt.f64.f32 	%fd7, %f32;
	add.f64 	%fd8, %fd7, 0d3FF0000000000000;
	rcp.rn.f64 	%fd9, %fd8;
	cvt.rn.f32.f64 	%f5, %fd9;
	setp.lt.f32 	%p3, %f5, 0f00000000;
	mov.f32 	%f34, 0f00000000;
	@%p3 bra 	$L__BB3_4;
	setp.leu.f32 	%p4, %f5, 0f3F800000;
	mov.f32 	%f34, %f5;
	@%p4 bra 	$L__BB3_4;
	mov.f32 	%f34, 0f3F800000;
$L__BB3_4:
	add.s64 	%rd45, %rd6, %rd23;
	st.global.f32 	[%rd45], %f1;
	add.s64 	%rd46, %rd5, %rd23;
	st.global.f32 	[%rd46], %f2;
	add.s64 	%rd47, %rd3, %rd23;
	st.global.f32 	[%rd47], %f3;
	add.s64 	%rd48, %rd4, %rd23;
	st.global.f32 	[%rd48], %f4;
	add.s64 	%rd49, %rd2, %rd23;
	st.global.f32 	[%rd49], %f34;
$L__BB3_5:
	ret;

}
	// .globl	_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_
.visible .entry _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_(
	.param .f32 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_0,
	.param .u32 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_1,
	.param .u32 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_2,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_3,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_4,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_5,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_6,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_7,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_8,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_9,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_10,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_11,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_12,
	.param .u64 _Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_13
)
{
	.reg .pred 	%p<3>;
	.reg .b32 	%r<19>;
	.reg .f32 	%f<15>;
	.reg .b64 	%rd<37>;
	.reg .f64 	%fd<6>;

	ld.param.u64 	%rd13, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_3];
	mov.u32 	%r2, %ctaid.x;
	mov.u32 	%r3, %tid.x;
	shl.b32 	%r4, %r2, 9;
	add.s32 	%r5, %r4, %r3;
	cvt.s64.s32 	%rd9, %r5;
	setp.ge.s64 	%p1, %rd9, %rd13;
	@%p1 bra 	$L__BB4_2;
	ld.param.u32 	%r1, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_1];
	ld.param.f32 	%f1, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_0];
	ld.param.u64 	%rd10, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_13];
	cvta.to.global.u64 	%rd1, %rd10;
	ld.param.u64 	%rd11, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_12];
	cvta.to.global.u64 	%rd2, %rd11;
	ld.param.u64 	%rd12, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_11];
	cvta.to.global.u64 	%rd3, %rd12;
	ld.param.u64 	%rd14, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_10];
	cvta.to.global.u64 	%rd4, %rd14;
	ld.param.u64 	%rd15, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_9];
	cvta.to.global.u64 	%rd5, %rd15;
	ld.param.u64 	%rd16, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_5];
	ld.param.u64 	%rd17, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_8];
	cvta.to.global.u64 	%rd6, %rd17;
	ld.param.u64 	%rd18, [_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0__param_6];
	cvta.to.global.u64 	%rd7, %rd18;
	cvta.to.global.u64 	%rd8, %rd16;
	cvt.u32.u64 	%r6, %rd9;
	add.s32 	%r8, %r6, 1;
	div.s32 	%r9, %r8, %r1;
	mul.lo.s32 	%r10, %r9, %r1;
	sub.s32 	%r11, %r8, %r10;
	setp.eq.s32 	%p2, %r11, 0;
	selp.b32 	%r12, %r1, %r11, %p2;
	selp.s32 	%r13, -1, 0, %p2;
	add.s32 	%r14, %r9, %r13;
	shl.b64 	%rd19, %rd9, 2;
	add.s64 	%rd20, %rd2, %rd19;
	ld.global.f32 	%f2, [%rd20];
	cvt.s64.s32 	%rd21, %r12;
	mul.wide.s32 	%rd22, %r12, 4;
	add.s64 	%rd23, %rd8, %rd22;
	ld.global.u32 	%r15, [%rd23+-4];
	mad.lo.s32 	%r16, %r14, %r1, %r15;
	mul.wide.s32 	%rd24, %r16, 4;
	add.s64 	%rd25, %rd2, %rd24;
	ld.global.f32 	%f3, [%rd25];
	mul.wide.s32 	%rd26, %r14, 4;
	add.s64 	%rd27, %rd7, %rd26;
	ld.global.u32 	%r17, [%rd27];
	mul.lo.s32 	%r18, %r17, %r1;
	cvt.s64.s32 	%rd28, %r18;
	add.s64 	%rd29, %rd28, %rd21;
	shl.b64 	%rd30, %rd29, 2;
	add.s64 	%rd31, %rd2, %rd30;
	ld.global.f32 	%f4, [%rd31+-4];
	add.s64 	%rd32, %rd6, %rd19;
	ld.global.f32 	%f5, [%rd32];
	add.s64 	%rd33, %rd5, %rd19;
	ld.global.f32 	%f6, [%rd33];
	mul.f32 	%f7, %f3, %f6;
	fma.rn.f32 	%f8, %f2, %f5, %f7;
	add.s64 	%rd34, %rd3, %rd19;
	ld.global.f32 	%f9, [%rd34];
	fma.rn.f32 	%f10, %f2, %f9, %f8;
	add.s64 	%rd35, %rd4, %rd19;
	ld.global.f32 	%f11, [%rd35];
	fma.rn.f32 	%f12, %f4, %f11, %f10;
	add.s64 	%rd36, %rd1, %rd19;
	ld.global.f32 	%f13, [%rd36];
	cvt.f64.f32 	%fd1, %f13;
	cvt.f64.f32 	%fd2, %f1;
	mul.f64 	%fd3, %fd2, 0d3FD0000000000000;
	cvt.f64.f32 	%fd4, %f12;
	fma.rn.f64 	%fd5, %fd3, %fd4, %fd1;
	cvt.rn.f32.f64 	%f14, %fd5;
	st.global.f32 	[%rd36], %f14;
$L__BB4_2:
	ret;

}
	// .globl	_Z8compresslPf
.visible .entry _Z8compresslPf(
	.param .u64 _Z8compresslPf_param_0,
	.param .u64 _Z8compresslPf_param_1
)
{
	.reg .pred 	%p<5>;
	.reg .b32 	%r<9>;
	.reg .f32 	%f<24>;
	.reg .b64 	%rd<7>;

	ld.param.u64 	%rd3, [_Z8compresslPf_param_0];
	mov.u32 	%r1, %ctaid.x;
	mov.u32 	%r2, %tid.x;
	shl.b32 	%r3, %r1, 9;
	add.s32 	%r4, %r3, %r2;
	cvt.s64.s32 	%rd2, %r4;
	setp.ge.s64 	%p1, %rd2, %rd3;
	@%p1 bra 	$L__BB5_2;
	ld.param.u64 	%rd4, [_Z8compresslPf_param_1];
	cvta.to.global.u64 	%rd1, %rd4;
	shl.b64 	%rd5, %rd2, 2;
	add.s64 	%rd6, %rd1, %rd5;
	ld.global.f32 	%f1, [%rd6];
	setp.lt.f32 	%p2, %f1, 0f00800000;
	mul.f32 	%f2, %f1, 0f4B000000;
	selp.f32 	%f3, %f2, %f1, %p2;
	selp.f32 	%f4, 0fC1B80000, 0f00000000, %p2;
	mov.b32 	%r5, %f3;
	add.s32 	%r6, %r5, -1059760811;
	and.b32  	%r7, %r6, -8388608;
	sub.s32 	%r8, %r5, %r7;
	mov.b32 	%f5, %r8;
	cvt.rn.f32.s32 	%f6, %r7;
	fma.rn.f32 	%f7, %f6, 0f34000000, %f4;
	add.f32 	%f8, %f5, 0fBF800000;
	fma.rn.f32 	%f9, %f8, 0fBE055027, 0f3E1039F6;
	fma.rn.f32 	%f10, %f9, %f8, 0fBDF8CDCC;
	fma.rn.f32 	%f11, %f10, %f8, 0f3E0F2955;
	fma.rn.f32 	%f12, %f11, %f8, 0fBE2AD8B9;
	fma.rn.f32 	%f13, %f12, %f8, 0f3E4CED0B;
	fma.rn.f32 	%f14, %f13, %f8, 0fBE7FFF22;
	fma.rn.f32 	%f15, %f14, %f8, 0f3EAAAA78;
	fma.rn.f32 	%f16, %f15, %f8, 0fBF000000;
	mul.f32 	%f17, %f8, %f16;
	fma.rn.f32 	%f18, %f17, %f8, %f8;
	fma.rn.f32 	%f19, %f7, 0f3F317218, %f18;
	setp.gt.u32 	%p3, %r5, 2139095039;
	fma.rn.f32 	%f20, %f3, 0f7F800000, 0f7F800000;
	selp.f32 	%f21, %f20, %f19, %p3;
	setp.eq.f32 	%p4, %f3, 0f00000000;
	mul.f32 	%f22, %f21, 0f437F0000;
	selp.f32 	%f23, 0fFF800000, %f22, %p4;
	st.global.f32 	[%rd6], %f23;
$L__BB5_2:
	ret;

}
