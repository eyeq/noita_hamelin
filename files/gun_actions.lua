table.insert(actions,
        {
            id = "SUMMON_RAT",
            name = "Summon Rat",
            description = "Summon a rat.",
            sprite = "data/ui_gfx/animal_icons/rat.png",
            sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
            type = ACTION_TYPE_PROJECTILE,
            spawn_level = "0,1,2,3,4,5,6", -- BOMB
            spawn_probability = "1,1,1,1,1,1,1", -- BOMB
            price = 220,
            mana = 100,
            max_uses = 20,
            action = function()
                add_projectile("mods/hamelin/items/spawn_rat.xml")
            end,
        }
);