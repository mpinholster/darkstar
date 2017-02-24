-----------------------------------------
-- Spell: Shell III
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local power = 22; -- magic damage reduce by X % (wiki 18.8)
    local duration = 1800;

    duration = calculateDurationForLvl(duration, 57, target:getMainLvl());

    local typeEffect = EFFECT_SHELL;
    if (target:addStatusEffect(typeEffect, power, 0, duration)) then
        spell:setMsg(230);
    else
        spell:setMsg(75); -- no effect
    end
    return typeEffect;
end;
