cd %ANDROID_HOME%\build-tools\%ANDROID_BUILDTOOL_VERSION%

:: Package resource files
aapt package -v -f -M %ANDROID_PROJECT%\%PROJECT_NAME%\AndroidManifest.xml -S %ANDROID_PROJECT%\%PROJECT_NAME%\res -I "%ANDROID_HOME%\platforms\%ANDROID_API_VERSION%\android.jar" -F %ANDROID_PROJECT%\%PROJECT_NAME%\bin\resource.apk

:: package classes.dex and resource files
cd %ANDROID_HOME%\tools
apkbuilder %ANDROID_PROJECT%\%PROJECT_NAME%\bin\AndroidAPP.unsigned.apk -v  -u -z  %ANDROID_PROJECT%\%PROJECT_NAME%\bin\resource.apk -f  %ANDROID_PROJECT%\%PROJECT_NAME%\bin\classes.dex -rf %ANDROID_PROJECT%\%PROJECT_NAME%\src -nf %ANDROID_PROJECT%\%PROJECT_NAME%\lib -rj %ANDROID_PROJECT%\%PROJECT_NAME%\lib