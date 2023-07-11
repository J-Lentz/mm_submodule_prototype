FFLAGS += -I include

hello_mod_r4.o : hello_mod_impl.F90
	$(FC) $(FFLAGS) -D INCLUDE_="<hello_r4.fh>" -o $@ -c $^

hello_mod_r8.o : hello_mod_impl.F90
	$(FC) $(FFLAGS) -D INCLUDE_="<hello_r8.fh>" -o $@ -c $^

%.o : %.F90
	$(FC) $(FFLAGS) -o $@ -c $^

main : main.F90 hello_mod.o hello_mod_r4.o hello_mod_r8.o
	$(FC) $(FFLAGS) -o $@ $^

.PHONY : clean
clean :
	rm -f *.o *.mod *.smod main
