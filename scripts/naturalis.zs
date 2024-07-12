mods.thaumcraft.Research.orphanResearch("RESEARCH_LOG");
#mods.thaumcraft.Research.removeResearch("RESEARCH_LOG");
mods.thaumcraft.Research.moveResearch("TRANSCRIBINGTABLE","BASICS",8,3);
mods.thaumcraft.Research.addPage("TRANSCRIBINGTABLE","mn.research_page.RESEARCH_LOG.1");
mods.thaumcraft.Research.addArcanePage("TRANSCRIBINGTABLE",<magianaturalis:item.researchLog>);
mods.thaumcraft.Research.addPrereq("TRANSCRIBINGTABLE","DECONSTRUCTOR",false);
mods.thaumcraft.Arcane.removeRecipe(<magianaturalis:item.researchLog>);
mods.thaumcraft.Arcane.addShaped("TRANSCRIBINGTABLE",<magianaturalis:item.researchLog>,"aqua 20,terra 20,perditio 20,ordo 20,aer 20,ignis 20",
[[<Thaumcraft:ItemShard:0>,<minecraft:leather>,<Thaumcraft:ItemShard:1>],
[<Thaumcraft:ItemShard:2>,<minecraft:book>,<Thaumcraft:ItemShard:3>],
[<Thaumcraft:ItemShard:4>,<minecraft:leather>,<Thaumcraft:ItemShard:5>]]);
mods.thaumcraft.Research.moveResearch("ARCANE_CHEST","ARTIFICE",-7,-5);
mods.thaumcraft.Research.moveResearch("KEY_SPECIAL","ARTIFICE",-4,-5);
mods.thaumcraft.Research.addPrereq("KEY_SPECIAL","WARDEDARCANA");
mods.thaumcraft.Research.addPrereq("ARCANE_CHEST","WARDEDARCANA");
mods.thaumcraft.Research.moveResearch("ENDER_POUCH","THAUMATURGY",6,0);
mods.thaumcraft.Research.addPrereq("ENDER_POUCH","FOCUSPOUCH",false);
mods.thaumcraft.Research.setConcealed("ENDER_POUCH", true);
mods.thaumcraft.Research.orphanResearch("SICKLE_THAUM");
mods.thaumcraft.Research.addPage("THAUMIUM","mn.research_page.SICKLE_THAUM.1");
mods.thaumcraft.Research.addCraftingPage("THAUMIUM", <magianaturalis:item.sickleThaumium>);
mods.thaumcraft.Arcane.removeRecipe(<magianaturalis:item.researchLog>);
mods.thaumcraft.Research.moveResearch("SICKLE_ABUNDANCE","ARTIFICE",-7,8);
mods.thaumcraft.Research.addPrereq("SICKLE_ABUNDANCE","INFUSION",false);
mods.thaumcraft.Research.addPrereq("SICKLE_ABUNDANCE","THAUMIUM",false);
mods.thaumcraft.Research.setConcealed("SICKLE_ABUNDANCE", true);
mods.thaumcraft.Research.moveResearch("STONE_QUICKSILVER","ARTIFICE",7,-2);
mods.thaumcraft.Research.addPrereq("STONE_QUICKSILVER","ARCANESTONE");
mods.thaumcraft.Research.moveResearch("STONE_PHENO","THAUMATURGY",7,-4);
mods.thaumcraft.Research.addPrereq("STONE_PHENO","FOCUSTRADE");
mods.thaumcraft.Research.moveResearch("CARPENTRY","DYES",-2,3);
mods.thaumcraft.Research.moveResearch("FOCUS_BUILD","THAUMATURGY",5,-6);
mods.thaumcraft.Research.addPrereq("FOCUS_BUILD","FOCUSTRADE");
mods.thaumcraft.Research.moveResearch("GEO_OCCULTISM","THAUMATURGY",8,-7);
mods.thaumcraft.Research.addPrereq("GEO_OCCULTISM","FOCUS_BUILD");
mods.thaumcraft.Research.addPrereq("GEO_OCCULTISM","STONE_PHENO");
mods.thaumcraft.Research.moveResearch("EVIL_TRUNK","GOLEMANCY",0,6);
mods.thaumcraft.Research.addPrereq("EVIL_TRUNK","TRAVELTRUNK");
mods.thaumcraft.Research.moveResearch("SPECTACLES","ARTIFICE",4,-1);
mods.thaumcraft.Research.addPrereq("SPECTACLES","GOGGLES");
mods.thaumcraft.Research.moveResearch("GOGGLES_DARK","ARTIFICE",3,2);
mods.thaumcraft.Research.addPrereq("GOGGLES_DARK","GOGGLES");
mods.thaumcraft.Research.moveResearch("JAR_PRISON","ThaumicHorizons",10,-3);
mods.thaumcraft.Research.addPrereq("JAR_PRISON","infusionVat");
mods.thaumcraft.Research.setConcealed("JAR_PRISON", true);
mods.thaumcraft.Research.setConcealed("TRANSCRIBINGTABLE", true);
mods.thaumcraft.Research.setConcealed("GEO_OCCULTISM", true);
mods.thaumcraft.Research.setConcealed("STONE_PHENO", true);
mods.thaumcraft.Research.setConcealed("STONE_QUICKSILVER", true);
mods.thaumcraft.Research.setConcealed("GOGGLES_DARK", true);
mods.thaumcraft.Research.setConcealed("SPECTACLES", true);
mods.thaumcraft.Research.setConcealed("KEY_SPECIAL", true);
mods.thaumcraft.Research.setConcealed("ARCANE_CHEST", true);
mods.thaumcraft.Research.setConcealed("EVIL_TRUNK", true);
mods.thaumcraft.Research.orphanResearch("MN_GOGGLES");
mods.thaumcraft.Research.orphanResearch("MN_WARDEDARCANA");
mods.thaumcraft.Research.orphanResearch("MN_FOCUSTRADE");
mods.thaumcraft.Research.orphanResearch("MN_FOCUSPOUCH");
mods.thaumcraft.Research.orphanResearch("MN_TRAVELTRUNK");
mods.thaumcraft.Research.orphanResearch("MN_CRUCIBLE");
mods.thaumcraft.Research.removeTab("magianaturalis");
