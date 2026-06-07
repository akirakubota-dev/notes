# tmux

## What is tmux?

tmux is a terminal multiplexer that allows multiple terminal sessions, windows, and panes to run inside a single terminal.

Common uses include:

* Keeping long-running processes active after disconnecting
* Managing multiple terminal windows in a single session
* Splitting the terminal into multiple panes
* Reattaching to existing sessions

## Sessions

### List Sessions

```bash
tmux ls
```

Example output:

```text
0: 1 windows (created Wed Apr 22 12:32:03 2026) [172x44] (attached)
```

### Create a Session

Create a new session:

```bash
tmux new
```

Create a named session:

```bash
tmux new -s mysession
```

### Attach to a Session

```bash
tmux attach -t 0
```

### Detach from a Session

```text
Ctrl-b d
```

### Rename a Session

```bash
tmux rename-session -t 0 newSessionName
```

### Terminate a Session

```bash
tmux kill-session -t 0
```

or:

```bash
exit
```

when the session contains no remaining windows.

## Windows

### Create a Window

```text
Ctrl-b c
```

Create a named window:

```bash
tmux new-window -t :9 -n local-server
```

### List Windows

```text
Ctrl-b w
```

### Rename a Window

```text
Ctrl-b ,
```

Press `q` to cancel.

### Switch Windows

| Key        | Description      |
| ---------- | ---------------- |
| `Ctrl-b 0` | Jump to window 0 |
| `Ctrl-b n` | Next window      |
| `Ctrl-b p` | Previous window  |

### Move Windows

Swap window 1 and window 2:

```bash
tmux swap-window -s 1 -t 2
```

Move the current window to position 1:

```bash
tmux move-window -t 1
```

## Panes

### Split Panes

Vertical split:

```text
Ctrl-b %
```

Horizontal split:

```text
Ctrl-b "
```

### Navigate Between Panes

```text
Ctrl-b + Arrow Keys
```

### Select Pane by Number

```text
Ctrl-b q
```

Then press the pane number.

### Switch to Previous Pane

```text
Ctrl-b ;
```

### Move Panes

Move pane left:

```text
Ctrl-b {
```

Move pane right:

```text
Ctrl-b }
```

### Resize Panes

Resize:

```text
Ctrl-b Ctrl + Arrow Keys
```

Resize quickly:

```text
Ctrl-b Alt + Arrow Keys
```

### Equalize Pane Layout

| Key            | Description            |
| -------------- | ---------------------- |
| `Ctrl-b Alt-1` | Even vertical layout   |
| `Ctrl-b Alt-2` | Even horizontal layout |
| `Ctrl-b Alt-5` | Even tiled layout      |

### Close a Pane

```text
Ctrl-b x
```

or:

```bash
exit
```

## Copy Mode

### Enter Copy Mode

```text
Ctrl-b [
```

### Select Text

```text
Space
```

### Copy Selection

```text
Enter
```

### Paste

```text
Ctrl-b ]
```

## Command Mode

Enter tmux command mode:

```text
Ctrl-b :
```

## Quit tmux

Kill the current session:

```text
Ctrl-b &
```

## Configuration

Configuration file:

```text
~/.tmux.conf
```
