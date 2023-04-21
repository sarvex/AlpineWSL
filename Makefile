OUT_ZIP=Alpine.zip
LNCR_EXE=Alpine.exe

ARCH=x64

DLR=curl
DLR_FLAGS=-L
LNCR_ZIP_EXE=Alpine.exe

all: $(OUT_ZIP)

zip: $(OUT_ZIP)
$(OUT_ZIP): $(ARCH)

x86:
	cd x86 && $(MAKE)
	mv x86/$(OUT_ZIP) ./

x64:
	cd x64 && $(MAKE)
	mv x64/$(OUT_ZIP) ./

arm64:
	cd arm64 && $(MAKE)
	mv arm64/$(OUT_ZIP) ./

clean:
	cd x64 && make clean
	cd arm64 && make clean
