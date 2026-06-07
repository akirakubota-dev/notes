## Advanced Editing

### Text Objects

Text objects operate on the content inside or around pairs of characters.

#### Parentheses, Brackets, Braces, Quotes

| Command | Description               |
| ------- | ------------------------- |
| `di(`   | Delete inside parentheses |
| `da(`   | Delete around parentheses |
| `ci(`   | Change inside parentheses |
| `ca(`   | Change around parentheses |

Example:

```text
foo(bar baz)
```

Cursor anywhere inside:

```vim
ci(
```

Result:

```text
foo(|)
```

The same pattern works with:

```text
(
[
{
<
'
"
```

Examples:

| Command | Description            |
| ------- | ---------------------- |
| `di[`   | Delete inside brackets |
| `da[`   | Delete around brackets |
| `ci[`   | Change inside brackets |
| `ca[`   | Change around brackets |

### HTML Tags

| Command | Description              |
| ------- | ------------------------ |
| `cit`   | Change inside tag        |
| `cat`   | Change around tag        |
| `dit`   | Delete inside tag        |
| `dat`   | Delete around tag        |
| `vit`   | Visual select inside tag |
| `vat`   | Visual select around tag |

Example:

```html
<div>Hello World</div>
```

Inside the content:

```vim
cit
```

Result:

```html
<div>|</div>
```

## Matching Pairs

### Jump Between Matching Pairs

| Command | Description                 |
| ------- | --------------------------- |
| `%`     | Jump between matching pairs |

Supported pairs:

```text
()
[]
{}
<>
```

Example:

```text
function(a, b)
        ^
```

Press:

```vim
%
```

Jump to:

```text
function(a, b)
             ^
```

## Character Search

### Forward Search

| Command | Description                      |
| ------- | -------------------------------- |
| `fx`    | Jump to next occurrence of x     |
| `tx`    | Jump before next occurrence of x |

Example:

```text
int myNumber();
    ^
```

Command:

```vim
f(
```

Result:

```text
int myNumber();
            ^
```

### Backward Search

| Command | Description                    |
| ------- | ------------------------------ |
| `FX`    | Jump to previous occurrence    |
| `TX`    | Jump after previous occurrence |

### Delete Until Character

| Command | Description    |
| ------- | -------------- |
| `dtx`   | Delete until x |

Example:

```text
int myNumber();
^
```

Command:

```vim
dt(
```

Result:

```text
();
^
```

## Marks

Marks act as bookmarks inside a file.

### Create a Mark

```vim
ma
```

Creates mark `a`.

### Jump to a Mark

```vim
'a
```

Jump to the marked line.

Common pattern:

```vim
ma
...
...
'a
```

## Macros

Macros record and replay commands.

### Record a Macro

Start recording:

```vim
qa
```

Record actions.

Stop recording:

```vim
q
```

### Execute a Macro

```vim
@a
```

Execute macro `a`.

Execute multiple times:

```vim
10@a
```

Run macro `a` ten times.

## Sorting

### Sort Selected Lines

Ascending:

```vim
:sort
```

Descending:

```vim
:sort!
```

Numeric sort:

```vim
:sort n
```

## Whole-File Operations

### Copy Entire File

Method 1:

```vim
:%y
```

Method 2:

```vim
ggyG
```

### Replace Throughout File

```vim
:%s/oldWord/newWord/g
```

Replace every occurrence.

### Replace Within a Range

```vim
:#,#s/oldWord/newWord/g
```

Replace only within the specified line range.

## Search Special Characters

### Search for Commas

Forward:

```vim
/,
```

Backward:

```vim
?,
```

### Search for Colons

Forward:

```vim
/:
```

Backward:

```vim
?:
```

### Search for Slashes

Forward:

```vim
/\/
```

Backward:

```vim
?\/
```

Repeat search:

| Key | Description        |
| --- | ------------------ |
| `n` | Same direction     |
| `N` | Opposite direction |

