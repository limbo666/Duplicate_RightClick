# Duplicate Right-click option

**Add a Duplicate right click option to your context menu on your windows computer to quickly copy and paste the selected files.**<p>
![Untitled-2](https://github.com/user-attachments/assets/b403ceba-aca7-4ff9-8334-ac0843b0f7fd)<p>
The script should be extracted to a folder to your system and then a registry entry should be added in order to appear on each file right click.
The zip contains four files:
1. The actual powershell script which is used to Duplicate the files (`Duplicate_script.ps1`).
2. The icon which should be placed on the same folder with the ps file (`douplicate.ico`)
3. A registry merge file that helps add the necessary entries to the registry (`Duplicate.reg`)
4. A setup information file (inf) to automate the installation proccess (`install.inf`) <p>
<p><p>
There are three ways to setup this to your computer:<p>


A. **Auto configuration**
1. Download the latest release package https://github.com/limbo666/Duplicate_RightClick/releases.
2. Extract the files to a temporary folder and open your file explorer to this folder
3. Right-click the `install.inf` file and select `Install` from the context menu<p>
Test by right-clicking a file and see if the "Duplicate" menu item is there and functioning.<p>
	
B. **Semi auto configuration (in case you want to use `C:\Scripts\Duplicate_Menu\` for your script )**
1. Download the release package https://github.com/limbo666/Duplicate_RightClick/releases.
2. Extract the files to `C:\Scripts\Duplicate_Menu\`
3. Double click the `Duplicate.reg` and accept the megre dialog when prompted<p>
INFO: In semi auto configuration the script and icon should be extracted to a specific folder which is `C:\Scripts\Duplicate_Menu\` and then run the reg file which points to this path <p>
Test by right-clicking a file and see if the "Duplicate" menu item is there and functioning.

C. **Manual configuration (in case you want to use your own path)**
1. Download the release package https://github.com/limbo666/Duplicate_RightClick/releases.
2. Extract the files to a folder of your choice.
3. Open the Registry Editor (Win + R, type regedit, press Enter)
	- [x] Navigate to `HKEY_CLASSES_ROOT\*\shell`.
	- [x] Right-click on the shell key, select `New` > `Key`, and name it `Duplicate`.
	- [x] Right-click the newly created Duplicate key, select `New` > `Key`, and name it `command`.
	- [x] Select the command key, double-click the `Default` entry on the right, and enter the following line by replacing the path with your script location:<p> `powershell.exe -NoProfile -ExecutionPolicy Bypass -File "C:\Toolz\Duplicate_Menu\Duplicate_script.ps1" "%1"`
	- [x] Right-click on `Duplicate` shell key, select `New` > `String Value`, and name it `Icon`
	- [x] Double-click on the `Icon` entry, and set its value to the path of your icon file. For example: `C:\Toolz\Duplicate_Menu\Duplicate.ico` <p>
 	Test by right-clicking a file and see if the "Duplicate" menu item is there and functioning.
 <p>


**Youtube video guide for automatic installation:**<p>
[![Video on youtube](https://img.youtube.com/vi/VXsZ_ZfY0N0/0.jpg)](https://www.youtube.com/watch?v=VXsZ_ZfY0N0)<p>
_click the image above to watch the video_

<p>
Enjoy<p>


