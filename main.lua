if not next(SMODS.find_mod('Cardsauce')) then -- Given that most of this mod's code is taken from Cardsauce, this condition will prevent this mod from loading if Cardsauce is installed to prevent conflicts. It's mostly just a temporary fix and, to fully solve the issue, would be ideal to find a way to inject extra tracks in Cardsauce or override its own music selector in some way.
 SMODS.Atlas({ key = "modicon", path = "musicSelector_icon.png", px = 32, py = 32 })

 local music_nums = { balatro = 1, cardsauce = 2, bonnesoiree = 3, monkeybiz = 4, bside = 5, raistake = 6, goingblind = 7} -- To add an extra soundtrack, add an entry here with a name and a number.
 setting_tabRef = G.UIDEF.settings_tab
 function G.UIDEF.settings_tab(tab)
 local setting_tab = setting_tabRef(tab)
  if tab == 'Audio' then -- This makes the game render the selector in the Audio tab.
   local musicSelector = {
   n=G.UIT.R, -- Steamodded function to render a Row node (arranges its child nodes horizontally).
   config = { -- Defines the appearance of the selector, similar to how CSS works.
   align = 'cm', -- "align = 'cm'" aligns the node both on the vertical and horizontal axis.
   r = 0 -- "r = 0" sets the roundness of the corners to 0. See https://github.com/Steamodded/smods/wiki/UI-Guide to learn more.
   },  
   nodes= {
    create_option_cycle({
    w = 8, -- Specifies the width of the selector.
    scale = 1, -- Defines the scale of the entire selector (text and graphics).
    label = localize('b_muselector'),
    options = localize('ml_muselector_opt'),
    opt_callback = 'change_music',
    current_option = ((music_nums)[G.SETTINGS.music_selection] or 1) })
   }}
   setting_tab.nodes[#setting_tab.nodes + 1] = musicSelector
  end
  return setting_tab
 end

-- This set below defines the tracks. Steamodded automatically checks the "assets/sounds" folder, so there's no need to specify the exact location.
 SMODS.Sound({ 
     vol = 0.6,
     pitch = 1,
     key = "csau_music1",
     path = "csau_music1.ogg", -- .ogg or .wav files are recommended.
     select_music_track = function()
         return (G.SETTINGS.music_selection == "cardsauce") and 10 or false -- Specify, in place of "cardsauce", the name assigned to the soundtrack.
         -- This is the track that it's going to be used for the main menu and Small/Big Blinds.
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "csau_music2",
     path = "csau_music2.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "cardsauce" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false -- This is the track that it's going to be used for Booster and Arcana Packs.
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "csau_music3",
     path = "csau_music3.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "cardsauce" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false -- This is the track that it's going to be used for Celestial Packs.
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "csau_music4",
     path = "csau_music4.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "cardsauce" and G.shop and not G.shop.REMOVED) and 11 or false -- This is the track that it's going to be used for the shop.
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "csau_music5",
     path = "csau_music5.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "cardsauce" and G.GAME.blind and G.GAME.blind.boss) and 11 or false -- This is the track that it's going to be used for the Boss Blinds.
     end,
 })

 SMODS.Sound({ 
     vol = 0.6,
     pitch = 1,
     key = "boso_music1",
     path = "boso_music1.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bonnesoiree") and 10 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "boso_music2",
     path = "boso_music2.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bonnesoiree" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
     end,
 })
 
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "boso_music3",
     path = "boso_music3.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bonnesoiree" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "boso_music4",
     path = "boso_music4.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bonnesoiree" and G.shop and not G.shop.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "boso_music5",
     path = "boso_music5.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bonnesoiree" and G.GAME.blind and G.GAME.blind.boss) and 11 or false
     end,
 })
 
 SMODS.Sound({ 
     vol = 0.6,
     pitch = 1,
     key = "mobu_music1",
     path = "mobu_music1.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "monkeybiz") and 10 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "mobu_music2",
     path = "mobu_music2.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "monkeybiz" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
     end,
 })
 
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "mobu_music3",
     path = "mobu_music3.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "monkeybiz" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "mobu_music4",
     path = "mobu_music4.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "monkeybiz" and G.shop and not G.shop.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "mobu_music5",
     path = "mobu_music5.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "monkeybiz" and G.GAME.blind and G.GAME.blind.boss) and 11 or false
     end,
 })
 
 SMODS.Sound({ 
     vol = 0.6,
     pitch = 1,
     key = "music_main_loop",
     path = "music_main_loop.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bside") and 10 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "music_arcana_loop",
     path = "music_arcana_loop.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bside" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
     end,
 })
 
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "music_celestial_loop",
     path = "music_celestial_loop.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bside" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "music_shop_loop",
     path = "music_shop_loop.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bside" and G.shop and not G.shop.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "music_boss_loop",
     path = "music_boss_loop.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "bside" and G.GAME.blind and G.GAME.blind.boss) and 11 or false
     end,
 })
 SMODS.Sound({ 
     vol = 0.6,
     pitch = 1,
     key = "raise_music1",
     path = "raise_music1.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "raistake") and 10 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "raise_music2",
     path = "raise_music2.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "raistake" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
     end,
 })
 
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "raise_music3",
     path = "raise_music3.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "raistake" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "raise_music4",
     path = "raise_music4.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "raistake" and G.shop and not G.shop.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "raise_music5",
     path = "raise_music5.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "raistake" and G.GAME.blind and G.GAME.blind.boss) and 11 or false
     end,
 })
 
 SMODS.Sound({ 
     vol = 0.6,
     pitch = 1,
     key = "gobl_music1",
     path = "gobl_music1.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "goingblind") and 10 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "gobl_music2",
     path = "gobl_music2.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "goingblind" and G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and 11 or false
     end,
 })
 
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "gobl_music3",
     path = "gobl_music3.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "goingblind" and G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "gobl_music4",
     path = "gobl_music4.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "goingblind" and G.shop and not G.shop.REMOVED) and 11 or false
     end,
 })
 SMODS.Sound({
     vol = 0.6,
     pitch = 1,
     key = "gobl_music5",
     path = "gobl_music5.ogg",
     select_music_track = function()
         return (G.SETTINGS.music_selection == "goingblind" and G.GAME.blind and G.GAME.blind.boss) and 11 or false
     end,
 })

 -- Sets the current music in balatro's settings to one of the given args.
 G.FUNCS.change_music = function(args)
  G.ARGS.music_vals = G.ARGS.music_vals or { "balatro", "cardsauce", "bonnesoiree", "monkeybiz", "bside", "raistake", "goingblind" } -- Include the added soundtrack name here as well, otherwise the music won't play.
  G.SETTINGS.QUEUED_CHANGE.music_change = G.ARGS.music_vals[args.to_key]
  G.SETTINGS.music_selection = G.ARGS.music_vals[args.to_key]
 end
end
