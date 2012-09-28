:: This is config file for Sign.bat. It contains certificate & key properties.
:: Don't try to launch it!
:: If you don't have your keystore yet, just modify these values as you like (or leave unchanged)
:: and the script will generate all the needed stuff.
@echo off

:: Modify this value to yours!
set StorePass=yourpass
set KeyPass=yourpass
set Alias=YourKey
set KeyStore=%CDir%\key.keystore