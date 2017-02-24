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

function onTrigger(player,page)
    if (page == 0 or page == nil) then
        player:PrintToPlayer( "Please use - @shop 1 for HQ Crystals");
        player:PrintToPlayer( "Please use - @shop 2 for Clusters");
        player:PrintToPlayer( "Please use - @shop 3 for Food");
        player:PrintToPlayer( "Please use - @shop 4 for Medicine");
        player:PrintToPlayer( "Please use - @shop 5 for Tools");
        player:PrintToPlayer( "Please use - @shop 6 for Crafting Stuff");
        player:PrintToPlayer( "Please note, there is a conviencince fee attached to all listings, as you can buy these cheaper elsewhere.");
    elseif (page == 1) then
        local stock_1 =
        {
            4238,   5000,       -- HQ Fire Crystal
            4239,   5000,       -- HQ Ice Crystal
            4240,   5000,       -- HQ Wind Crystal
            4241,   5000,       -- HQ Earth Crystal
            4242,   5000,       -- HQ Lightning Crystal
            4243,   5000,       -- HQ Water Crystal
            4244,   5000,       -- HQ Light Crystal
            4245,   5000        -- HQ Dark Crystal
        };
        showShop(player, STATIC, stock_1);

    elseif ( page == 2) then -- Clusters
        local stock_2 =
        {
            0x1008,15000,  --Fire Cluster
            0x1009,15000,  --Ice Cluster
            0x100A,15000,  --Wind Cluster
            0x100B,15000,  --Earth Cluster
            0x100C,15000,  --Lightning Cluster
            0x100D,15000,  --Water Cluster
            0x100E,15000,  --Light Cluster
            0x100F,15000,  --Dark Cluster
        };
        showShop(player, STATIC, stock_2);

    elseif ( page == 3) then -- Food
        local stock_3 =
        {
            4271,10000,      -- Rice Dumpling
            4381,5000,       -- Meat Mithkabob
            4398,5000,       -- Fish Mithkabob
            4457,5000,       -- Eel Kabob
            5166,5000,       -- Coeurl Sub Sandwich
            4355,5000,       -- Salmon Sub Sandwich
            4270,5000,       -- Sweet Rice Cake
            5944,2000,       -- Frontier Soda
            5932,6000,       -- Kitron Juice
            4424,3000,       -- Melon Juice
            4422,1000,       -- Orange Juice
        };
        showShop(player, STATIC, stock_3);

    elseif ( page == 4) then -- Medicine
        local stock_4 =
        {
            5770,10000,     --Super Reraise (reraise III)
            4213,25000,     --Icarus Wing
            4149,10000,     --Panacea (all but curse, doom, poison, disease, blindness, silence, paralysis)
            4153,10000,     --Antacid (food)
            4155,10000,     --Remedy (paralysis, silence, blindness, poison, and disease)
            5306,10000,     --Hallowed Water = Holy Water+1 (curse)
            4164,5000,      --Prism Powder (invis)
            4165,5000,      --Silent Oil (silent)
            5418,5000,      --Tincture (removes disease and plague)
            5411,10000,     --Dawn Mulsum (restores petHP 25%-45%)
        };
        showShop(player, STATIC, stock_4);

    elseif ( page == 5) then -- Tools
        local stock_5 =
        {
            1179,250,    --shuhei (blink)
            2973,500,    --Chonofuda (aisha, yurin, yubaku, hojo, kurayami, dokumori)
            2971,500,    --Inoshishinofuda (katon, hyoton, huton, doton, raiton, suiton)
            2972,500,    --Shikanofuda (utsusemi, tonko, momoni, myoshu, migawari)
        --    2644,250,    --Ryuno (gekka, level 93, increases tp gain)
        --    8804,250,    --Furusumi (yain, level 91 enmity)
            2974,250,    --Trump Card (all elemental)
        };
        showShop(player, STATIC, stock_5);

    elseif ( page == 6) then -- Crafting
        local stock_6 =
        {
            929,1000,    --Black Ink
        };
        showShop(player, STATIC, stock_6);

    else
        player:PrintToPlayer( string.format( "Page %i not found.", page ) );
    end
end;