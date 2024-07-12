mods.thaumcraft.Research.moveResearch("PUREORE", "ALCHEMY", -6, 5);
mods.thaumcraft.Research.addPrereq("PUREORE", "PUREGOLD", false);
mods.thaumcraft.Research.addPrereq("PUREORE", "PURECOPPER", false);
mods.thaumcraft.Research.addPrereq("PUREORE", "PURETIN", false);
mods.thaumcraft.Research.setConcealed("PUREORE", true);
mods.thaumcraft.Research.removeTab("AOBD");

mods.thaumcraft.Research.moveResearch("TRANSGEM", "ALCHEMY", 4, 5);
mods.thaumcraft.Research.addPrereq("TRANSGEM", "TRANSGOLD", false);
mods.thaumcraft.Research.addPrereq("TRANSGEM", "TRANSCOPPER", false);
mods.thaumcraft.Research.addPrereq("TRANSGEM", "TRANSTIN", false);
mods.thaumcraft.Research.setConcealed("TRANSGEM", true);
mods.thaumcraft.Research.moveResearch("NEWDISC", "ALCHEMY", -3, -2);
mods.thaumcraft.Research.clearPrereqs("NEWDISC");
mods.thaumcraft.Research.addPrereq("NEWDISC", "ALCHEMICALDUPLICATION", false);
mods.thaumcraft.Research.setConcealed("NEWDISC", true);
mods.thaumcraft.Research.moveResearch("ESSAMALG", "ALCHEMY", 12, 0);
mods.thaumcraft.Research.addPrereq("ESSAMALG", "CENTRIFUGE", false);
mods.thaumcraft.Research.setConcealed("ESSAMALG", true);
mods.thaumcraft.Research.orphanResearch("TA.TRANSGOLD");
mods.thaumcraft.Research.orphanResearch("TA.ALCHEMICALDUPLICATION");
mods.thaumcraft.Research.orphanResearch("TA.CENTRIFUGE");
mods.thaumcraft.Research.removeTab("XALCHEMY");

mods.thaumcraft.Research.moveResearch("FANCYLANTERN", "DYES", 0, 3);
mods.thaumcraft.Research.addPrereq("FANCYLANTERN", "NITOR", false);
mods.thaumcraft.Research.moveResearch("DECOMATRIX", "DYES", 0, 5);
mods.thaumcraft.Research.clearPrereqs("DECOMATRIX");
mods.thaumcraft.Research.setConcealed("DECOMATRIX", true);
mods.thaumcraft.Research.addPrereq("DECOMATRIX", "INFUSION", false);
mods.thaumcraft.Research.removeTab("FANCY");

mods.thaumcraft.Research.moveResearch("warptheory.cleanserminor", "ALCHEMY", -4, -8);
mods.thaumcraft.Research.moveResearch("warptheory.cleanser", "ALCHEMY", -6, -8);
mods.thaumcraft.Research.moveResearch("warptheory.amulet", "ALCHEMY", -7, -9);
mods.thaumcraft.Research.moveResearch("warptheory.something", "ALCHEMY", -1, -6);
mods.thaumcraft.Research.moveResearch("warptheory.paper", "ALCHEMY", -5, -6);
mods.thaumcraft.Research.addPrereq("warptheory.something", "SANESOAP", false);
mods.thaumcraft.Research.setConcealed("warptheory.something", true);
mods.thaumcraft.Research.addPrereq("warptheory.paper", "SANESOAP", false);
mods.thaumcraft.Research.orphanResearch("FAKESOAP");
mods.thaumcraft.Research.orphanResearch("FAKEELDMAJOR");
mods.thaumcraft.Research.removeTab("WT_Category");

mods.thaumcraft.Research.moveResearch("FOCUSINFUSION", "THAUMATURGY", -4, -4);
mods.thaumcraft.Research.addPrereq("FOCUSINFUSION", "FOCUSWARDING");
mods.thaumcraft.Research.setConcealed("FOCUSINFUSION", true);
mods.thaumcraft.Research.moveResearch("ESSENTIABLOCKS", "DYES", 0, 1);
mods.thaumcraft.Research.removeTab("THAUMICINFUSION");
