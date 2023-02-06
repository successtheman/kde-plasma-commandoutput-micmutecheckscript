# KDE/Plasma Command Output Mic Mute Status Script
- Little script I made that shows if my mic is muted or not for the KDE/Plasma command output widget. 

## Requires fontawesome package installed for the mic icons to show next to the text.
- For Ubuntu the package is `fonts-font-awesome` but it may vary depending on your Linux distribution (if it's not that you will have to search around).
---

## When unmuted it shows the unmuted icon to the left of the word "Unmuted" in green text. 
![image](https://user-images.githubusercontent.com/12705139/216751920-b1bd20eb-7399-4877-a75a-543d25f01ac0.png)

## When muted it shows the muted icon to the right of the word "Muted" in red text.
![image](https://user-images.githubusercontent.com/12705139/216751973-04778bf7-0a96-4be8-a44d-505972b777c0.png)

---
# Extras
To add an action for when you left-click the command output widget to toggle mute for the mic, put this in a file and name it `togglemicmute.sh`
```
#/usr/bin/env bash

#toggle mic muted/unmuted state
qdbus org.kde.kglobalaccel /component/kmix invokeShortcut "mic_mute"
```

Then add it in the command output configuration for the on click action by calling the script via this line
```
/bin/bash /locationofscript/togglemicmute.sh
```
---

# Credits
- [Credit for Mute status check logic is from this askUbuntu comment posted by "pragman".](https://askubuntu.com/a/1291627)
- [Credit for getting colors to work with `printf` (which also allowed fontawesome icons to display as an added bonus) is from this StackOverflow comment posted by "Vlad".](https://stackoverflow.com/a/5412825)

---

## NO SUPPORT WILL BE GIVEN. SCRIPT IS PROVIDED AS IS.


