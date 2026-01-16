#Requires AutoHotkey v1.1.0+
;==============================================================
; localDateTimeToFileTime — Converts a local datetime (YYYYMMDDHH24MISS) to a FILETIME value
;
; GitHub: https://github.com/SevenKeyboard/local-date-time-to-file-time
; Author: SevenKeyboard Ltd. (2026)
; License: The Unlicense
;==============================================================
class VersionManager_localDateTimeToFileTime
{
    static _ := VersionManager_localDateTimeToFileTime._init()
    _init()    {
        global
        LOCALDATETIMETOFILETIME_VERSION := "1.0.0"
    }
}
localDateTimeToFileTime(YYYYMMDDHH24MISS)    {
    YYYYMMDDHH24MISS -= 16010101000000, S
    dllCall("Kernel32.dll\LocalFileTimeToFileTime", "Int64*",YYYYMMDDHH24MISS *= 10000000, "Int64*",fileTime)
    return fileTime
}