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

configFileName := "HomefrontTimesplitters2CheatHelper.ini"

; Config file is missing, exit
if (!FileExist(configFileName))
	ExitWithErrorMessage(configFileName . " not found! The script will now exit.")

ReadConfigFile()

; Make the hotkeys active only for a specific window
WinWaitActive, %windowName%
Sleep, %hookDelay%
WinGet, windowID, ID, %windowName%
GroupAdd, windowIDGroup, ahk_id %windowID%
Hotkey, IfWinActive, ahk_group windowIDGroup

RegisterHotkeys()

SetTimer, ReleaseKeysOnFocusLost, %focusCheckDelay%

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

OutputDebug % isQwerty ? "unlockChallenge::6 (RButton + Q)" : "unlockChallenge::6 (RButton + A)"
SendInput, {RButton down}
SendInput % isQwerty ? "{Q down}" : "{A down}"
Sleep, %holdDelay%
SendInput % isQwerty ? "{Q up}" : "{A up}"
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

OutputDebug % isQwerty ? "unlockStory::1 (RButton + Q)" : "unlockStory::1 (RButton + A)"
SendInput, {RButton down}
SendInput % isQwerty ? "{Q down}" : "{A down}"
Sleep, %holdDelay%
SendInput % isQwerty ? "{Q up}" : "{A up}"
SendInput, {RButton up}

Sleep, %inputDelay%

OutputDebug % isQwerty ? "unlockStory::2 (RButton + Q)" : "unlockStory::2 (RButton + A)"
SendInput, {RButton down}
SendInput % isQwerty ? "{Q down}" : "{A down}"
Sleep, %holdDelay%
SendInput % isQwerty ? "{Q up}" : "{A up}"
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
	IniRead, isQwerty, %configFileName%, Keys, isQwerty, 1
	IniRead, unlockArcadeKey, %configFileName%, Keys, unlockArcadeKey, Numpad1
	IniRead, unlockChallengeKey, %configFileName%, Keys, unlockChallengeKey, Numpad2
	IniRead, unlockInvincibilityKey, %configFileName%, Keys, unlockInvincibilityKey, Numpad3
	IniRead, unlockStoryKey, %configFileName%, Keys, unlockStoryKey, Numpad4
	IniRead, unlockUnknown1Key, %configFileName%, Keys, unlockUnknown1Key, Numpad5
	IniRead, unlockUnknown2Key, %configFileName%, Keys, unlockUnknown2Key, Numpad6
	IniRead, unlockUnknown3Key, %configFileName%, Keys, unlockUnknown3Key, Numpad7
	IniRead, isUnlockArcade, %configFileName%, Keys, isUnlockArcade, 1
	IniRead, isUnlockChallenge, %configFileName%, Keys, isUnlockChallenge, 1
	IniRead, isUnlockInvincibility, %configFileName%, Keys, isUnlockInvincibility, 1
	IniRead, isUnlockStory, %configFileName%, Keys, isUnlockStory, 1
	IniRead, isUnlockUnknown1, %configFileName%, Keys, isUnlockUnknown1, 1
	IniRead, isUnlockUnknown2, %configFileName%, Keys, isUnlockUnknown2, 1
	IniRead, isUnlockUnknown3, %configFileName%, Keys, isUnlockUnknown3, 1

	; Debug
	IniRead, isSound, %configFileName%, Debug, isSound, 1
}

RegisterHotkeys()
{
	global
	
	if (isUnlockArcade)
		Hotkey, ~%unlockArcadeKey%, unlockArcade
	if (isUnlockChallenge)
		Hotkey, ~%unlockChallengeKey%, unlockChallenge
	if (isUnlockInvincibility)
		Hotkey, ~%unlockInvincibilityKey%, unlockInvincibility
	if (isUnlockStory)
		Hotkey, ~%unlockStoryKey%, unlockStory
	if (isUnlockUnknown1)
		Hotkey, ~%unlockUnknown1Key%, unlockUnknown1
	if (isUnlockUnknown2)
		Hotkey, ~%unlockUnknown2Key%, unlockUnknown2
	if (isUnlockUnknown3)
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

ReleaseKeysOnFocusLost()
{
	global windowName
	
	OutputDebug, releaseKeysOnFocusLost::begin
	WinWaitActive, %windowName%
	OutputDebug, releaseKeysOnFocusLost::WinWaitActive
	WinWaitNotActive, %windowName%
	OutputDebug, releaseKeysOnFocusLost::WinWaitNotActive
	ReleaseAllKeys()
	OutputDebug, releaseKeysOnFocusLost::end
}

ReloadScript()
{
	SoundBeep()
	ReleaseAllKeys()
	Reload
}

SoundBeep(ByRef pDuration := 150)
{
	global isSound
	
	if (isSound)
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
