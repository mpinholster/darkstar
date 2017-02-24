---------------------------------------------------------------------------------------------------
-- func: tele zone
-- auth: curtis
-- desc: Teleports a player to the given zone.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

---------------------------------------------------------------------------------------------------
-- desc: List of zones with their auto-translated group and message id.
-- note: The format is as follows: groupId, messageId, zoneId
---------------------------------------------------------------------------------------------------

local zone_list =
{
    { 0x14, 0xBC, 50 }, -- Aht Urhgan Whitegate (works)
    { 0x14, 0x65, 139 }, -- Horlais Peak (works)
    { 0x14, 0x1A, 144 }, -- Waughroon Shrine (works)
    { 0x14, 0x19, 146 }, -- Balga's Dais (works)
    { 0x14, 0x77, 201 }, -- Cloister of Gales (works)
    { 0x14, 0x75, 202 }, -- Cloister of Storms (works)
    { 0x14, 0x7A, 203 }, -- Cloister of Frost (works)
    { 0x14, 0x78, 207 }, -- Cloister of Flames (works)
    { 0x14, 0x76, 209 }, -- Cloister of Tremors (works)
    { 0x14, 0x79, 211 }, -- Cloister of Tides (works)
    { 0x14, 0x52, 232 }, -- Port San d'Oria (works)
    { 0x14, 0x3C, 236 }, -- Port Bastok (works)
    { 0x14, 0x45, 240 }, -- Port Windurst (works)
    { 0x14, 0x06, 246 }, -- Port Jeuno (works)
    { 0x14, 0x31, 247 }, -- Rabao (works)
    { 0x14, 0x5F, 248 }, -- Selbina (works)
    { 0x14, 0x1E, 249 }, -- Mhaura (works)
    { 0x14, 0x29, 250 }, -- Kazham (works)
    { 0x14, 0x09, 252 }, -- Norg (does not work)
};

---------------------------------------------------------------------------------------------------
-- func: onTrigger
-- desc: Called when this command is invoked.
---------------------------------------------------------------------------------------------------
function onTrigger(player, zoneId)
    local word  = "";
    local i     = 0;
    local zone  = zoneId;

    -- Ensure a zone was given..
    if (zoneId == nil) then
        player:PrintToPlayer("You must enter a zone name, use auto-translate.");
        player:PrintToPlayer("The following cities: Port San d'Oria, Port Windurst, Port Bastok, Port Jeuno, Aht Urhgan Whitegate, Selbina, Mhaura, Kazham, and Rabao.");
        player:PrintToPlayer("The following Elemental Battlefields: Cloister of Gales, Storms, Frost, Flames, Tremors, and Tides.");
        player:PrintToPlayer("The following BCNM Battlefields: Horlais Peak, Waughroon Shrine, and Balga's Dais.");
        return;
    end

    -- Was the zone auto-translated..
    if (string.sub(zoneId, 1, 2) == '\253\02' and string.byte(zoneId, 5) ~= nil and string.byte(zoneId, 6) == 0xFD) then
        -- Pull the group and message id from the translated string..
        local groupId = string.byte(zoneId, 4);
        local messageId = string.byte(zoneId, 5);

        -- Attempt to lookup this zone..
        for k, v in pairs(zone_list) do
            if (v[1] == groupId and v[2] == messageId) then
                player:setPos(0, 0, 0, 0, v[3]);
                return;
            end
        end

        -- Zone was not found, allow the user to know..
        player:PrintToPlayer('Unknown zone, could not teleport.');
        return;
    end

    player:setPos(0, 0, 0, 0, zoneId);
end