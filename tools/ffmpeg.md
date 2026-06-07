# FFmpeg

## What is FFmpeg?

FFmpeg is a free and open-source multimedia framework used to process audio and video files.

Common uses include:

* Converting media between different formats
* Extracting audio from video files
* Trimming audio and video
* Recording, streaming, and transcoding media
* Inspecting media file information with tools such as `ffprobe`

FFmpeg is widely available on Linux, macOS, and Windows and is commonly used from the command line.

## Installation

### Install FFmpeg:

Debian / Ubuntu

```bash
sudo apt install ffmpeg
```

Red Hat / Rocky Linux
```bash
sudo dnf install ffmpeg
```

Verify the installation:

```bash
ffmpeg -version
```

## MKV to MP3

Create a personal scripts directory if it does not already exist:

```bash
mkdir -p ~/bin
```

Create a helper script:

```bash
vi ~/bin/mp3
```

Script contents:

```bash
#!/usr/bin/env bash

set -euo pipefail

input="$1"
output="${input%.*}.mp3"

ffmpeg \
    -ss 1 \
    -i "$input" \
    -vn \
    -c:a libmp3lame \
    -q:a 2 \
    "$output"

echo "Created: $output"
```

Make the script executable:

```bash
chmod +x ~/bin/mp3
```

Usage:

```bash
mp3 input.mkv
```

Output:

```text
input.mp3
```

## Audio Editing

### Trim 1 Second from the Start

```bash
ffmpeg \
    -ss 1 \
    -i input.mp3 \
    -c:a libmp3lame \
    -q:a 2 \
    output.mp3
```

### Trim 1 Second from the End

Check the file duration:

```bash
ffprobe -i input.mp3 \
    -show_entries format=duration \
    -v quiet \
    -of csv="p=0"
```

Example output:

```text
100.000000
```

Trim the file:

```bash
ffmpeg \
    -i input.mp3 \
    -af "atrim=end=99.000000" \
    -c:a libmp3lame \
    -q:a 2 \
    output.mp3
```

In this example, the original duration is 100 seconds and the output is trimmed to 99 seconds.
