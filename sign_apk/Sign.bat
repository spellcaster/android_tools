:: Script for signing APK's
:: Parameters:
::   %1 - FULL path to .apk file
:: Sign and zipalign details and errors are written to sign.log
:: Requirements:
::   You must have JDK installed, java.exe in PATH and JAVA_HOME environment variable set.
::   You also have to create your key store and set values in Key_cfg.bat to yours.

@echo off

set CDir=%~dp0%

:: Uncomment the line below and set JAVA_HOME variable to point to your JDK if you don't wish
:: to have this variable set system-wide
:: set JAVA_HOME=...your_path_to_JDK...

:: Check all needed files

:: Java
java -version 2> nul
if errorlevel 1 (
	echo Java not installed.
	goto :Err
)
:: JAVA_HOME
if .%JAVA_HOME%.==.. (
	echo Set JAVA_HOME variable to point to JDK or read comments inside this file.
	goto :Err
)
:: keytool
"%JAVA_HOME%\bin\keytool.exe" 2> nul
if errorlevel 1 (
	echo "%JAVA_HOME%\bin\keytool.exe" not found. Check your JAVA_HOME variable, it must contain valid path to JDK
	goto :Err
)
:: jarsigner
"%JAVA_HOME%\bin\jarsigner.exe" 2> nul 1> nul
if errorlevel 1 (
	echo "%JAVA_HOME%\bin\jarsigner.exe" not found. Check your JAVA_HOME variable, it must contain valid path to JDK
	goto :Err
)
:: zipalign
if not exist "%CDir%\zipalign.exe" (
	echo "%CDir%\zipalign.exe" not found
	goto :Err
)

:: Load cert config
call "%CDir%\Key_cfg.bat"

:: Check for keystore and suggest to create it if abcent
:: ! Magic ! We imitate Enter keys to accept default empty values to "Your name",
:: "Your organisation" and other unneeded stuff which keytool is asking about.	
if not exist "%KeyStore%" (
	echo WARNING. %KeyStore% not found. Press any key to create it with the values from Key_cfg.bat or Ctrl-C to cancel.
	pause > nul
	(echo.&echo.&echo.&echo.&echo.&echo.&echo yes) | "%JAVA_HOME%\bin\keytool.exe" -genkey -v -keystore "%KeyStore%" -alias %Alias% -keyalg RSA -keysize 2048 -validity 10000 -keypass %KeyPass% -storepass %StorePass%
    if errorlevel 1 (
    	echo Key creation failed, cannot continue...
    	goto :Err
    )	
)

:: apk_path will contain full path to apk WITHOUT extension
set apk_path=%~dpn1%
if .!apk_path!.==.. (
    echo apk path is empty
    goto :Eof
)

:: Prepare
del "%apk_path%_signed.apk" 2> nul
copy "%apk_path%.apk" "%apk_path%_tmp.apk" > nul

:: Sign
echo Signing...
"%JAVA_HOME%\bin\jarsigner.exe" -verbose -keystore "%KeyStore%" -sigalg MD5withRSA -digestalg SHA1 -storepass %StorePass% --keypass %KeyPass% "%apk_path%_tmp.apk" %Alias% > "%CDir%\sign.log"
if errorlevel 1 (
	echo ERROR. Something wrong happened. Check "%CDir%\sign.log" for details
	goto :Err
)

:: zip align
echo Zip aligning...
call "%CDir%\zipalign.exe" -v 4 "%apk_path%_tmp.apk" "%apk_path%_signed.apk" >> "%CDir%\sign.log"
if errorlevel 1 (
    echo ERROR. Something wrong happened. Check "%CDir%\sign.log" for details
	goto :Err
) else (
	echo Sign OK. Signed APK saved as "%apk_path%_signed.apk"
)

:: Cleanup
del "%apk_path%_tmp.apk" 2> nul

goto :Eof

:Err
pause