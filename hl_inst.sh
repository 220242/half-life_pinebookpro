cd ~
git clone --recursive https://github.com/FWGS/xash3d
cd xash3d
cd engine
git clone https://github.com/FWGS/nanogl
cd ..
git clone https://github.com/ValveSoftware/halflife
mv halflife hlsdk
mkdir build
cd build
cmake -DHL_SDK_PATH=../hlsdk/ -DXASH_VGUI=no -DXASH_NANOGL=yes -DXASH_GLES=yes -DXASH_64BIT=1 ..
make
cd ~
git clone https://github.com/FWGS/hlsdk-xash3d
cd hlsdk-xash3d
python3 waf configure -T release
python3 waf
cd ~
mkdir halflife
cp ~/xash3d/build/engine/libxash.so halflife/
cp ~/xash3d/build/mainui/libxashmenu64.so halflife/
cp ~/xash3d/build/game_launch/xash3d halflife/
cp ~/hlsdk-xash3d/build/dlls/hl_arm64.so ~/halflife/
cp ~/hlsdk-xash3d/build/cl_dll/client_arm64.so ~/halflife/client64.so
 #delete crap
cd ~
rm -rf hlsdk-xash3d
rm -rf xash3d
