# Cleanup script

$RobloxCookiesFilePath = "C:\Users\$env:USERNAME\AppData\Local\Roblox\LocalStorage\RobloxCookies.dat"
$SteamLoginUserFilePath = "C:\Program Files (x86)\Steam\config\loginusers.vdf"
$RiotClientDirPath = "C:\Users\$env:USERNAME\AppData\Local\Riot Games\Riot Client"

# Remove Roblox cookies file if it exists
if (Test-Path $RobloxCookiesFilePath) {
    Remove-Item $RobloxCookiesFilePath -Force -ErrorAction SilentlyContinue
}

# Remove Steam loginusers.vdf if it exists
if (Test-Path $SteamLoginUserFilePath) {
    Remove-Item $SteamLoginUserFilePath -Force -ErrorAction SilentlyContinue
}

# Remove Riot Client folder if it exists
if (Test-Path $RiotClientDirPath) {
    Remove-Item $RiotClientDirPath -Recurse -Force -ErrorAction SilentlyContinue
}
