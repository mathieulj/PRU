git clone git://github.com/beagleboard/am335x_pru_package.git
cd am335x_pru_package/pru_sw/app_loader/interface
CROSS_COMPILE="" make
cd ../../utils/pasm_source/
./linuxbuild 
cd ../../example_apps/
echo 'Nano will open up. Make sure to change the value of PASM? to ../utils/pasm
read -p 'Press [Enter] key to continue'
nano Makefile
CROSS_COMPILE="" make

