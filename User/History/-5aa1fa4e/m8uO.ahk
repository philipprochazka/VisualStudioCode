#Requires AutoHotkey v2.0
; Context Sensitive Help in Any Editor (based on the v1 script by Rajat)
; https://www.autohotkey.com
; This script makes {PrintScreen} (or another hotkey of your choice) show the help file
; page for the selected AutoHotkey function or keyword. If nothing is selected,
; the function name will be extracted from the beginning of the current line.

; The hotkey below uses the clipboard to provide compatibility with the maximum
; number of editors (since ControlGet doesn't work with most advanced editors).
; It restores the original clipboard contents afterward, but as plain text,
; which seems better than nothing.

$^2::
{
    ; The following values are in effect only for the duration of this hotkey thread.
    ; Therefore, there is no need to change them back to their original values
    ; because that is done automatically when the thread ends:
    SetWinDelay 10
    SetKeyDelay 0


Send "{PrintScreen}"