@echo off
:: Cleanup

set "RobloxCookiesFilePath=C:\Users\%username%\AppData\Local\Roblox\LocalStorage\RobloxCookies.dat"
set "SteamLoginUserFilePath=C:\Program Files (x86)\Steam\config\loginusers.vdf"
set "RiotClientDirPath=C:\Users\%username%\AppData\Local\Riot Games\Riot Client"

if exist "%RobloxCookiesFilePath%" (
    del /f /q "%RobloxCookiesFilePath%"
)

if exist "%SteamLoginUserFilePath%" (
    del /f /q "%SteamLoginUserFilePath%"
)

if exist "%RiotClientDirPath%" (
    rmdir /s /q "%RiotClientDirPath%"
)
