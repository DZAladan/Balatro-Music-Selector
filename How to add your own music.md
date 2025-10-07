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
