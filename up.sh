#!/bin/sh

function download_github {
    au="$1"; shift
    for arg in "$@"; do
            echo "Downloading $arg"
            curl -L https://github.com$(curl $(curl -L https://github.com/$au/$arg/releases/latest 2>/dev/null| grep src | grep expanded|cut -d\" -f6) 2>/dev/null  |grep href | grep -v sources | grep -v dev | grep -v api | grep -v processor | grep jar | cut -d\" -f2) -O 2>/dev/null
    done
}


cd mods
rm adventurebackpack-*.jar ae2stuff-*.jar gtnhlib-*.jar backpack-*.jar INpureCore-*.jar ae2fc-*jar bugtorch-*.jar littletiles-*.jar MouseTweaks-*.jar bdlib-*.jar angelica-*.jar appliedenergistics2-*.jar BaublesExpanded-*.jar findit-*.jar Forbidden.Magic-*.jar AppleCore-*.jar BetterBuildersWands-*.jar *hisel*.jar opensecurity-*.jar bettercrashes-*.jar BetterAchievements-*.jar Wawla-*.jar Waila*.jar Tainted-Magic-*.jar TwilightForest-*.jar torohealth-*.jar TiCTooltips-*.jar TConstruct-*.jar  ThaumicTinkerer-*.jar tcinventoryscan-*.jar  thaumicenergistics-*.jar Thaumic-Based-*.jar Thaumic-Exploration-*.jar ThaumcraftMobAspects-*.jar ThaumcraftResearchTweaks-*.jar WarpTheory-*.jar tcnodetracker-*.jar tcneiadditions-*.jar creativecore-*.jar holoinventory-*.jar inventorytweaks-*.jar WAILAPlugins-*.jar roguelike-*.jar RandomThings-*.jar naturescompass-*.jar NEIAddons-*.jar NEIIntegration-*.jar netherportalfix-*.jar NotEnoughItems-*.jar OpenComputers-*.jar OpenGlasses-*.jar *pen*rinter-*.jar overloadedarmorbar-*.jar endercore-*.jar Mantle-*.jar aether-1.7.10-*.jar OpenBlocks-*.jar OpenModsLibs-*.jar controlling-*.jar IronChest*.jar ForgeMultipart-*.jar  MrTJPCore-*.jar ModTweaker2-*.jar CraftTweaker-*.jar RTG-*.jar IronChestMinecarts-*.jar hodgepodge-*.jar lwjgl3ify-*.jar ThaumicHorizons-*.jar forgelin-*.jar gadomancy*.jar &
download_github GTNewHorizons ae2stuff GTNHLib Minecraft-Backpack-Mod INpureCore BugTorch LittleTiles MouseTweaks bdlib AE2FluidCraft-Rework Applied-Energistics-2-Unofficial ChiselTones FindIt ForbiddenMagic AppleCore BetterBuildersWands Chisel OpenSecurity BetterCrashes BetterAchievements WAWLA waila twilightforest ToroHealth TinkersConstruct TiC-Tooltips ThaumicTinkerer  ThaumicEnergistics ThaumicBases ThaumicInventoryScanning Thaumic_Exploration ThaumcraftMobAspects thaumcraft-research-tweaks WarpTheory TCNodeTracker TCNEIAdditions CreativeCore HoloInventory inventory-tweaks WAILAPlugins Roguelike-Dungeons Random-Things NaturesCompass neiaddons NEI-Integration NetherPortalFix NotEnoughItems OpenComputers OCGlasses OpenPrinter OverloadedArmorBar EnderCore Mantle The-Aether-GTNH OpenBlocks OpenModsLib Controlling ironchest ForgeMultipart MrTJPCore Hodgepodge ModTweaker Realistic-Terrain-Generation IronChestMinecarts Forgelin ThaumicHorizons Gadomancy
download_github jss2a98aj Baubles-Expanded
cd ..
packwiz update --all -y
packwiz refresh
