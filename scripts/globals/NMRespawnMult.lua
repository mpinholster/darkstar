-----------------------------------
--
-- This is a global Timer Multiple for ALL NM's in all zones
-- Relies on function SetRespawnTime(id, minTime, maxTime)
-- SetRespawnTime(NM Number, minSeconds * MinRespawnMult, maxSeconds * MaxRespawnMult);
-- An integer who's value will be multiplied by the default value. 1 = default.
-- require("scripts/globals/NMRespawnMult");
--
-----------------------------------

-- Normal NM Spawn and Respawn Multiple. 2 = double time. 1 = default. 0.5 = half the time. etc.
MinRespawnMult = 0.5
MaxRespawnMult = 0.5

-- HNMs Spawn and Respawn Multiple. 2 = double time. 1 = default. 0.5 = half the time. etc.
-- HMNs include Absolute Virtue, Adamantoise, Behemoth, Cerberus, Dark Ixion,
-- Fafnir, Guloool Ja Ja, Gurfulur the Menacing, Hydra, Jormungand, Khimaira,
-- King Vinegarroon, Medusa, Ouryu, Pandemonium Warden, Sandworm, Serket, Tiamat, Vrtra,
-- and Zirnitra.
LandMinRespawnMult = 0.01
LandMinRespawnMult = 0.1

-- HQ HNM's Spawn and Respawn Multiple. 2 = double time. 1 = default. 0.5 = half the time. etc.
-- HQ HNM's include Aspidochelone, King Behemoth, and Nidhogg
KingWindowReduceMult = 3


-- 86400 seconds = 24 hours (0.01 = 14 min 26 seconds)
-- 259200 seconds = 3 days (7 hours 12 min)
-- Vrtra respawn time (24 hours - 3 days)

--
-- Batallia Downs
--   Weeping Willow's (21-24 hours)
--   Ahtu's (2-4 hours)
--   Tottering_Toby's (1-6 hours)
-- Beaucedine Glacier
--   Gargantua's (1-7 hours)
--   Kirata's (1-8 hours)
--   Nue (1-2 hours)
-- Behemoths Dominion
--   Behemoth (21 hours - 24 hours)
--   King Behemoth PH (21 hours - 24 hours), if Behemoth kills is 7, OR if random result / roll is WIN (20% chance)