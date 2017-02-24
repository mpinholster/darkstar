-----------------------------------------
-- Spell: Threnody - MOD_WATERRES
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/classes-adjust");
-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    return handleThrenody(caster, target, spell, 50, 60, MOD_WATERRES);
end;
