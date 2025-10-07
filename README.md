# Balatro Music Selector
Standalone Cardsauce music selector for Balatro

# DISCLAIMER
I'm NOT a programmer, I helped myself with templates and I tried my best to understand the code because I'm trying to learn Lua in my own way. A lot of the code in this mod comes from [Cardsauce](https://github.com/BarrierTrio/Cardsauce/). Please, support [the original devs](https://github.com/BarrierTrio).

# Why?
I simply wanted to be able to choose different music and add my own, but I didn't want to install Cardsauce in its entirety just for that. So, I identified the chunk of code responsible for that and made it standalone, then I somehow managed to add a way to make it modular (but the procoess is still a little laborious. See the provided instructions) so that everyone can add their own music.<br>
This mod was also heavily inspired by [qvattro0](https://github.com/qvattr0)'s [Balatro Music Replacer](https://github.com/qvattr0/balatro-music-replacer) which, however, is not a mod but an external software to literally replace the music files.

# Notes
⚠️ If you have the Cardsauce mod installed, **this mod won't load**. This is by design: since this mod is essentially a piece of the other, I preferred to avoid any issues and conflicts because I currently lack the skills to solve them.<br>
⚠️ If any of the original authors of the soundtracks featured in this mod come forward and ask me to remove their work, **I will comply without question**.<br>
⚠️ For the same reason above, if BarrierTrio asks me to take this mod down, **I will also comply**.<br>
⚠️ The code I came up with is likely spaghetti. I'm sure there are better ways to do all of this but, as I said, I currently lack the skills.

# Credits
❇️ [qvattro0](https://github.com/qvattr0) for the inspiration<br>
❇️ [BarrierTrio](https://github.com/BarrierTrio) for the original code

## Featured soundtracks
❇️ [Cardsauce OST](https://www.youtube.com/watch?v=Swe_WOWdaqQ) by Basscleff ([Cardsauce mod](https://github.com/BarrierTrio/Cardsauce/))<br>
 <sup>↳ [YouTube](https://www.youtube.com/@Bassclefff) | [Bandcamp](https://bassclefff.bandcamp.com) | [Newgrounds](https://bassclefff.newgrounds.com) | [Soundcloud](https://soundcloud.com/bassclefff) | [Twitter](https://x.com/bassclef_3)</sup><br>
❇️ [Bonne Soirée](https://www.youtube.com/watch?v=KiIXRr_GGCw) by Vongola<br>
<sup>↳ [YouTube](https://www.youtube.com/@vongol) | [Soundcloud](https://soundcloud.com/vongolavonvongola) | [Ko-Fi](https://ko-fi.com/vonkofi)</sup><br>
❇️ [Monkey Business](https://www.youtube.com/watch?v=V3ps8wvrmxw) by Bombaflex<br>
 <sup>↳ [YouTube](https://www.youtube.com/@bombaflex2383) | [Spotify](https://open.spotify.com/intl-it/artist/1rL5Ni1ym91shGIswrLhdu) | [Instagram](https://imginn.com/elbombaflex) | [GitHub](https://github.com/Bombaflex) | [Portfolio](https://jbombaron.wixsite.com/bombaflex-portfolio)</sup><br>
❇️ [Balatro: B-Side](https://www.youtube.com/watch?v=_u8tHrRMNG8) by Afterlight ([standalone mod](https://github.com/afterlightgames/b-side))<br>
<sup>↳ [YouTube](https://www.youtube.com/@afterlight_games) | [Bandcamp](https://afterlightgames.bandcamp.com/album/b-side) | [GitHub](https://github.com/afterlightgames)</sup><br>
❇️ [Raise The Stakes](https://www.youtube.com/watch?v=p6TGmmQ_Fj4) by JohnathanSucks ([standalone mod](https://github.com/JohnathanSucks/Raise-The-Stakes))<br>
<sup>↳ [YouTube](https://www.youtube.com/@johnathansucks7886) | [Bandcamp](https://johnathansucks.bandcamp.com) | [GitHub](https://github.com/JohnathanSucks)</sup><br>
❇️ [Going In Blind](https://www.youtube.com/watch?v=oRoLuU3vA8E) by Recycled Scraps ([standalone mod](https://github.com/Parsa-ALONE9GHOST/Going-In-Blind))<br>
<sup>↳ [YouTube](https://www.youtube.com/@RecycledScraps)</sup>

# How to add your own music
1. Choose a name for your music pack (it must be all lowercase);
2. Create inside "assets/sounds" a folder with the name you chose for the pack;
   - You can also rename the "template" folder, but it's recommended to keep it for future uses.
3. Place inside that folder the music files (in .ogg format) of your choice, being mindful of this naming convention:
   - music1.ogg = main menu, Small and Big Blinds
   - music2.ogg = Arcana and Booster Packs
   - music3.ogg = Celestial Packs
   - music4.ogg = Shop
   - music5.ogg = Boss Blinds
4. Copy "mpack_template.lua" from "assets/template" inside your folder;
5. Rename "mpack_template.lua" by replacing "template" with your folder's name;
6. Now open that file and:
   - Replace the string in "mpack_name" with the folder's name (don't delete the quote marks);
   - Replace "\[soundtrack title]" and "\[artist]" with the approriate info (keep the quote marks here as well);
   - Save and close the file.
7. Go back to the mod's root folder ("Music Selector") and open "main.lua";
8. Add your folder's name to "mpack_files", making sure to use quote marks and a comma ("example",), then save and close.

# What I hope to do
🔧 Make an injector for the Cardsauce mod in order to feature extra tracks even with Cardsauce installed.<br>
<sup>🔧 Otherwise, being able to at least override its music selector with this one.</sup>
