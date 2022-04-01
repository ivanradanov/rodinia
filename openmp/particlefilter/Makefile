include ../../common/openmp.make.config

particle_filter: ex_particle_OPENMP_seq.c
	$(CC) ex_particle_OPENMP_seq.c -o particle_filter $(CC_FLAGS) $(LINKER_FLAGS)


icc_openmp: ex_particle_OPENMP_seq.c
	icc -fast -openmp ex_particle_OPENMP_seq.c -o particle_filter


clean:
	rm particle_filter
