#!/bin/bash

function download_github {
    counter=0;au="$1";shift
    for arg in "$@"; do
            counter=$((counter + 1))
            if ((counter % 2));then
                    link=https://github.com$(curl $(curl -L https://github.com/$au/$arg/releases/latest 2>/dev/null | grep src | grep expanded|cut -d\" -f6) 2>/dev/null  |grep href | grep -v sources | grep -v dev | grep -v api | grep -v processor | grep jar | cut -d\" -f2)
                    remote=$(echo $link | cut -d/ -f9)
                    if [ "$remote" == $2 ]; then echo -e "\e[90m$2 is up-to-date...\e[39m"
		    else if [[ $2 == *\** ]]; then echo -e Downloading $remote
                        else echo -e "\e[1mUpdating $2 -> $remote\e[0m";rm $2
                    fi
                    curl -LO $link 2>/dev/null
    fi;fi;shift;done
}

mkdir -p resources/thaumcraft/lang
curl -L -o resources/thaumcraft/lang/uk_UA.lang https://github.com/GribanovIvan/tc4-ua/raw/master/assets/thaumcraft/lang/uk_UA.lang
cd mods

download_github GTNewHorizons ae2stuff ae2stuff-*.jar Minecraft-Backpack-Mod backpack-*.jar INpureCore INpureCore-*.jar BugTorch bugtorch-*.jar LittleTiles littletiles-*.jar MouseTweaks MouseTweaks-*.jar bdlib bdlib-*.jar AE2FluidCraft-Rework ae2fc-*jar ChiselTones chiseltones-*.jar FindIt findit-*.jar ForbiddenMagic Forbidden.Magic-*.jar AppleCore AppleCore-*.jar BetterBuildersWands BetterBuildersWands-*.jar Chisel chisel-*.jar OpenSecurity opensecurity-*.jar BetterCrashes bettercrashes-*.jar BetterAchievements BetterAchievements-*.jar WAWLA Wawla-*.jar waila Waila*.jar twilightforest TwilightForest-*.jar ToroHealth torohealth-*.jar TinkersConstruct TConstruct-*.jar TiC-Tooltips TiCTooltips-*.jar ThaumicTinkerer ThaumicTinkerer-*.jar ThaumicEnergistics thaumicenergistics-*.jar ThaumicBases Thaumic-Based-*.jar ThaumicInventoryScanning tcinventoryscan-*.jar Thaumic_Exploration Thaumic-Exploration-*.jar ThaumcraftMobAspects ThaumcraftMobAspects-*.jar thaumcraft-research-tweaks ThaumcraftResearchTweaks-*.jar WarpTheory WarpTheory-*.jar TCNodeTracker tcnodetracker-*.jar TCNEIAdditions tcneiadditions-*.jar CreativeCore creativecore-*.jar HoloInventory holoinventory-*.jar inventory-tweaks inventorytweaks-*.jar WAILAPlugins WAILAPlugins-*.jar Roguelike-Dungeons roguelike-*.jar Random-Things RandomThings-*.jar NaturesCompass naturescompass-*.jar neiaddons NEIAddons-*.jar NEI-Integration NEIIntegration-*.jar NetherPortalFix netherportalfix-*.jar OpenComputers OpenComputers-*.jar OCGlasses OpenGlasses-*.jar OpenPrinter *pen*rinter-*.jar OverloadedArmorBar overloadedarmorbar-*.jar EnderCore endercore-*.jar Mantle Mantle-*.jar The-Aether-GTNH aether-1.7.10-*.jar OpenBlocks OpenBlocks-*.jar OpenModsLib OpenModsLibs-*.jar Controlling controlling-*.jar ironchest IronChest-*.jar ForgeMultipart ForgeMultipart-*.jar MrTJPCore MrTJPCore-*.jar ModTweaker ModTweaker*.jar  Realistic-Terrain-Generation RTG-*.jar IronChestMinecarts IronChestMinecarts-*.jar Forgelin forgelin-*.jar Gadomancy gadomancy*.jar Tainted-Magic Tainted-Magic-*.jar
download_github jss2a98aj Baubles-Expanded BaublesExpanded-*.jar
download_github KryptonCaptain ThaumicAlchemy Thaumic-Alchemy-*.jar ThaumErrata Thaumic-Errata-*.jar
download_github unilock LegacyFixes legacyfixes-*.jar
cd ..
packwiz update --all -y
packwiz refresh
