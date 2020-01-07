dofile_once("data/scripts/lib/utilities.lua")
dofile_once('data/scripts/gun/procedural/gun_action_utils.lua')

function get_random_from(target)
    if (type(target) ~= "table") then
        return target
    end

    if (#target == 0) then
        return nil
    end
    return target[Random(1, #target)]
end

local entity_id = GetUpdatedEntityID()

local x, y = EntityGetTransform(entity_id)
SetRandomSeed(x, y)

local list = { "OCARINA_A", "OCARINA_B", "OCARINA_C", "OCARINA_D", "OCARINA_E", "OCARINA_F", "OCARINA_GSHARP", "OCARINA_A2" }

for _ = 1, 6 do
    AddGunAction(entity_id, get_random_from(list))
end

AddGunActionPermanent(entity_id, "SUMMON_RAT")
