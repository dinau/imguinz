#
#OPT += -fincremental
OPT += --release=fast
#OPT += --release=small
# Fail compilation
#OPT += --release=safe

include ../makefile.common.header.mk

AFTER_RUN_CMD = cp -f $(ZIG_BIN_DIR)/save_load.* .

include ../makefile.common.mk
