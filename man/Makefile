all: ff-compute-accuracy.1 ff-convert.1

clean:
	rm *.1

%: %.scd
	scdoc < $< > $@
