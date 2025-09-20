# UWF Setup for Pisonet Gaming PC

This document describes how to configure **Unified Write Filter (UWF)** for a Pisonet computer.  
The configuration allows games and browsers to update while ensuring customer data (logins, cookies, history) is wiped on reboot.

---

## Enable UWF

```powershell
Write-Host "=== Enabling Unified Write Filter (UWF) ==="
uwfmgr filter enable
```

## Reset Old Exclusions (Optional)
```powershell
Write-Host "=== Resetting old exclusions (clean start) ==="
uwfmgr file reset
```

## Game & App Exclusions
```powershell
# Main Games folder (if you keep games in C:\Games)
uwfmgr file add-exclusion "C:\Games"

# Roblox game client (keeps updates, but NOT login credentials)
uwfmgr file add-exclusion "C:\Program Files (x86)\Roblox"
uwfmgr file add-exclusion "C:\Users\Public\Roblox"

# Steam
uwfmgr file add-exclusion "C:\Program Files (x86)\Steam"

# Epic Games
uwfmgr file add-exclusion "C:\Program Files\Epic Games"

# Riot Games (Valorant / League of Legends)
uwfmgr file add-exclusion "C:\Riot Games"
```

## Browser Exclusions
```powershell
# Google Chrome (updates only, not user data)
uwfmgr file add-exclusion "C:\Program Files\Google\Chrome"
uwfmgr file add-exclusion "C:\Program Files (x86)\Google\Chrome"

# Microsoft Edge
uwfmgr file add-exclusion "C:\Program Files (x86)\Microsoft\Edge"
uwfmgr file add-exclusion "C:\Program Files\Microsoft\Edge"

# Mozilla Firefox
uwfmgr file add-exclusion "C:\Program Files\Mozilla Firefox"
```


## Windows Updates (Optional)
```powershell
# Allow Windows Updates to persist
uwfmgr file add-exclusion "C:\Windows\SoftwareDistribution"
```

## Apply & Reboot
```powershell
Write-Host "✅ UWF exclusions configured."
Write-Host "🔄 Rebooting now to activate..."
shutdown /r /t 0
```