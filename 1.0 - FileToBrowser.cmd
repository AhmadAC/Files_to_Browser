::Written by Ahmad Cooper
::Software comes "as is", no warranty.
::Copy script to a folder with pdf and mp4 files you want to open with a browser

@echo off
for /f "delims=" %%a in ('dir /s /b *.mp4 *.pdf') do (
	 set "a=%%a"
	 setLocal EnableDelayedExpansion
	 set "a=!a: =%%20!"
::change msedge.exe to any browser you want to open the mp4/pdf files.
::	 start chrome.exe "%%a"
	 start msedge.exe "%%a"
	endlocal
)

exit /b

