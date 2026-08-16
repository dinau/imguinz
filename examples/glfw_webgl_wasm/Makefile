#
#OPT += --release=fast
#OPT += --release=small
# Fail compilation
#OPT += --release=safe

TARGET = $(notdir $(CURDIR))

OPT +=  -Doptimize=ReleaseSmall
#OPT +=  -Doptimize=Debug

# Ensure EMSDK environment variable is set
ifneq ($(EMSDK),)
    EMSCRIPTEN_DIR := $(subst \,/,$(EMSDK))/upstream/emscripten
else
    $(warning [WARNING] EMSDK environment variable is not set. \
		Please run 'emsdk_env.bat' (Windows) or 'source emsdk_env.sh' (Linux/macOS) first)
endif

all:
	echo $(EMSCRIPTEN_DIR)
	@echo zig-$(shell zig version)
	@emcc --version
	zig build -Dtarget=wasm32-emscripten      \
  -Demscripten_sysroot=$(EMSCRIPTEN_DIR)    \
  $(OPT)

.PHONY: clean run fmt app

clean:
	@rm -fr .zig-cache zig-out zig-pkg

cleanall: clean


run: all
	(cd zig-out && python -m http.server 8000)

app:
	@echo zig-$(shell zig version)
	zig build $(OPT)
	(cd zig-out/bin && ./$(TARGET))
	cp zig-out/bin/*.ini .


fmt:
	zig fmt .
