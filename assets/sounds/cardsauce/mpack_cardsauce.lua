return function(music_nums_ref, music_vals_list_ref, pack_display_names_ref, next_music_num_id_ref)

local mpack_name = "cardsauce"

local mpack_display = "Cardsauce OST - Bassclefff"

SMODS.Sound({ 
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music1",
    path = mpack_name .. "/csau_music1.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name) and 10 or false
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music2",
    path = mpack_name .. "/csau_music2.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music3",
    path = mpack_name .. "/csau_music3.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music4",
    path = mpack_name .. "/csau_music4.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.shop and not G.shop.REMOVED) and 11 or false
    end,
})

SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = mpack_name .. "_music5",
    path = mpack_name .. "/csau_music5.ogg",
    select_music_track = function()
        return (G.SETTINGS.music_selection == mpack_name and G.GAME.blind and G.GAME.blind.boss) and 11 or false
    end,
})

 music_nums_ref[mpack_name] = next_music_num_id_ref[1]
 table.insert(music_vals_list_ref, mpack_name)
 pack_display_names_ref[mpack_name] = mpack_display
 next_music_num_id_ref[1] = next_music_num_id_ref[1] + 1
end
