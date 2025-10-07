return function(music_nums_ref, music_vals_list_ref, pack_display_names_ref, next_music_num_id_ref)-- "return function" is a way to make quick anonymous functions. Anything in brackets, like normal functions, is an argument to be used for the operation. In addition, arguments inside a function are self-contained, hence the only output of the function will be the result.

local mpack_name = "template" -- Replace "template" the name you chose for the folder and file here. Make sure it's unique to all other music packs!

local mpack_display = "[soundtrack name] - [artist]" -- Input the sountrack and artist's name here.

-- This set below defines the tracks. Steamodded automatically checks the "assets/sounds" folder, so there's no need to specify the exact location.
SMODS.Sound({ 
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music1",
    path = mpack_name .. "/music1.ogg", -- .ogg files are recommended. Aside from that, files can actually have any name and .wav format is supported as well, but it's recommended to use the standards provided, otherwise each "path" variable will need to be changed for each track with a different name/extension.
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name) and 10 or false
        -- This is the track that it's going to be used for the main menu and Small/Big Blinds.
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music2",
    path = mpack_name .. "/music2.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false -- This is the track that it's going to be used for Booster and Arcana Packs.
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music3",
    path = mpack_name .. "/music3.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false -- This is the track that it's going to be used for Celestial Packs.
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music4",
    path = mpack_name .. "/music4.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.shop and not G.shop.REMOVED) and 11 or false -- This is the track that it's going to be used for the shop.
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music5",
    path = mpack_name .. "/music5.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.GAME.blind and G.GAME.blind.boss) and 11 or false -- This is the track that it's going to be used for the Boss Blinds.
    end,
})

 music_nums_ref[mpack_name] = next_music_num_id_ref[1]
 table.insert(music_vals_list_ref, mpack_name)
 pack_display_names_ref[mpack_name] = mpack_display -- "pack_display_names_ref" gives itself the value of the "mpack_name" variable as a name, then returns "mpack_display" as a value.
 next_music_num_id_ref[1] = next_music_num_id_ref[1] + 1 -- Checks the existing numerical value in "next_music_num_id_ref" and increases it by 1.
end
