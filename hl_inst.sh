echo PART 1++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
cmake -DHL_SDK_PATH=../hlsdk/ -DXASH_VGUI=no -DXASH_NANOGL=yes -DXASH_GLES=yes ..
make
cd ~
mkdir halflife
cp xash3d/build/engine/libxash.so halflife/
cp xash3d/build/mainui/libxashmenu.so halflife/
cp xash3d/build/game_launch/xash3d halflife/
echo PART 2++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git clone https://github.com/FWGS/hlsdk-xash3d
cd hlsdk-xash3d
mkdir build
cd build
cmake ../
make
cd ~
cp hlsdk-xash3d/build/cl_dll/client.so halflife/
cp hlsdk-xash3d/build/dlls/hl.so halflife/
#delete crap
cd ~
rm -rf hlsdk-xash3d
rm -rf xash3d
echo PART 3++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo Get the "valve" directory and its contents from your copy of HL.
echo Copy it to the folder with your compiled Xash binaries.
echo Go to the "valve" dir and open liblist.gam in a text editor.
echo Change the line "gamedll_linux=<something>" to
echo "gamedll_linux="hl.so""
echo copy hl.so to /home/rock/halflife/valve/dlls/hl.so
echo "That's all. "
echo run game with "LD_LIBRARY_PATH=/optvc/lib:/home/rock/halflife/:. ./xash3d -console"



#also u can add counter strike 1.6, just add "cstrike" folder to ~/halflife/ and
#cp hl.so /cstrike/dlls/cs.so
#and u can change game in halflife
