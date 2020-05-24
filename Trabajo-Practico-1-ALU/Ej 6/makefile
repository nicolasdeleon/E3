# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = main

COMPILER = iverilog
CFLAGS   = 

# change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/*.v)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

$(BINDIR)/$(TARGET): $(SOURCES)
	@mkdir -p bin
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete!"

ALU_TB: $(SRCDIR)/ALU_TB.v
	@$(COMPILER) $(SRCDIR)/ALU_TB.v $(SRCDIR)/ALU.v $(SRCDIR)/And.v $(SRCDIR)/Bit4Adder.v $(SRCDIR)/Comp2.v $(SRCDIR)/Not.v $(SRCDIR)/Or.v $(SRCDIR)/Res4Bit.v $(SRCDIR)/ShiftLeft.v $(SRCDIR)/SimpleAdder.v $(SRCDIR)/Xor.v -o $@

And_TB: $(SRCDIR)/And_TB.v
	@$(COMPILER) $(SRCDIR)/And_TB.v $(SRCDIR)/And.v -o $@

Or_TB: $(SRCDIR)/Or_TB.v
	@$(COMPILER) $(SRCDIR)/Or_TB.v $(SRCDIR)/Or.v -o $@	

Not_TB: $(SRCDIR)/Not_TB.v
	@$(COMPILER) $(SRCDIR)/Not_TB.v $(SRCDIR)/Not.v -o $@


ShiftLeft_TB: $(SRCDIR)/ShiftLeft_TB.v
	@$(COMPILER) $(SRCDIR)/ShiftLeft_TB.v $(SRCDIR)/ShiftLeft.v -o $@

Xor_TB: $(SRCDIR)/Xor_TB.v
	@$(COMPILER) $(SRCDIR)/Xor_TB.v $(SRCDIR)/Xor.v -o $@
	
Bit4Adder_TB: $(SRCDIR)/Bit4Adder_TB.v
	@$(COMPILER) $(SRCDIR)/Bit4Adder_TB.v $(SRCDIR)/Bit4Adder.v $(SRCDIR)/SimpleAdder.v -o $@
	
Res4Bit_TB: $(SRCDIR)/Res4Bit_TB.v
	@$(COMPILER) $(SRCDIR)/Res4Bit_TB.v  $(SRCDIR)/Res4Bit.v $(SRCDIR)/SimpleAdder.v $(SRCDIR)/Comp2.v -o $@


.PHONY: clean
clean: 
	@$(rm) $(BINDIR)/$(TARGET)
	@echo "Executable removed!"

.PHONY: purge
purge: clean
	@$(rm) -rf $(BINDIR)
	@echo "Purge complete!"