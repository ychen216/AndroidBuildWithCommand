
:: JAVA_HOME must be set on Environment Variable and added to path
:: ANDROID_HOME must be set too...

:: Create KeyStore for release version
:: keytool from JDK
cd %JAVA_HOME%\bin
:: Create keystore and save in \gen direktory
keytool -genkeypair -validity 10000 -dname "CN=Test,OU=THU,O=Software,L=BJ,S=BJ,C=CN" -keystore %ANDROID_PROJECT%\%PROJECT_NAME%\gen\AndroidTest.keystore -storepass 123456 -keypass 123456 -alias AndroidTestKey -keyalg RSA -v
