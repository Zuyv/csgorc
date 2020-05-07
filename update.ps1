$ScriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$CsgoPath = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730").InstallLocation

Copy-Item -Path "$ScriptPath\csgorc.cfg" "$CsgoPath\csgo\cfg\csgorc.cfg"
