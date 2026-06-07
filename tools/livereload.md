# LiveReload

## What is LiveReload?

LiveReload is a lightweight development server that automatically reloads a web page in your browser whenever a file changes.

It is commonly used when developing static websites with HTML, CSS, and JavaScript, allowing you to preview changes without manually refreshing the browser.

## Installation

### Install LiveReload

#### Debian / Ubuntu

```bash
python3 -m pip install --user livereload
```

#### Red Hat / Rocky Linux

```bash
python3 -m pip install --user livereload
```

### Add `~/.local/bin` to PATH

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Verify the Installation

Check that the executable is available:

```bash
which livereload
```

Example output:

```text
/home/user/.local/bin/livereload
```

Check the installed package:

```bash
python3 -m pip show livereload
```

## Usage

### Start a LiveReload Server

```bash
livereload -p 8000
```

### Open the Site in a Browser

```text
http://127.0.0.1:8000
```

or

```text
http://localhost:8000
```

## Uninstallation

Remove LiveReload:

```bash
python3 -m pip uninstall livereload
```

Remove the Tornado dependency if no longer needed:

```bash
python3 -m pip uninstall tornado
```

### Verify Removal

```bash
python3 -m pip show livereload
python3 -m pip show tornado
```

Verify that the executable has been removed:

```bash
ls ~/.local/bin | grep livereload
```

Expected output:

```text
(no output)
```
