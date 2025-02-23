@echo off

 call :isAdmin

 if %errorlevel% == 0 (
    goto :run
 ) else (
    echo Requesting administrative privileges...
    goto :UACPrompt
 )

 exit /b

 :isAdmin
    fsutil dirty query %systemdrive% >nul
 exit /b

 :run
 winget install Git.Git
 winget install glazewm
 winget install wez.wezterm
 winget install chocolatey
 winget install nvim
 winget install nodejs
 winget install yarn.yarn
 winget install fzf
 winget install lazygit
 winget install Microsoft.PowerToys
 winget install yazi
 winget install obsidian
 exit /b

 :UACPrompt
   echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
   echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%temp%\getadmin.vbs"

   "%temp%\getadmin.vbs"
   del "%temp%\getadmin.vbs"
  exit /B`
