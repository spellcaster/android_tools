:: Script for signing APK's
:: Parameters:
::   %1 - FULL path to .apk file
:: Sign and zipalign details and errors are written to sign.log
:: Requirements:
::   You must have JDK installed, java.exe in PATH and modify the "set PATH" line
::     below to point to yours JDK\bin path
::   You also have to create your key store and set values in Key_cfg.bat to yours.
::   The folder with this script must not contain non-latin symbols

:: @echo off

:: Not changing calling process' PATH variable
setlocal

set CDir=%~dp0%

:: To access keytool.exe and jarsigner.exe. Modify this value to yours!
set PATH=%PATH%;D:\Coding\Tools\Android\JDK\bin
:: Load cert config
call "%CDir%\Key_cfg.bat"

:: Check all needed files

:: Java
java -version 2> nul
if errorlevel 1 (
	echo Java not installed.
	goto :Err
)
:: keytool
keytool 2> nul
if errorlevel 1 (
	echo keytool.exe not found. Check your PATH settings inside the script, they must contain valid path to JDK\bin
	goto :Err
)
:: jarsigner
jarsigner 2> nul 1> nul
if errorlevel 1 (
	echo jarsigner.exe not found. Check your PATH settings inside the script, they must contain valid path to JDK\bin
	goto :Err
)
:: zipalign
if not exist "%CDir%\zipalign.exe" (
	echo %CDir%\zipalign.exe not found
	goto :Err
)

:: Check for keystore and suggest to create it if abcent
:: ! Magic ! We imitate Enter keys to accept default empty values to "Your name",
:: "Your organisation" and other unneeded stuff which keytool is asking about.	
if not exist "%KeyStore%" (
	echo WARNING. %KeyStore% not found. Press any key to create it with the values from Key_cfg.bat or Ctrl-C to cancel.
	pause > nul
	(echo.&echo.&echo.&echo.&echo.&echo.&echo yes) | keytool.exe -genkey -v -keystore "%KeyStore%" -alias %Alias% -keyalg RSA -keysize 2048 -validity 10000 -keypass %KeyPass% -storepass %StorePass%
    if errorlevel 1 (
    	echo Key creation failed, cannot continue...
    	goto :Err
    )	
)

:: apk_path will contain full path to apk WITHOUT extension
set apk_path=%~dpn1%
if "!apk_path!"=="" (
    echo apk path is empty
    goto :Eof
)

:: Prepare
del "%apk_path%_signed.apk" 2> nul
copy "%apk_path%.apk" "%apk_path%_tmp.apk" > nul

:: Sign
echo Signing...
call jarsigner.exe -verbose -keystore "%KeyStore%" -sigalg MD5withRSA -digestalg SHA1 -storepass %StorePass% --keypass %KeyPass% "%apk_path%_tmp.apk" %Alias% > "%CDir%\sign.log"
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