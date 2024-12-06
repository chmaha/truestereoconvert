@echo off
REM Batch script to convert all stereo WAV, FLAC, and AIFF files to true stereo (LRLR)

if "%~1"=="" (
    echo Usage: truestereoconvert *.wav *.flac *.aiff
    exit /b
)

for %%F in (%*) do (
    set "ext=%%~xF"
    set "ext=!ext:~1!"

    if /I "!ext!"=="wav" (
        echo Converting "%%F" to true stereo (LRLR) format...
        sox "%%F" "%%~dpnF_LRLR.wav" remix 1 2 1 2
        echo Done: "%%~dpnF_LRLR.wav"
    ) else if /I "!ext!"=="flac" (
        echo Converting "%%F" to true stereo (LRLR) format...
        sox "%%F" "%%~dpnF_LRLR.flac" remix 1 2 1 2
        echo Done: "%%~dpnF_LRLR.flac"
    ) else if /I "!ext!"=="aiff" (
        echo Converting "%%F" to true stereo (LRLR) format...
        sox "%%F" "%%~dpnF_LRLR.aiff" remix 1 2 1 2
        echo Done: "%%~dpnF_LRLR.aiff"
    ) else (
        echo Skipping unsupported file type: "%%F"
    )
)

echo Conversion complete!
pause
