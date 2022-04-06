**ADB practise**

**Preconditions:** 
1. Open Windows Command Line and go to the ADB.exe path
2. Plug your mobile device in the laptop through USB and switch on USB-debugging option


**Show my attached devices**   
`adb devices`

**Install Reminder app**  
`adb install -t D:\apk\android_reminder-main\app\build\outputs\apk\debug\app-debug.apk`

**Show the app's package in Android**  
`adb shell pm list packages | findstr reminderapp`

**Show the full list of installed apps**  
`adb shell pm list packages`

**Take a screnshot on the phone and export it to the laptop with a new title**    
`adb shell screencap /sdcard/pictures/screenshots/Reminder_screen.png && adb pull /sdcard/pictures/screenshots/Reminder_screen.png D:\apk\android_reminder-main\app\build\outputs\apk\debug\Reminder.png`

**Display ReminderApp logs**  
`adb logcat | findstr com.qrolic.reminderapp`

**Create a log-file with Reminder's logs**  
`adb logcat | findstr com.qrolic.reminder > reminder.log`

**Delete the Reminder**  
`adb uninstall com.qrolic.reminderapp`
