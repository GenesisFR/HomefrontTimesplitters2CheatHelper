; Homefront Timesplitters 2 Cheat Helper

#MaxThreadsPerHotkey 1           ; Prevent accidental double-presses.
#NoEnv                           ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent                      ; Keep the script permanently running since we use a timer.
#Requires AutoHotkey v1.1.33.02+ ; Display an error and quit if this version requirement is not met.
#SingleInstance force            ; Allow only a single instance of the script to run.
#UseHook                         ; Allow listening for non-modifier keys.
#Warn                            ; Enable warnings to assist with detecting common errors.
SendMode Input                   ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%      ; Ensures a consistent starting directory.

; Register a function to be called on exit
OnExit("ExitFunc", -1)

windowID := 0
configFileName := RTrim(A_ScriptName, A_IsCompiled ? ".exe" : ".ahk") . ".ini"
OutputDebug, init::configFileName %configFileName%

; Config file is missing, exit
if (!FileExist(configFileName))
	ExitWithErrorMessage(configFileName . " not found! The script will now exit.")

ReadConfigFile()
SetTimer, OnFocusChanged, %focusCheckDelay%

return

unlockArcade:

SoundBeep()

OutputDebug, unlockArcade::begin

KeyWait, %unlockArcadeKey%

OutputDebug, unlockArcadeKey::1 (LButton + RButton + 1)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {1 down}
Sleep, %holdDelay%
SendInput, {1 up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::2 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::3 (LButton + RButton + 1)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {1 down}
Sleep, %holdDelay%
SendInput, {1 up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::4 (LButton + RButton + G)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::5 (LButton + 1)
SendInput, {LButton down}
SendInput, {1 down}
Sleep, %holdDelay%
SendInput, {1 up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::6 (LButton + RButton + 1)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {1 down}
Sleep, %holdDelay%
SendInput, {1 up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::7 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::8 (LButton + RButton + R)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::9 (LButton + T)
SendInput, {LButton down}
SendInput, {T down}
Sleep, %holdDelay%
SendInput, {T up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockArcadeKey::10 (RButton + X)
SendInput, {RButton down}
SendInput, {X down}
Sleep, %holdDelay%
SendInput, {X up}
SendInput, {RButton up}

OutputDebug, unlockArcade::end

SoundBeep(1000)

return

unlockChallenge:

SoundBeep()

OutputDebug, unlockChallenge::begin

KeyWait, %unlockChallengeKey%

OutputDebug, unlockChallenge::1 (LButton + G)
SendInput, {LButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::2 (LButton + RButton + 1)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {1 down}
Sleep, %holdDelay%
SendInput, {1 up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::3 (LButton + RButton + G)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::4 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::5 (RButton + 2)
SendInput, {RButton down}
SendInput, {2 down}
Sleep, %holdDelay%
SendInput, {2 up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug % bQwerty ? "unlockChallenge::6 (RButton + Q)" : "unlockChallenge::6 (RButton + A)"
SendInput, {RButton down}
SendInput % bQwerty ? "{Q down}" : "{A down}"
Sleep, %holdDelay%
SendInput % bQwerty ? "{Q up}" : "{A up}"
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::7 (RButton + R)
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::8 (LButton + RButton + X)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {X down}
Sleep, %holdDelay%
SendInput, {X up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::9 (LButton + T)
SendInput, {LButton down}
SendInput, {T down}
Sleep, %holdDelay%
SendInput, {T up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockChallenge::10 (RButton + X)
SendInput, {RButton down}
SendInput, {X down}
Sleep, %holdDelay%
SendInput, {X up}
SendInput, {RButton up}

OutputDebug, unlockChallenge::end

SoundBeep(1000)

return

unlockInvincibility:

SoundBeep()

OutputDebug, unlockInvincibility::begin

KeyWait, %unlockInvincibilityKey%

OutputDebug, unlockInvincibility::1 (2)
SendInput, {2 down}
Sleep, %holdDelay%
SendInput, {2 up}

Sleep, %inputDelay%

OutputDebug, unlockInvincibility::2 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockInvincibility::3 (LButton + RButton + 1)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {1 down}
Sleep, %holdDelay%
SendInput, {1 up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockInvincibility::4 (RButton + 2)
SendInput, {RButton down}
SendInput, {2 down}
Sleep, %holdDelay%
SendInput, {2 up}
SendInput, {RButton up}

OutputDebug, unlockInvincibility::end

SoundBeep(1000)

return

unlockStory:

SoundBeep()

OutputDebug, unlockStory::begin

KeyWait, %unlockStoryKey%

OutputDebug % bQwerty ? "unlockStory::1 (RButton + Q)" : "unlockStory::1 (RButton + A)"
SendInput, {RButton down}
SendInput % bQwerty ? "{Q down}" : "{A down}"
Sleep, %holdDelay%
SendInput % bQwerty ? "{Q up}" : "{A up}"
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug % bQwerty ? "unlockStory::2 (RButton + Q)" : "unlockStory::2 (RButton + A)"
SendInput, {RButton down}
SendInput % bQwerty ? "{Q down}" : "{A down}"
Sleep, %holdDelay%
SendInput % bQwerty ? "{Q up}" : "{A up}"
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockStory::3 (E)
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}

Sleep, %inputDelay%

OutputDebug, unlockStory::4 (RButton + 2)
SendInput, {RButton down}
SendInput, {2 down}
Sleep, %holdDelay%
SendInput, {2 up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockStory::5 (LButton + 1)
SendInput, {LButton down}
SendInput, {1 down}
Sleep, %holdDelay%
SendInput, {1 up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockStory::6 (LButton + G)
SendInput, {LButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockStory::7 (RButton + R)
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockStory::8 (RButton + R)
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockStory::9 (LButton + T)
SendInput, {LButton down}
SendInput, {T down}
Sleep, %holdDelay%
SendInput, {T up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockStory::10 (RButton + X)
SendInput, {RButton down}
SendInput, {X down}
Sleep, %holdDelay%
SendInput, {X up}
SendInput, {RButton up}

OutputDebug, unlockStory::end

SoundBeep(1000)

return

unlockUnknown1:

SoundBeep()

OutputDebug, unlockUnknown1::begin

KeyWait, %unlockUnknown1Key%

OutputDebug, unlockUnknown1::1 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::2 (LButton + RButton + Left)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {Left down}
Sleep, %holdDelay%
SendInput, {Left up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::3 (LButton + RButton + X)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {X down}
Sleep, %holdDelay%
SendInput, {X up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::4 (LButton + G)
SendInput, {LButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::5 (LButton + Left)
SendInput, {LButton down}
SendInput, {Left down}
Sleep, %holdDelay%
SendInput, {Left up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::6 (RButton + R)
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::7 (RButton + R)
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::8 (LButton + RButton + G)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::9 (LButton + T)
SendInput, {LButton down}
SendInput, {T down}
Sleep, %holdDelay%
SendInput, {T up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown1::10 (RButton + X)
SendInput, {RButton down}
SendInput, {X down}
Sleep, %holdDelay%
SendInput, {X up}
SendInput, {RButton up}

OutputDebug, unlockUnknown1::end

SoundBeep(1000)

return

unlockUnknown2:

SoundBeep()

OutputDebug, unlockUnknown2::begin

KeyWait, %unlockUnknown2Key%

OutputDebug, unlockUnknown2::1 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::2 (LButton + RButton + Left)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {Left down}
Sleep, %holdDelay%
SendInput, {Left up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::3 (LButton + RButton + R)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::4 (RButton + Right)
SendInput, {RButton down}
SendInput, {Right down}
Sleep, %holdDelay%
SendInput, {Right up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::5 (LButton + G)
SendInput, {LButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::6 (RButton + R)
SendInput, {RButton down}
SendInput, {R down}
Sleep, %holdDelay%
SendInput, {R up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::7 (LButton + RButton + G)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::8 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::9 (LButton + T)
SendInput, {LButton down}
SendInput, {T down}
Sleep, %holdDelay%
SendInput, {T up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown2::10 (RButton + X)
SendInput, {RButton down}
SendInput, {X down}
Sleep, %holdDelay%
SendInput, {X up}
SendInput, {RButton up}

OutputDebug, unlockUnknown2::end

SoundBeep(1000)

return

unlockUnknown3:

SoundBeep()

OutputDebug, unlockUnknown3::begin

KeyWait, %unlockUnknown3Key%

OutputDebug, unlockUnknown3::1 (RButton + G)
SendInput, {RButton down}
SendInput, {G down}
Sleep, %holdDelay%
SendInput, {G up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown3::2 (LButton + T)
SendInput, {LButton down}
SendInput, {T down}
Sleep, %holdDelay%
SendInput, {T up}
SendInput, {LButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown3::3 (RButton + Left)
SendInput, {RButton down}
SendInput, {Left down}
Sleep, %holdDelay%
SendInput, {Left up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown3::4 (RButton + Right)
SendInput, {RButton down}
SendInput, {Right down}
Sleep, %holdDelay%
SendInput, {Right up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown3::5 (RButton + Up)
SendInput, {RButton down}
SendInput, {Up down}
Sleep, %holdDelay%
SendInput, {Up up}
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug, unlockUnknown3::6 (LButton + RButton + E)
SendInput, {LButton down}
SendInput, {RButton down}
SendInput, {E down}
Sleep, %holdDelay%
SendInput, {E up}
SendInput, {RButton up}
SendInput, {LButton up}

OutputDebug, unlockUnknown3::end

SoundBeep(1000)

return

HookWindow()
{
	; All the variables below are declared as global so they can be used in the whole script
	global
	
	; Make the hotkeys active only for a specific window
	OutputDebug, HookWindow::begin
	WinWaitActive, %windowName%
	OutputDebug, HookWindow::WinWaitActive
	Sleep, %hookDelay%
	WinGet, windowID, ID, %windowName%
	OutputDebug, HookWindow::WinGet %windowID%
	GroupAdd, windowIDGroup, ahk_id %windowID%
	Hotkey, IfWinActive, ahk_group windowIDGroup
	OutputDebug, HookWindow::end
}

OnFocusChanged()
{
	global
	
	OutputDebug, OnFocusChanged::begin
	
	; Make sure to hook the window again if it no longer exists
	if (!WinExist(windowName) || !windowID)
	{
		HookWindow()
		RegisterHotkeys()	
	}
	else
	{
		OutputDebug, OnFocusChanged::WinWaitActive
		WinWaitActive, %windowName%
	}
	
	OutputDebug, OnFocusChanged::WinWaitNotActive
	WinWaitNotActive, %windowName%
	ReleaseAllKeys()
	OutputDebug, OnFocusChanged::end
}

ReadConfigFile()
{
	; All the variables below are declared as global so they can be used in the whole script
	global
	
	; General
	IniRead, windowName, %configFileName%, General, windowName
	IniRead, hookDelay, %configFileName%, General, hookDelay, 0
	IniRead, focusCheckDelay, %configFileName%, General, focusCheckDelay, 1000
	IniRead, holdDelay, %configFileName%, General, holdDelay, 100
	IniRead, inputDelay, %configFileName%, General, inputDelay, 500

	; Keys
	IniRead, bQwerty, %configFileName%, Keys, bQwerty, 1
	IniRead, unlockArcadeKey, %configFileName%, Keys, unlockArcadeKey, Numpad1
	IniRead, unlockChallengeKey, %configFileName%, Keys, unlockChallengeKey, Numpad2
	IniRead, unlockInvincibilityKey, %configFileName%, Keys, unlockInvincibilityKey, Numpad3
	IniRead, unlockStoryKey, %configFileName%, Keys, unlockStoryKey, Numpad4
	IniRead, unlockUnknown1Key, %configFileName%, Keys, unlockUnknown1Key, Numpad5
	IniRead, unlockUnknown2Key, %configFileName%, Keys, unlockUnknown2Key, Numpad6
	IniRead, unlockUnknown3Key, %configFileName%, Keys, unlockUnknown3Key, Numpad7
	IniRead, bUnlockArcade, %configFileName%, Keys, bUnlockArcade, 1
	IniRead, bUnlockChallenge, %configFileName%, Keys, bUnlockChallenge, 1
	IniRead, bUnlockInvincibility, %configFileName%, Keys, bUnlockInvincibility, 1
	IniRead, bUnlockStory, %configFileName%, Keys, bUnlockStory, 1
	IniRead, bUnlockUnknown1, %configFileName%, Keys, bUnlockUnknown1, 1
	IniRead, bUnlockUnknown2, %configFileName%, Keys, bUnlockUnknown2, 1
	IniRead, bUnlockUnknown3, %configFileName%, Keys, bUnlockUnknown3, 1

	; Debug
	IniRead, bSound, %configFileName%, Debug, bSound, 1
}

RegisterHotkeys()
{
	global
	
	if (bUnlockArcade)
		Hotkey, ~%unlockArcadeKey%, unlockArcade
	if (bUnlockChallenge)
		Hotkey, ~%unlockChallengeKey%, unlockChallenge
	if (bUnlockInvincibility)
		Hotkey, ~%unlockInvincibilityKey%, unlockInvincibility
	if (bUnlockStory)
		Hotkey, ~%unlockStoryKey%, unlockStory
	if (bUnlockUnknown1)
		Hotkey, ~%unlockUnknown1Key%, unlockUnknown1
	if (bUnlockUnknown2)
		Hotkey, ~%unlockUnknown2Key%, unlockUnknown2
	if (bUnlockUnknown3)
		Hotkey, ~%unlockUnknown3Key%, unlockUnknown3
}

ReleaseAllKeys()
{
	global

	; Don't release keys that aren't pressed
	if (GetKeyState(unlockArcadeKey))
		SendInput % "{" . unlockArcadeKey . " up}"
	if (GetKeyState(unlockChallengeKey))
		SendInput % "{" . unlockChallengeKey . " up}"
	if (GetKeyState(unlockInvincibilityKey))
		SendInput % "{" . unlockInvincibilityKey . " up}"
	if (GetKeyState(unlockStoryKey))
		SendInput % "{" . unlockStoryKey . " up}"
	if (GetKeyState(unlockUnknown1Key))
		SendInput % "{" . unlockUnknown1Key . " up}"
	if (GetKeyState(unlockUnknown2Key))
		SendInput % "{" . unlockUnknown2Key . " up}"
	if (GetKeyState(unlockUnknown3Key))
		SendInput % "{" . unlockUnknown3Key . " up}"
}

ReloadScript()
{
	SoundBeep()
	ReleaseAllKeys()
	Reload
}

SoundBeep(ByRef pDuration := 150)
{
	global bSound
	
	if (bSound)
		SoundBeep, 1000, pDuration
}

; Exit script
ExitFunc(pExitReason, pExitCode)
{
	if (!pExitCode)
		ReleaseAllKeys()
}

; Display an error message and exit
ExitWithErrorMessage(pErrorMessage)
{
	MsgBox, 16, Error, %pErrorMessage%
	ExitApp, 1
}

; Reload the script (useful when key states are bugged)
!F10:: ; ALT+F10

; Make this hotkey exempt from suspension
Suspend, Permit
ReloadScript()

return

; Suspend/resume the script (useful in menus)
!F11:: ; ALT+F11

Suspend
ReleaseAllKeys()

; Single beep when suspended
if (A_IsSuspended)
	SoundBeep()
; Double beep when resumed
else
{
	SoundBeep()
	SoundBeep()
}

return

; Close the script
!F12:: ; ALT+F12

; Make this hotkey exempt from suspension
Suspend, Permit
ExitApp, 0

return
