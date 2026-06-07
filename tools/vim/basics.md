# Vim

## What is Vim?

Vim is a modal text editor designed for efficient keyboard-driven editing.

It provides multiple editing modes and powerful commands for navigation, text manipulation, searching, and automation.

## Configuration

Configuration file:

```text
~/.vimrc
```

Example configuration:

```vim
set number
set relativenumber
set mouse=a
```

## Command-Line Mode

Enter command-line mode:

```text
:
```

### File Operations

| Command  | Description                    |
| -------- | ------------------------------ |
| `:q`     | Quit                           |
| `:q!`    | Quit without saving            |
| `:w`     | Save file                      |
| `:wq`    | Save and quit                  |
| `:wa`    | Save all modified buffers      |
| `:wqa`   | Save all buffers and quit      |
| `:xa`    | Save modified buffers and quit |
| `:w\|bd` | Save and close current buffer  |

### Information

| Command           | Description            |
| ----------------- | ---------------------- |
| `:f`              | Show current file name |
| `:version`        | Show Vim version       |
| `:set clipboard?` | Show clipboard setting |

### Execute Shell Commands

| Command     | Description       |
| ----------- | ----------------- |
| `:!command` | Run shell command |

Example:

```vim
:!ls
```

## Buffers

| Command       | Description                       |
| ------------- | --------------------------------- |
| `:enew`       | Create new buffer                 |
| `:e file.txt` | Open file                         |
| `:ls`         | List buffers                      |
| `:b N`        | Switch to buffer N                |
| `:bn`         | Next buffer                       |
| `:bp`         | Previous buffer                   |
| `:bd`         | Delete current buffer             |
| `:%bd\|e#`    | Delete all buffers except current |

## Windows

| Command        | Description             |
| -------------- | ----------------------- |
| `:sp file.txt` | Horizontal split        |
| `:vs file.txt` | Vertical split          |
| `:only`        | Close all other windows |

### Window Navigation

| Command         | Description              |
| --------------- | ------------------------ |
| `Ctrl-w Ctrl-w` | Next window              |
| `Ctrl-w h`      | Move to left window      |
| `Ctrl-w l`      | Move to right window     |
| `Ctrl-w H`      | Move window left         |
| `Ctrl-w L`      | Move window right        |
| `Ctrl-w o`      | Keep only current window |

## Normal Mode

### Cursor Movement

| Key | Description |
| --- | ----------- |
| `h` | Left        |
| `j` | Down        |
| `k` | Up          |
| `l` | Right       |

### Word Movement

| Key | Description                        |
| --- | ---------------------------------- |
| `w` | Next word                          |
| `W` | Next word (ignore punctuation)     |
| `b` | Previous word                      |
| `B` | Previous word (ignore punctuation) |
| `e` | End of word                        |

### Line Movement

| Key   | Description       |
| ----- | ----------------- |
| `^`   | Beginning of line |
| `$`   | End of line       |
| `gg`  | Beginning of file |
| `G`   | End of file       |
| `N G` | Go to line N      |

Example:

```vim
25G
```

### Scrolling

| Key      | Description          |
| -------- | -------------------- |
| `Ctrl-e` | Scroll down one line |
| `Ctrl-y` | Scroll up one line   |
| `Ctrl-f` | Page down            |
| `Ctrl-b` | Page up              |

### Screen Positioning

| Key  | Description                 |
| ---- | --------------------------- |
| `zz` | Center current line         |
| `zt` | Move current line to top    |
| `zb` | Move current line to bottom |
| `H`  | Top of screen               |
| `M`  | Middle of screen            |
| `L`  | Bottom of screen            |

## Insert Mode

| Key   | Description                 |
| ----- | --------------------------- |
| `i`   | Insert before cursor        |
| `a`   | Insert after cursor         |
| `I`   | Insert at beginning of line |
| `A`   | Insert at end of line       |
| `o`   | New line below              |
| `O`   | New line above              |
| `Esc` | Return to Normal mode       |

## Editing

### Delete

| Command | Description                 |
| ------- | --------------------------- |
| `dd`    | Delete line                 |
| `dw`    | Delete word                 |
| `diw`   | Delete current word         |
| `D`     | Delete to end of line       |
| `d$`    | Delete to end of line       |
| `d^`    | Delete to beginning of line |

### Change

| Command | Description           |
| ------- | --------------------- |
| `cc`    | Change line           |
| `ciw`   | Change current word   |
| `c$`    | Change to end of line |
| `ce`    | Change to end of word |

### Copy and Paste

| Command | Description       |
| ------- | ----------------- |
| `yy`    | Copy line         |
| `Y`     | Copy line         |
| `yiw`   | Copy current word |
| `p`     | Paste after       |
| `P`     | Paste before      |

### Undo / Redo

| Command  | Description             |
| -------- | ----------------------- |
| `u`      | Undo                    |
| `Ctrl-r` | Redo                    |
| `.`      | Repeat previous command |

## Search

### Basic Search

```vim
/someWord
```

Search backward:

```vim
?someWord
```

| Key | Description    |
| --- | -------------- |
| `n` | Next match     |
| `N` | Previous match |

### Search Current Word

| Command | Description         |
| ------- | ------------------- |
| `*`     | Next occurrence     |
| `#`     | Previous occurrence |

### Replace

Replace throughout the file:

```vim
:%s/old/new/g
```

Replace within a range:

```vim
:#,#s/old/new/g
```

## Visual Mode

| Key      | Description       |
| -------- | ----------------- |
| `v`      | Visual mode       |
| `V`      | Visual line mode  |
| `Ctrl-v` | Visual block mode |

### Common Operations

| Key | Description      |
| --- | ---------------- |
| `d` | Delete selection |
| `c` | Change selection |
| `y` | Copy selection   |

## Clipboard

Enable system clipboard support:

```vim
set clipboard=unnamedplus
```

Verify:

```vim
:set clipboard?
```

Check clipboard support:

```vim
:version
```

Look for:

```text
+clipboard
```
