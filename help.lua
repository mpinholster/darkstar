--------------------------------------------------------------
-- func: @shop
-- auth: curtis
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player)
        player:PrintToPlayer( "@shop for (1) HQ Crystals, (2) Clusters, (3) Food, or (4) Medicine");
        player:PrintToPlayer( "Please note, there is a conviencince fee attached to all listings, as you can buy these cheaper elsewhere.");
        player:PrintToPlayer( "@tele to Teleport to cities or battlefields");
end;


    --{ 0x14, 0xBC, 50 }, -- Aht Urhgan Whitegate
    --{ 0x14, 0x65, 139 }, -- Horlais Peak
    --{ 0x14, 0x1A, 144 }, -- Waughroon Shrine
    --{ 0x14, 0x19, 146 }, -- Balga's Dais
    --{ 0x14, 0x77, 201 }, -- Cloister of Gales
    --{ 0x14, 0x75, 202 }, -- Cloister of Storms
    --{ 0x14, 0x7A, 203 }, -- Cloister of Frost
    --{ 0x14, 0x78, 207 }, -- Cloister of Flames
    --{ 0x14, 0x76, 209 }, -- Cloister of Tremors
    --{ 0x14, 0x79, 211 }, -- Cloister of Tides
    --{ 0x14, 0x52, 232 }, -- Port San d'Oria
    --{ 0x14, 0x45, 240 }, -- Port Windurst
    --{ 0x14, 0x06, 246 }, -- Port Jeuno
    --{ 0x14, 0x09, 252 }, -- Norg
    --{ 0x14, 0x31, 247 }, -- Rabao
    --{ 0x14, 0x5F, 248 }, -- Selbina
    --{ 0x14, 0x1E, 249 }, -- Mhaura
    --{ 0x14, 0x29, 250 }, -- Kazham