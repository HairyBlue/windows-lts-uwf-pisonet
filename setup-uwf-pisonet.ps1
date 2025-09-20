# ================================
# UWF Setup for Pisonet Gaming PC
# ================================

Write-Host "=== Enabling Unified Write Filter (UWF) ==="
uwfmgr filter enable

# Optional: reset previous exclusions
Write-Host "=== Resetting old exclusions (clean start) ==="
uwfmgr file reset

# ========================
# GAME & APP EXCLUSIONS
# ========================

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

# ========================
# BROWSER EXCLUSIONS
# ========================

# Google Chrome (updates only, not user data)
uwfmgr file add-exclusion "C:\Program Files\Google\Chrome"
uwfmgr file add-exclusion "C:\Program Files (x86)\Google\Chrome"

# Microsoft Edge
uwfmgr file add-exclusion "C:\Program Files (x86)\Microsoft\Edge"
uwfmgr file add-exclusion "C:\Program Files\Microsoft\Edge"

# Mozilla Firefox
uwfmgr file add-exclusion "C:\Program Files\Mozilla Firefox"

# ========================
# WINDOWS UPDATES (Optional)
# ========================
# Allow Windows Updates to persist
uwfmgr file add-exclusion "C:\Windows\SoftwareDistribution"

# ========================
# APPLY & REBOOT
# ========================
Write-Host "✅ UWF exclusions configured."
Write-Host "🔄 Rebooting now to activate..."
shutdown /r /t 0
