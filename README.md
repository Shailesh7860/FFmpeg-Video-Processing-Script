# FFmpeg Video Processing Script

## Overview
This batch script automates the process of **adding part numbers** as text overlays to **video files** (`Part*.mp4`) using **FFmpeg**. It sequentially numbers each video and saves the processed files in a designated output folder.

## Features
- **Processes all `Part*.mp4` files** in the script's directory.
- **Adds a part number overlay** to each video.
- **Saves processed videos** in a separate `Processed_Videos` folder.
- **Preserves original audio** without re-encoding.

## Requirements
- **FFmpeg** must be installed and added to the system **PATH**.  
  - [Download FFmpeg](https://ffmpeg.org/download.html)

## Usage
1. **Place all `Part*.mp4` videos** in the same folder as the script.
2. **Run the batch file**:
   ```sh
   process_videos.bat
