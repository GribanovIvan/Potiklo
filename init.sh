#!/bin/sh

cd overrides
mkdir -p mods
cd mods
curl -LO https://github.com/Team-Fruit/Emojicord/releases/download/build%2Fb46/Emojicord-1.7.10-1.1.1.46-universal.jar
curl -LO https://github.com/GTNewHorizons/MalisisDoors/releases/download/1.16.0-GTNH/malisisdoors-1.16.0-GTNH.jar #never version is incompatible with other mods
curl -O $(curl 'https://www.mediafire.com/download/ub48kk5i1rmsrgw/WildCaves3-0.4.3.7(1.7.10).jar/file' | grep \"downloadB|cut -d\" -f2)
mkdir -p ../scripts
cd ../scripts
curl -O https://mediafilez.forgecdn.net/files/4192/999/1.7.10-AetherLegacy-Aspects.zs
curl https://mediafilez.forgecdn.net/files/4205/755/1.7.10-ThaumcraftAspectsRetweaked.zs|sed '/\/\*/,/\*\//d'>1.7.10-ThaumcraftAspectsRetweaked_fixed.zs
curl -O https://mediafilez.forgecdn.net/files/2535/602/Legacy%20Scripts.zip
unzip Legacy*Scripts.zip '8x Stairs - Applied Energistics 2 (1.7).zs' '8x Stairs - Biomes O'\'' Plenty (1.7).zs' '8x Stairs - Chisel (1.7).zs' '8x Stairs - Thaumcraft (1.7).zs' '8x Stairs - Vanilla (1.7).zs'
rm Legacy*Scripts.zip
curl https://mediafilez.forgecdn.net/files/3598/340/ExtraTiC-patches-Thaumcraft-1.2.zs | grep -v mana >ExtraTiC-patches-Thaumcraft-1.2_withoutmana.zs
curl -O https://mediafilez.forgecdn.net/files/2313/159/IronChests%20%2B%20Extra%20Carts.zs
cd ..
curl -O https://legionfonts.com/storage/archives/Minecraft%201.1.zip
unzip Minecraft%201.1.zip
mkdir fontfiles
mv 'Minecraft 1.1.ttf' fontfiles
rm Minecraft%201.1.zip
sh up.sh
