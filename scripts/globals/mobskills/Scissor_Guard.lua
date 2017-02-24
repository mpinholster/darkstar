---------------------------------------------------
-- Scissor Guard
-- Enhances defense 100%, 60 seconds
-- Now set at 75 % 45 seconds
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_DEFENSE_BOOST;
    skill:setMsg(MobBuffMove(mob, typeEffect, 75, 0, 45));
    return typeEffect;
end;
