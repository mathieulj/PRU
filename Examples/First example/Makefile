all: Build/prucode.bin Build/prucode_bin.h

Build/prucode_bin.h: prucode.p prucode.hp
	pasm -c prucode.p Build/prucode

Build/prucode.bin: prucode.p prucode.hp
	pasm -b prucode.p Build/prucode
	
