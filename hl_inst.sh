cd ~
git clone --recursive https://github.com/FWGS/xash3d-fwgs
cd xash3d-fwgs
cd engine
git clone https://github.com/FWGS/nanogl
cd ..
git clone https://github.com/ValveSoftware/halflife hlsdk/
cd ~/xash3d-fwgs/ref_gl/nanogl
git clone https://github.com/FWGS/nanogl/
cd nanogl
cd ~/xash3d-fwgs/
python3 ./waf configure -T release --disable-vgui --enable-gles1 --enable-gles2 --64bits --enable-poly-opt
python3 ./waf build
sudo rm -rf /usr/local/lib/xash3d/*
sudo python3 ./waf install
cd ~
git clone https://github.com/FWGS/hlsdk-xash3d
cd hlsdk-xash3d
python3 waf configure -T release --enable-goldsrc-support
python3 waf
mkdir ~/halflife
cp ~/xash3d-fwgs/build/game_launch/xash3d ~/halflife/
cp ~/hlsdk-xash3d/build/dlls/hl_arm64.so ~/halflife/
cp ~/hlsdk-xash3d/build/cl_dll/client_arm64.so ~/halflife/
 #delete crap
rm -rf ~/hlsdk-xash3d
rm -rf ~/xash3d-fwgs

