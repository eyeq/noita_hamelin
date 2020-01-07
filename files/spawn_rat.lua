dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform(entity_id)

SetRandomSeed(x - 437, y + 235)

local entity_to_spawn = "rat"
local entity_count = 1

local option = "data/entities/animals/" .. entity_to_spawn .. ".xml"

for _ = 1, entity_count do
    local eid = EntityLoad(option, x, y)

    if (entity_list_name ~= "worms") then
        GetGameEffectLoadTo(eid, "CHARM", true)

        local damagemodels = EntityGetComponent(eid, "DamageModelComponent")
        if (damagemodels ~= nil) then
            for i, damagemodel in ipairs(damagemodels) do
                local max_hp = tonumber(ComponentGetValue(damagemodel, "max_hp"))

                max_hp = max_hp * 3

                ComponentSetValue(damagemodel, "max_hp", max_hp)
                ComponentSetValue(damagemodel, "hp", max_hp)
            end
        end
    end
end