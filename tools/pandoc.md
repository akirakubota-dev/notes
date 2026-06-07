# Pandoc

## What is Pandoc?

Pandoc is a free and open-source document conversion tool.

It can convert documents between many formats, including:

* Markdown
* HTML
* PDF
* Microsoft Word (DOCX)
* EPUB
* Plain text

Pandoc is commonly used to transform Markdown files into publishable documents such as web pages, PDFs, and Word documents.

## Installation

Install Pandoc:

Debian / Ubuntu

```bash
sudo apt install pandoc
```

Red Hat / Rocky Linux

```bash
sudo dnf install pandoc
```

Verify the installation:

```bash
which pandoc
```

Expected output:

```text
/usr/bin/pandoc
```

Check the installed version:

```bash
pandoc --version
```

Example output:

```text
pandoc 2.9.2.1
```

## Commands

### Markdown → HTML

Convert a Markdown file to HTML:

```bash
pandoc file.md -o file.html
```

### Markdown → PDF

Convert a Markdown file to PDF:

```bash
pandoc file.md -o file.pdf
```

### Markdown → DOCX

Convert a Markdown file to a Microsoft Word document:

```bash
pandoc file.md -o file.docx
```

