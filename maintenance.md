# Maintenance Mode (Disable UWF Temporarily)
Sometimes you may need to install drivers, make system changes, or perform admin maintenance.

## You can disable UWF temporarily with these commands:
```powershell
# Disable UWF (will take effect after reboot)
uwfmgr filter disable

# Reboot to apply
shutdown /r /t 0
```

## After finishing maintenance, re-enable UWF:
```powershell
# Re-enable UWF
uwfmgr filter enable

# Reboot again to activate protection
shutdown /r /t 0
``