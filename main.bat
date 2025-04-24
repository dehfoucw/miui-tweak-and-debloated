@echo off
title Miui Debloater & Tweaker by dehfoucw
color 0A

echo ===========================================
echo       DEBLOATED AND TWEAKED FOR MIUI
echo           by dehfoucw @ GitHub
echo ===========================================
echo.

REM Check if adb is available
where adb >nul 2>&1
if errorlevel 1 (
    echo ERROR: adb.exe not found in PATH. Please make sure ADB is installed and added to system PATH.
    pause
    exit /b
)

REM Check for device connection
:check_device
adb devices
for /f "tokens=1,2" %%a in ('adb devices') do (
    if "%%b"=="unauthorized" (
        echo Device is unauthorized. Please check your phone for the authorization prompt.
        timeout /t 5 >nul
        goto check_device
    )
    if "%%b"=="device" (
        echo Device is connected and authorized.
    )
)

echo.
echo Removing bloatware...
adb devices
Here is the cleaned-up list of `adb shell pm uninstall` commands with duplicates removed:

```bash
adb shell pm uninstall --user 0 com.android.bips
adb shell pm uninstall --user 0 com.android.bookmarkprovider
adb shell pm uninstall --user 0 com.android.cellbroadcastreceiver
adb shell pm uninstall --user 0 com.android.cellbroadcastreceiver.overlay.common
adb shell pm uninstall --user 0 com.android.dreams.basic
adb shell pm uninstall --user 0 com.android.printspooler
adb shell pm uninstall --user 0 com.android.statementservice
adb shell pm uninstall --user 0 com.android.stk
adb shell pm uninstall --user 0 com.android.wallpaper.livepicker
adb shell pm uninstall --user 0 com.android.wallpaperbackup
adb shell pm uninstall --user 0 com.android.wallpapercropper
adb shell pm uninstall --user 0 com.android.emergency
adb shell pm uninstall --user 0 com.google.android.gms.location.history
adb shell pm uninstall --user 0 com.samsung.android.mdx.kit
adb shell pm uninstall --user 0 com.samsung.android.mdx.quickboard
adb shell pm uninstall --user 0 com.samsung.android.samsungpositioning
adb shell pm uninstall --user 0 com.sec.android.emergencymode.service
adb shell pm uninstall --user 0 com.sec.android.provider.emergencymode
adb shell pm uninstall --user 0 com.sec.unifiedwfc
adb shell pm uninstall --user 0 android.autoinstalls.config.samsung
adb shell pm uninstall --user 0 com.android.cts.ctsshim
adb shell pm uninstall --user 0 com.android.cts.priv.ctsshim
adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
adb shell pm uninstall --user 0 com.android.htmlviewer
adb shell pm uninstall --user 0 com.android.managedprovisioning
adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks
adb shell pm uninstall --user 0 com.android.traceur
adb shell pm uninstall --user 0 com.aura.oobe.samsung
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.google.android.apps.carrier.carrierwifi
adb shell pm uninstall --user 0 com.google.android.apps.messaging
adb shell pm uninstall --user 0 com.google.android.apps.restore
adb shell pm uninstall --user 0 com.google.android.apps.setupwizard.searchselector
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.apps.turbo
adb shell pm uninstall --user 0 com.google.android.as
adb shell pm uninstall --user 0 com.google.android.as.oss
adb shell pm uninstall --user 0 com.google.android.cellbroadcastreceiver
adb shell pm uninstall --user 0 com.google.android.feedback
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall --user 0 com.google.android.healthconnect.controller
adb shell pm uninstall --user 0 com.google.android.nearby.halfsheet
adb shell pm uninstall --user 0 com.google.android.partnersetup
adb shell pm uninstall --user 0 com.google.android.printservice.recommendation
adb shell pm uninstall --user 0 com.google.android.projection.gearhead
adb shell pm uninstall --user 0 com.google.android.setupwizard
adb shell pm uninstall --user 0 com.google.android.tts
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.google.ar.core
adb shell pm uninstall --user 0 com.google.audio.hearing.visualization.accessibility.scribe
adb shell pm uninstall --user 0 com.hiya.star
adb shell pm uninstall --user 0 com.knox.vpn.proxyhandler
adb shell pm uninstall --user 0 com.microsoft.appmanager
adb shell pm uninstall --user 0 com.microsoft.skydrive
adb shell pm uninstall --user 0 com.mygalaxy
adb shell pm uninstall --user 0 com.netflix.mediaclient
adb shell pm uninstall --user 0 com.netflix.partner.activation
adb shell pm uninstall --user 0 com.opera.max.oem
adb shell pm uninstall --user 0 com.osp.app.signin
adb shell pm uninstall --user 0 com.samsung.android.accessibility.talkback
adb shell pm uninstall --user 0 com.samsung.android.alive.service
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.fileshare
adb shell pm uninstall --user 0   android.bips   # Default Printing Service   
adb shell pm uninstall --user 0   com.android.bookmarkprovider   # Bookmark Provider 
adb shell pm uninstall --user 0   com.android.cellbroadcastreceiver   
adb shell pm uninstall --user 0   com.android.cellbroadcastreceiver.overlay.common 
adb shell pm uninstall --user 0   com.android.dreams.basic   # Screensaver app  
adb shell pm uninstall --user 0   com.android.printspooler   # Printing service   
adb shell pm uninstall --user 0   com.android.statementservice   # Checks APK files  
adb shell pm uninstall --user 0   com.android.stk   # SIM Tool-kit    
adb shell pm uninstall --user 0   com.android.wallpaper.livepicker   # Live wallpaper  
adb shell pm uninstall --user 0   com.android.wallpaperbackup   # Wallpaper backup feature 
adb shell pm uninstall --user 0   com.android.wallpapercropper   # Wallpaper cropping feature 
adb shell pm uninstall --user 0        
adb shell pm uninstall --user 0   com.google.android.apps.docs   # Google Docs  
adb shell pm uninstall --user 0   com.google.android.apps.wellbeing   # Digital Wellbeing 
adb shell pm uninstall --user 0   com.google.android.feedback   # Feedback app  
adb shell pm uninstall --user 0   com.google.android.gms.location.history   # Gmail location service
adb shell pm uninstall --user 0   com.google.android.googlequicksearchbox   # Google Quick Search
adb shell pm uninstall --user 0   com.google.android.inputmethod.latin   # Gboard  
adb shell pm uninstall --user 0   com.google.android.marvin.talkback   # Talkback feature 
adb shell pm uninstall --user 0   com.google.android.printservice.recommendation   # Mobile Printing
adb shell pm uninstall --user 0   com.google.android.syncadapters.calendar   # Calendar Sync 
adb shell pm uninstall --user 0   com.google.android.tts   # Text-to-speech   
adb shell pm uninstall --user 0   com.google.android.videos   # Google Play Movies & TV 
adb shell pm uninstall --user 0   com.mi.android.globalpersonalassistant   
adb shell pm uninstall --user 0   com.mi.globalTrendNews     
adb shell pm uninstall --user 0   com.mi.health   # Mi Health    
adb shell pm uninstall --user 0   com.mi.webkit.core   # Mi Webkit    
adb shell pm uninstall --user 0   com.mipay.wallet.id   # Mi Wallet    
adb shell pm uninstall --user 0   com.mipay.wallet.in   # Mi Wallet (India)   
adb shell pm uninstall --user 0   com.miui.analytics   # MIUI Analytics (spyware)  
adb shell pm uninstall --user 0   com.miui.android.fashiongallery   # Wallpaper Carousel 
adb shell pm uninstall --user 0   com.miui.aod   # MIUI Always-on Display   
adb shell pm uninstall --user 0   com.miui.bugreport   # Bug reporting app   
adb shell pm uninstall --user 0   com.miui.calculator   # Mi Calculator   
adb shell pm uninstall --user 0   com.miui.cleanmaster   # System Cleaner   
adb shell pm uninstall --user 0   com.miui.compass   # MIUI Compass   
adb shell pm uninstall --user 0   com.miui.fm   # MIUI FM     
adb shell pm uninstall --user 0   com.miui.fmservice  # MIUI FM Module   
adb shell pm uninstall --user 0   com.miui.hybrid   # Quick Apps (data mining app)  
adb shell pm uninstall --user 0   com.miui.hybrid.accessory   # Quick Apps (data mining app) 
adb shell pm uninstall --user 0   com.miui.micloudsync   # Cloud Sync   
adb shell pm uninstall --user 0   com.miui.mishare.connectivity   # Mi Share   
adb shell pm uninstall --user 0   com.miui.msa.global   # MSA or MIUI Ad Services  
adb shell pm uninstall --user 0   com.miui.notes   # Notes     
adb shell pm uninstall --user 0   com.miui.phrase   # Frequent phrases   
adb shell pm uninstall --user 0   com.miui.screenrecorder   # Screen Recorder  
adb shell pm uninstall --user 0   com.miui.smsextra   # Text Message features   
adb shell pm uninstall --user 0   com.miui.system   # MIUI System Launcher   
adb shell pm uninstall --user 0   com.miui.systemui.carriers.overlay   # Carrier name chaging service
adb shell pm uninstall --user 0   com.miui.touchassistant   # Quick Ball feature  
adb shell pm uninstall --user 0   com.miui.translation.kingsoft    
adb shell pm uninstall --user 0   com.miui.userguide   # User Guide app   
adb shell pm uninstall --user 0   com.miui.videoplayer   # MIUI Video player   
adb shell pm uninstall --user 0   com.miui.weather2   # Weather app    
adb shell pm uninstall --user 0   com.miui.yellowpage   # Yellow Page app   
adb shell pm uninstall --user 0   com.sohu.inputmethod.sogou.xiaomi   
adb shell pm uninstall --user 0   com.xiaomi.calendar   # Mi Calendar   
adb shell pm uninstall --user 0   com.xiaomi.glgm   # Games    
adb shell pm uninstall --user 0   com.xiaomi.joyose   # Junk and safe to remove  
adb shell pm uninstall --user 0   com.xiaomi.micloud.sdk   # Cloud App   
adb shell pm uninstall --user 0   com.xiaomi.midrop   # Mi Drop    
adb shell pm uninstall --user 0   com.xiaomi.mipicks   # GetApps Xiaomi app store  
adb shell pm uninstall --user 0   com.xiaomi.miplay_client    
adb shell pm uninstall --user 0   com.xiaomi.mircs   # MIUI to MIUI Message   
adb shell pm uninstall --user 0   com.xiaomi.payment   # Mi Pay    
adb shell pm uninstall --user 0   com.xiaomi.scanner   # Scanner app   
adb shell pm uninstall --user 0   
adb shell pm uninstall --user 0   cn.wps.xiaomi.abroad.lite    
adb shell pm uninstall --user 0   com.autonavi.minimap     
adb shell pm uninstall --user 0   com.caf.fmradio      
adb shell pm uninstall --user 0   com.duokan.phone.remotecontroller   
adb shell pm uninstall --user 0   org.simalliance.openmobileapi.service   
adb shell pm uninstall --user 0   com.duokan.phone.remotecontroller.peel.plugin  
adb shell pm uninstall --user 0   in.amazon.mShop.android.shopping   # Amazon India  
adb shell pm uninstall --user 0   com.bsp.catchlog     
adb shell pm uninstall --user 0   com.netflix.partner.activation   # Netflix   
adb shell pm uninstall --user 0   com.netflix.mediaclient   # Netflix    
adb shell pm uninstall --user 0   com.opera.app.news   # Opera    
adb shell pm uninstall --user 0   com.opera.branding   # Opera    
adb shell pm uninstall --user 0   com.opera.branding.news   # Opera News   
adb shell pm uninstall --user 0   com.opera.mini.native   # Opera Mini   
adb shell pm uninstall --user 0   com.opera.preinstall   # Opera    
adb shell pm uninstall --user 0   com.tencent.soter.soterserver   # Chinese Payment service 



echo.
echo Applying battery and performance tweaks...

adb shell settings put global adaptive_battery_management_enabled 0
adb shell settings put global cached_apps_freezer enabled
adb shell settings put global protect_battery 1
adb shell settings put secure send_action_app_error 0
adb shell settings put global assisted_gps_enabled 1
adb shell settings put global wifi_scan_always_enabled 1
adb shell settings put global animator_duration_scale 0.35
adb shell settings put global transition_animation_scale 0.35
adb shell settings put global window_animation_scale 0.35
adb shell settings put global ram_expand_size 0
adb shell settings put global zram_enabled 0
adb shell settings put global online_manual_url 0
adb shell settings put global bug_report 0
adb shell settings put global debug_app 0
adb shell settings put secure game_auto_temperature_control 0


echo. 
echo reboot your MIUI device!

echo. 
echo All done. Enjoy your clean and optimized MIUI device!
pause
