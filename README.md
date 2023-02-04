# KDE/Plasma Command Output Micmutecheckscript
Little script I made that shows if my mic is muted or not for the KDE/Plasma command output widget.

To add an action for when you click the command output widget to toggle mute for the mic, put this in a file and name it `togglemicmute.sh`
```
#/usr/bin/env bash

#toggle mic muted/unmuted state
qdbus org.kde.kglobalaccel /component/kmix invokeShortcut "mic_mute"
```

Then add it in the command output configuration for the on click action by calling the script via this line
```
/bin/bash /locationofscript/togglemicmute.sh
```

# NO SUPPORT WILL BE GIVEN. SCRIPT IS PROVIDED AS IS.
