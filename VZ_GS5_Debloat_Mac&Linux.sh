#!/bin/sh
clear
echo "#######################################"
echo
echo "----Welcome to the G900V Debloater: Mac and Linux Version!----"
echo
echo "#######################################"
sleep 1s
echo
echo "This script is for the Verizon Galaxy S5, but will still work for other variants."
sleep 2s
echo
echo "------------------------by akaplo-----------------------------"
echo "                  updated July 2, 2015"
sleep 2.5s
echo
echo "Waiting for device"
adb wait-for-device
sleep 1.5s
# DUE TO BASH SCRIPT STRUCTURE, CALL TO menu() IS LAST LINE OF FILE

function menu()
{
clear
echo "-----Main Menu-----"
echo
echo "-Debloat Options*-"
echo "(1) Slight debloat"
echo "(2) Normal debloat"
echo "(3) Extreme debloat"
echo "(4) Custom debloat *new*"
echo
echo
echo "*Remember to back up your phone! The deletion lists used are experimental,"
echo "and not all deleted apks are easy to track down!  You must also have adb (aka"
echo "the Android Debugger from android platform tools) installed. "
echo
echo
echo "Other:"
echo "(5) Reboot Device"
echo "(6) Exit"
echo
echo "Select an option (1-6), then press [ENTER]:"
read SELECTION
sleep 1s
if [ $SELECTION == '1' ]
    then slight
fi

if [ $SELECTION == '2' ]
    then normal
fi

if [ $SELECTION == '3' ]
    then extreme
fi

if [ $SELECTION == '4' ]
    then custom_instr
fi

if [ $SELECTION == '5' ]
    then reboot
fi

if [ $SELECTION == '6' ]
    then exitfunction
fi

}

function slight()
{
clear
echo "---Slight Debloat---"
echo
sleep 2s
echo "Slight debloat will remove 35 bloated apps."
echo
sleep 1s
echo "--Instructions--"
echo "Users who like to stay mostly inside the Samsung/Verizon/Google ecosystems"
echo "will most likely want to choose this option.  It will remove excess fat while"
echo "keeping most apps intact.  "
sleep 1.5s
echo
read -n 1 -p "Press any key to begin slight debloat..."
echo
echo "Running......"
echo
echo "If prompted by device, grant 'adb shell' root access now."
echo
adb shell su -c mount -o rw,remount /system
adb shell su -c rm -r /system/app/Amazon_Audible.apk
adb shell su -c rm -r /system/app/Amazon_IMDB.apk
adb shell su -c rm -r /system/app/Amazon_MP3.apk
adb shell su -c rm -r /system/app/Amazon_Widget.apk
adb shell su -c rm -r /system/app/Blurb.apk
adb shell su -c rm -r /system/app/canid.apk
adb shell su -c rm -r /system/app/com.gotv.nflgamecenter.us.lite.apk
adb shell su -c rm -r /system/app/DriveLink.apk
adb shell su -c rm -r /system/app/Flipboard.apk
echo "Progress: 25%"
adb shell su -c rm -r /system/app/Kindle.apk
adb shell su -c rm -r /system/app/PlusOne.apk
adb shell su -c rm -r /system/app/SamsungAppsWidget_Phone_Carrier_VZW.apk
adb shell su -c rm -r /system/app/SamsungContentsAgent.apk
adb shell su -c rm -r /system/app/SPenSdk3.apk
echo "Progress: 50%"
adb shell su -c rm -r /system/app/TravelService_K.apk
adb shell su -c rm -r /system/app/VideoEditor_Lite_K.apk
adb shell su -c rm -r /system/app/VZMessages.apk
adb shell su -c rm -r /system/app/VZNavigator.apk
adb shell su -c rm -r /system/app/VzTones.apk
adb shell su -c rm -r /system/priv-app/Amazon_Appstore.apk
adb shell su -c rm -r /system/priv-app/Amazon_Shopping.apk
adb shell su -c rm -r /system/priv-app/GroupPlay_27.apk
adb shell su -c rm -r /system/priv-app/KLMSAgent.apk
adb shell su -c rm -r /system/priv-app/MagicShot_FHD_A7.apk
adb shell su -c rm -r /system/priv-app/MyInfozone.apk
adb shell su -c rm -r /system/priv-app/PhotoStudio_FHD_K.apk
adb shell su -c rm -r /system/priv-app/SamsungBilling.apk
adb shell su -c rm -r /system/priv-app/SamsungLinkPlatform.apk
echo "Progress: 75%"
adb shell su -c rm -r /system/priv-app/SamsungMusic_20.apk
adb shell su -c rm -r /system/priv-app/Samsungservice2_xxhdpi.apk
adb shell su -c rm -r /system/priv-app/sCloudDataRelay.apk
adb shell su -c rm -r /system/priv-app/sCloudQuotaApp.apk
adb shell su -c rm -r /system/priv-app/sCloudSyncSBrowser.apk
adb shell su -c rm -r /system/priv-app/sCloudSyncSNote3.apk
adb shell su -c rm -r /system/priv-app/SStudio_FHD_K.apk
adb shell su -c rm -r /system/priv-app/VMS.apk
adb shell su -c rm -r /system/priv-app/VzCloud.apk
sleep 2s
echo
sleep 3s
adb shell su -c mount -o ro,remount /system
echo "Debloat complete!"
echo "Please reboot your phone to ensure that the changes were made."
sleep 1.5s
reboot
}

function normal()
{
clear
echo "---Normal Debloat---"
echo
sleep 2s
echo "Normal debloat will remove 57 bloatware apps."
echo
sleep 1s
echo "--Instructions--"
echo "Users who want to barely keep their foot in the door of the Samsung/Verizon/Google ecosystems"
echo "will most likely want to choose this option.  It will remove many"
echo "bloatware apps. Remember that a fair amount of what is erased can be easily"
echo "redownloaded as user apps"
sleep 1.5s
echo
read -n 1 -p "Press any key to begin slight debloat..."
echo
echo "Running."
echo
echo "If prompted by device, grant 'adb shell' root access now."
echo
adb shell su -c mount -o rw,remount /system
adb shell su -c rm -r /system/app/AccuweatherPhone2014_K_LMR_fHD.apk
adb shell su -c rm -r /system/app/AllshareFileShare.apk
adb shell su -c rm -r /system/app/AllshareFileShareClient.apk
adb shell su -c rm -r /system/app/Amazon_Audible.apk
adb shell su -c rm -r /system/app/Amazon_IMDB.apk
adb shell su -c rm -r /system/app/Amazon_MP3.apk
adb shell su -c rm -r /system/app/Amazon_Widget.apk
adb shell su -c rm -r /system/app/BeaconManager.apk
adb shell su -c rm -r /system/app/Blurb.apk
adb shell su -c rm -r /system/app/Bridge.apk
adb shell su -c rm -r /system/app/canid.apk
adb shell su -c rm -r /system/app/com.gotv.nflgamecenter.us.lite.apk
echo "Progress: 25%"
adb shell su -c rm -r /system/app/Flipboard.apk
adb shell su -c rm -r /system/app/Headlines.apk
adb shell su -c rm -r /system/app/Kindle.apk
adb shell su -c rm -r /system/app/KnoxAttestationAgent.apk
adb shell su -c rm -r /system/app/KnoxSetupWizardClient.apk
adb shell su -c rm -r /system/app/MirrorLink.apk
adb shell su -c rm -r /system/app/Music2.apk
adb shell su -c rm -r /system/app/MusicLiveShare2.apk
adb shell su -c rm -r /system/app/Newsstand.apk
adb shell su -c rm -r /system/app/PlayGames.apk
adb shell su -c rm -r /system/app/PlusOne.apk
adb shell su -c rm -r /system/app/PopupuiReceiver.apk
adb shell su -c rm -r /system/app/QuickConnect.apk
adb shell su -c rm -r /system/app/SamsungAppsWidget_Phone_Carrier_VZW.apk
echo "Progress: 50%"
adb shell su -c rm -r /system/app/SamsungContentsAgent.apk
adb shell su -c rm -r /system/app/SecKidsModeInstaller.apk
adb shell su -c rm -r /system/app/Slacker.apk
adb shell su -c rm -r /system/app/SNameCard.apk
adb shell su -c rm -r /system/app/SoundDetector.apk
adb shell su -c rm -r /system/app/SPenSdk3.apk
adb shell su -c rm -r /system/app/TravelService_K.apk
adb shell su -c rm -r /system/app/VideoEditor_Lite_K.apk
adb shell su -c rm -r /system/app/VZMessages.apk
adb shell su -c rm -r /system/app/VZNavigator.apk
adb shell su -c rm -r /system/app/VzTones.apk
adb shell su -c rm -r /system/priv-app/Amazon_Appstore.apk
echo "Progress: 75%"
adb shell su -c rm -r /system/priv-app/Amazon_Shopping.apk
adb shell su -c rm -r /system/priv-app/KLMSAgent.apk
adb shell su -c rm -r /system/priv-app/MagicShot_FHD_A7.apk
adb shell su -c rm -r /system/priv-app/MyInfozone.apk
adb shell su -c rm -r /system/priv-app/PageBuddyNotiSvcK.apk
adb shell su -c rm -r /system/priv-app/PhotoStudio_FHD_K.apk
adb shell su -c rm -r /system/priv-app/SamsungLinkPlatform.apk
adb shell su -c rm -r /system/priv-app/SamsungMusic_20.apk
adb shell su -c rm -r /system/priv-app/Samsungservice2_xxhdpi.apk
adb shell su -c rm -r /system/priv-app/sCloudDataRelay.apk
adb shell su -c rm -r /system/priv-app/sCloudDataSync.apk
adb shell su -c rm -r /system/priv-app/sCloudQuotaApp.apk
adb shell su -c rm -r /system/priv-app/sCloudSyncSBrowser.apk
adb shell su -c rm -r /system/priv-app/ShareVideo.apk
adb shell su -c rm -r /system/priv-app/SNS.apk
adb shell su -c rm -r /system/priv-app/SPPPushClient_Prod.apk
adb shell su -c rm -r /system/priv-app/SStudio_FHD_K.apk
adb shell su -c rm -r /system/priv-app/Tag.apk
adb shell su -c rm -r /system/priv-app/VMS.apk
adb shell su -c rm -r /system/priv-app/VzCloud.apk
echo
adb shell su -c mount -o ro,remount /system

echo "Debloat complete!"
echo "Please reboot your phone to ensure that the changes were made."
sleep 1.5s
reboot
}

function extreme()
{
clear
echo "---Extreme Debloat---"
echo
sleep 2s
echo "Extreme debloat will remove 79 bloatware apps."
echo
sleep 1s
echo "--Instructions--"
echo "Users who want the bare minimum of extra apps on their phone will want"
echo "this option.  It will remove almost all of the extra apps that aren't"
echo "needed for your phone to function. A fair amount of what"
echo "is erased can be easily redownloaded as user apps.  REMEMBER TO BACK UP."
echo
sleep 1.5s
read -n 1 -p "Press any key to begin slight debloat..."
echo
echo "Running........"
echo
echo "If prompted by device, grant 'adb shell' root access now."
echo
adb shell su -c mount -o rw,remount /system
adb shell su -c rm -r /system/app/AccuweatherPhone2014_K_LMR_fHD.apk
adb shell su -c rm -r /system/app/AllShareCastPlayer.apk
adb shell su -c rm -r /system/app/AllshareFileShare.apk
adb shell su -c rm -r /system/app/AllshareFileShareClient.apk
adb shell su -c rm -r /system/app/AllshareFileShareServer.apk
adb shell su -c rm -r /system/app/AllshareMediaServer.apk
adb shell su -c rm -r /system/app/AllshareMediaShare.apk
adb shell su -c rm -r /system/app/Amazon_Audible.apk
adb shell su -c rm -r /system/app/Amazon_IMDB.apk
adb shell su -c rm -r /system/app/Amazon_MP3.apk
adb shell su -c rm -r /system/app/Amazon_Widget.apk
adb shell su -c rm -r /system/app/AntHalService.apk
adb shell su -c rm -r /system/app/ANTPlusPlugins.apk
adb shell su -c rm -r /system/app/ANTRadioService.apk
adb shell su -c rm -r /system/app/BeaconManager.apk
adb shell su -c rm -r /system/app/Blurb.apk
adb shell su -c rm -r /system/app/Books.apk
adb shell su -c rm -r /system/app/Bridge.apk
adb shell su -c rm -r /system/app/canid.apk
adb shell su -c rm -r /system/app/com.gotv.nflgamecenter.us.lite.apk
adb shell su -c rm -r /system/app/Drive.apk
adb shell su -c rm -r /system/app/DriveLink.apk
adb shell su -c rm -r /system/app/Flipboard.apk
adb shell su -c rm -r /system/app/GeoLookout.apk
adb shell su -c rm -r /system/app/Headlines.apk
adb shell su -c rm -r /system/app/Kindle.apk
adb shell su -c rm -r /system/app/KnoxAttestationAgent.apk
adb shell su -c rm -r /system/app/KnoxSetupWizardClient.apk
adb shell su -c rm -r /system/app/MirrorLink.apk
adb shell su -c rm -r /system/app/MobilePrintSvc_Samsung.apk
adb shell su -c rm -r /system/app/Music2.apk
adb shell su -c rm -r /system/app/MusicLiveShare2.apk
adb shell su -c rm -r /system/app/Newsstand.apk
adb shell su -c rm -r /system/app/PlayGames.apk
adb shell su -c rm -r /system/app/PlusOne.apk
adb shell su -c rm -r /system/app/PolarisOffice5.apk
adb shell su -c rm -r /system/app/PopupuiReceiver.apk
adb shell su -c rm -r /system/app/QtiBackupAgent.apk
adb shell su -c rm -r /system/app/QuickConnect.apk
adb shell su -c rm -r /system/app/SamsungAppsWidget_Phone_Carrier_VZW.apk
adb shell su -c rm -r /system/app/SamsungContentsAgent.apk
adb shell su -c rm -r /system/app/SapaMonitor.apk
adb shell su -c rm -r /system/app/SecKidsModeInstaller.apk
adb shell su -c rm -r /system/app/Slacker.apk
adb shell su -c rm -r /system/app/SNameCard.apk
adb shell su -c rm -r /system/app/SoundDetector.apk
adb shell su -c rm -r /system/app/SPenSdk3.apk
adb shell su -c rm -r /system/app/talkback.apk
adb shell su -c rm -r /system/app/TravelService_K.apk
adb shell su -c rm -r /system/app/VideoEditor_Lite_K.apk
adb shell su -c rm -r /system/app/Videos.apk
adb shell su -c rm -r /system/app/VisualVoiceMail.apk
adb shell su -c rm -r /system/app/VZMessages.apk
adb shell su -c rm -r /system/app/VZNavigator.apk
adb shell su -c rm -r /system/app/VzTones.apk
adb shell su -c rm -r /system/priv-app/Amazon_Appstore.apk
adb shell su -c rm -r /system/priv-app/Amazon_Shopping.apk
adb shell su -c rm -r /system/priv-app/GroupPlay_27.apk
adb shell su -c rm -r /system/priv-app/HealthService.apk
adb shell su -c rm -r /system/priv-app/KLMSAgent.apk
adb shell su -c rm -r /system/priv-app/MagicShot_FHD_A7.apk
adb shell su -c rm -r /system/priv-app/MyInfozone.apk
adb shell su -c rm -r /system/priv-app/MyVerizon.apk
adb shell su -c rm -r /system/priv-app/PageBuddyNotiSvcK.apk
adb shell su -c rm -r /system/priv-app/PhotoStudio_FHD_K.apk
adb shell su -c rm -r /system/priv-app/SamsungBilling.apk
adb shell su -c rm -r /system/priv-app/SamsungLinkPlatform.apk
adb shell su -c rm -r /system/priv-app/SamsungMusic_20.apk
adb shell su -c rm -r /system/priv-app/Samsungservice2_xxhdpi.apk
adb shell su -c rm -r /system/priv-app/SamsungUpdates_K.apk
adb shell su -c rm -r /system/priv-app/sCloudDataRelay.apk
adb shell su -c rm -r /system/priv-app/sCloudQuotaApp.apk
adb shell su -c rm -r /system/priv-app/sCloudSyncSBrowser.apk
adb shell su -c rm -r /system/priv-app/sCloudSyncSNote3.apk
adb shell su -c rm -r /system/priv-app/ShareVideo.apk
adb shell su -c rm -r /system/priv-app/SHealth3_5.apk
adb shell su -c rm -r /system/priv-app/SNS.apk
adb shell su -c rm -r /system/priv-app/SPPPushClient_Prod.apk
adb shell su -c rm -r /system/priv-app/SStudio_FHD_K.apk
adb shell su -c rm -r /system/priv-app/Tag.apk
adb shell su -c rm -r /system/priv-app/VMS.apk
adb shell su -c rm -r /system/priv-app/VzCloud.apk
echo
adb shell su -c mount -o ro,remount /system
echo "Debloat complete!"
echo "Please reboot your phone to ensure that the changes were made."
sleep 1.5s
reboot
}

function custom_instr()
{
clear
echo "-----Custom Debloat-----"
echo
sleep 1s
echo "Custom Debloat will remove ANY APP you want it to."
echo
sleep 2s
echo "***************ADVISORY****************"
echo "Exercise EXTREME CAUTION when removing system apps with Custom Debloat!"
echo
echo "Removing the wrong app could cause damage reversible only by redownloading"
echo    "your rom and starting fresh with a clean phone."
echo
echo "I am not respsonsible for any data loss or damage that befalls you as a"
echo "  result of your use of this script."
echo
echo "By continuing, you affirm that you understand the risks and take them"
echo    "upon yourself."
echo "**************************************"
echo
sleep 6s
read -n 1 -p "Press any key to continue."
sleep .5s
clear
echo "Now for the fun part!"
echo "Instructions:"
sleep 1s
echo
echo "   When prompted, enter the path to the app that you want uninstalled."
sleep 1s
echo
echo "   This app can be a system app or a user app,"
echo "      but you MUST include the full path, including the leading '/' and"
echo "      ending '.apk' file extension"
sleep 1s
echo
echo "   Example (1): to remove just the Amazon AppStore, you'd enter:"
echo "      /system/priv-app/Amazon_Appstore.apk"
sleep 1s
echo
echo "   Example (2): to remove just Verizon Visual VoiceMail, you'd enter:"
echo "      /system/app/VisualVoiceMail.apk"
custom
}
function custom()
{

echo
sleep 1.5s
read -p "Enter the full path to the app you want to remove and press [ENTER]: " TO_REMOVE
name=$(echo ${TO_REMOVE} | head -c1 )
if [[ "$name" != "/" ]]
then
    echo
    echo
    echo "You didn't enter the full file path.  Your file path MUST start with the"
    echo "'/' character and end with the '.apk' file extension"
    echo
    echo "Please try again. Check that the path begins with '/' and ends with '.apk'"
    custom
fi

    echo "You entered $TO_REMOVE"
    read -p "Is the correct? ('yes' or 'no') " CONFIRM
    if [[ "$CONFIRM" == "yes" ]]
        then
            echo "Preparing to remove $TO_REMOVE from your device."
            echo
            sleep 1s
            adb shell su -c mount -o rw,remount /system
            sleep 1s
            echo
            read -n 1 -p "Press any key to begin slight debloat..."
            echo
            echo "Running........"
            echo
            echo "If prompted by device, grant 'adb shell' root access now."
            echo
            adb shell su -c rm -r $TO_REMOVE
            adb shell su -c mount -o ro,remount /system
            echo "Custom debloat complete!"
            read -n 1 -p "Remove more apps using Custom Debloat? ('y' or 'n'): " CONTINUE
            if [[ "$CONTINUE" == "y" ]]
                then
                    custom
            else
                echo "Please reboot your phone to ensure that the changes were made."
                sleep 1.5s
                reboot
            fi
    elif [[ "$CONFIRM" == "no" ]]
    then
        echo "Ok. Try again."
        custom
    else
        echo "Not sure what you said there. Please try again!"
        custom
    fi
}

function reboot()
{
echo
read -n 1 -p "Reboot your device? (y or n): " REBOOT
echo
if [ $REBOOT = 'y' ]
then
    sleep 1s
    echo
    echo "Rebooting now"
    adb reboot
    sleep 5s
    echo "Waiting for device before returning to options menu..."
    adb wait-for-device
    echo "Device rebooted."
    sleep .5s
    return_to_menu
elif [ $REBOOT = 'n' ]
then
    echo "You selected 'n.' Returning to options menu instead of rebooting."
    return_to_menu
else
    echo "You entered something other than 'y' or 'n'. Enter one or the other."
    sleep 2s
    reboot
fi
}

function exitfunction()
{
echo
sleep .5s
echo "        --          Script author: akaplo         --          "
echo
sleep 1.5s
echo "The source for this script can be found on"
sleep 1.5s
echo "github.com/akaplo/Verizon_GalaxyS5_DebloatScript"
echo
sleep 1.5s
echo "The script will now exit. Best of luck!"
echo
adb kill-server
exit
}

function return_to_menu()
{
    sleep .5s
    echo
    echo "Returning to options menu in"
    sleep .5s
    echo "3"
    sleep 1s
    echo "2"
    sleep 1s
    echo "1"
    sleep 1s
    menu
}

menu
