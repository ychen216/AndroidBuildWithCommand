AndroidBuildWithCommand

How to build android package(APK) without IDE/BuildTool from command for Windows

Tool
1. JDK 1.8
2. Android SDK
3. Command Prompt
4. Windows
5. Text Editor


How to use
按照你的project和环境配置，编辑BuildALLSTEP.cmd中设置后运行


Tips:
如果sdk版本高于r21，则apkbuilder.bat则被废弃，可以通过以下方式构造apkbuilder.bat：
1. copy 本目录下的apkbuilder.bat
2. 在%ANDROID_HOME%\tools\lib 中找到像sdklib.jar的jar包。如，在我的目录下是sdklib-26.0.0-dev.jar
3. 将apkbuilder.bat中的jarfile设置成sdklib-26.0.0-dev.jar
4. 将apkbuilder.bat放置在%ANDROID_HOME%\tools下
