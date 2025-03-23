@echo off
setlocal enabledelayedexpansion

:: Define input and output directories
set "input_folder=%~dp0"
set "output_folder=%input_folder%Processed_Videos"

:: Create the output folder if it doesn't exist
if not exist "%output_folder%" mkdir "%output_folder%"

set count=1

:: Process each Part*.mp4 file
for %%i in ("Part*.mp4") do (
    ffmpeg -i "%%~i" -vf "drawtext=text='Part !count!':fontcolor=Black:fontsize=80:x=(w-text_w)/2:y=h*0.25" -c:a copy "%output_folder%\output!count!.mp4"
    set /a count+=1
)

echo Processing complete! Files saved in "%output_folder%".
pause
