# half-life pinebook pro
thx https://forum.pine64.org/showthread.php?tid=8394

after script 
Copy "valve" folder from original game to ~/halflife
Go to the "valve" dir and open liblist.gam in a text editor.
Change the line "gamedll_linux=<something>" to "gamedll_linux="hl.so""

cd ~/halflife
cp hl.so valve/dlls/hl.so
run game with "LD_LIBRARY_PATH=/optvc/lib:/home/rock/halflife/:. ./xash3d -console"



Blue shift
Copy "bshift" folder from original game to ~/halflife
cd ~/halflife 
cp hl.so bshift/dlls/bshift.so

Counter Strike 
Copy "cstrike" folder from original game to ~/halflife
cd ~/halflife 
cp hl.so bshift/dlls/cs.so

Opposing Force 
Copy "gearbox" folder from original game to ~/halflife
cd ~/halflife 
cp hl.so bshift/dlls/opfor.so

Team Fortress Classic 
Copy "tfc" folder from original game to ~/halflife
cd ~/halflife 
cp hl.so bshift/dlls/tfc.so

