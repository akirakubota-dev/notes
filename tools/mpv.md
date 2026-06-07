# MPV

## What is MPV?

MPV is a free and open-source media player that supports a wide range of audio and video formats.

It is lightweight, highly configurable, keyboard-friendly, and commonly used on Linux for local media playback.

## Installation

### Install MPV

#### Debian / Ubuntu

MPV is available in the default repositories and can be installed with:

```bash
sudo apt install mpv
```

#### Red Hat / Rocky Linux

Enable the required repositories:

```bash
sudo dnf install epel-release -y
sudo dnf config-manager --set-enabled crb
```

Install RPM Fusion:

```bash
sudo dnf install \
https://download1.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm \
https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm
```

Install MPV:

```bash
sudo dnf install mpv -y
```

Install FFmpeg support:

```bash
sudo dnf install ffmpeg ffmpeg-libs --allowerasing -y
```

### Verify the Installation

```bash
which mpv
mpv --version
```
## Keyboard Shortcuts

### Playback

| Key     | Action                     |
| ------- | -------------------------- |
| `Space` | Pause / Resume             |
| `p`     | Pause / Resume             |
| `q`     | Quit                       |
| `Q`     | Quit and remember position |
| `f`     | Toggle fullscreen          |
| `m`     | Toggle mute                |

### Information

| Key | Action                    |
| --- | ------------------------- |
| `o` | Show playback information |
| `i` | Show detailed statistics  |

### Volume

| Key | Action      |
| --- | ----------- |
| `9` | Volume down |
| `0` | Volume up   |

### Seeking

| Key                       | Action                            |
| ------------------------- | --------------------------------- |
| `←` / `→`                 | Seek 5 seconds backward / forward |
| `Shift + ←` / `Shift + →` | Seek 1 second backward / forward  |
| `↑` / `↓`                 | Seek 1 minute forward / backward  |
| `Shift + ↑` / `Shift + ↓` | Seek 5 minutes forward / backward |

### Frame-by-Frame Navigation

| Key | Action         |
| --- | -------------- |
| `.` | Next frame     |
| `,` | Previous frame |

### Playback Speed

| Key         | Action                  |
| ----------- | ----------------------- |
| `[`         | Decrease playback speed |
| `]`         | Increase playback speed |
| `Backspace` | Reset speed to 1.0x     |

### Looping

| Key | Action                             |
| --- | ---------------------------------- |
| `l` | Set A-B loop start, end, and clear |

### On-Screen Controller

| Key      | Action                |
| -------- | --------------------- |
| `Delete` | Toggle OSC visibility |

## Custom Keybindings

Configuration file:

```text
~/.config/mpv/input.conf
```

Disable default keybindings:

```text
SPACE ignore
p ignore
LEFT ignore
RIGHT ignore
Shift+LEFT ignore
Shift+RIGHT ignore
```

Custom keybindings:

```text
k cycle pause
j seek -5
l seek 5
J seek -1
L seek 1
```

### Custom Controls

| Key | Action                  |
| --- | ----------------------- |
| `k` | Pause / Resume          |
| `j` | Seek backward 5 seconds |
| `l` | Seek forward 5 seconds  |
| `J` | Seek backward 1 second  |
| `L` | Seek forward 1 second   |

## Configuration

Configuration file:

```text
~/.config/mpv/mpv.conf
```

Always show the On-Screen Controller (OSC):

```text
osc=yes
script-opts=osc-visibility=always
```
