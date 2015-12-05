COMPS=portd

IPCS=portd

all: ipc exe 

exe: $(COMPS)
	 $(foreach f,$^, make -C $(f) exe;)

ipc: $(IPCS)
	 $(foreach f,$^, make -C $(f) ipc;)

install: $(COMPS)
	 $(foreach f,$^, make -C $(f) install;)