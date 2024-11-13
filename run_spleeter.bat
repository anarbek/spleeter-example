@echo off
set INPUT_DIR=H:\Projects\KaraokeRelated\JumanVocalRemover\input
set OUTPUT_DIR=H:\Projects\KaraokeRelated\JumanVocalRemover\output

echo Starting Spleeter processing...

REM Run Docker container, mounting input and output folders and processing all MP3 files
docker run --rm -v "%INPUT_DIR%:/app/input" -v "%OUTPUT_DIR%:/app/output" my-spleeter bash -c ^
"for f in /app/input/*.mp3; do echo Processing \"$f\"...; spleeter separate -p spleeter:2stems -o /app/output -c mp3 \"$f\"; done"

echo All files processed. Check the output folder.
pause
