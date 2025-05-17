#!/usr/bin/bash
adb shell am start -a android.intent.action.VIEW -d "https://www.youtube.com/watch?v=dQw4w9WgXcQ" && sleep 3 && adb shell input tap 900 900
