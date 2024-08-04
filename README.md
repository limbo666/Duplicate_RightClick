# Dublicate Rightclick

**Add a dublicate right click option to your context menu on your windows computer to quickly copy and paste the selected files.**<p>
![Untitled-2](https://github.com/user-attachments/assets/b403ceba-aca7-4ff9-8334-ac0843b0f7fd)
The script should be extracted to a folder to your system and then a registry entry should be added in order to appear on each file right click.
The zip contains three files:
1. The actual powershell script which is used to dublicate the files (`dublicate_script.ps1`).
2. The icon which should be placed on the same folder with the ps file (`doublicate.ico`)
3. A registry merge file that helps add the necessary entries to the registry (`dublicate.reg` <p>
In order the registry file to work the script and icon should be extracted to a specific fodler which is `C:\Scripts\Dublicate_Menu\`
<p><p>

**Semi auto configuration (in case you want to use `C:\Scripts\Dublicate_Menu\` for your script )**
1. Download the release package.
2. Extract the files to `C:\Scripts\Dublicate_Menu\`
3. Double click the `dublicate.reg`<p>
Test by right-clicking a file and see if the "Dublicate" menu item is there and functioning.

**Manual configuration (in case you want to use your own path)**
1. Download the release package.
2. Extract the files to a folder of your choice.
3. Open the Registry Editor (Win + R, type regedit, press Enter)
	- [x] Navigate to `HKEY_CLASSES_ROOT\*\shell`.
	- [x] Right-click on the shell key, select `New` > `Key`, and name it `Duplicate`.
	- [x] Right-click the newly created Duplicate key, select `New` > `Key`, and name it `command`.
	- [x] Select the command key, double-click the `Default` entry on the right, and enter the following line by replacing the path with your script location:<p> `powershell.exe -NoProfile -ExecutionPolicy Bypass -File "C:\Toolz\Dublicate_Menu\dublicate_script.ps1" "%1"`<p>
Test by right-clicking a file and see if the "Dublicate" menu item is there and functioning.



