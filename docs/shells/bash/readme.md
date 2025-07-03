# Bash

Bash for bash-scripting.


# How to build your own scripts library
[![Watch the video](https://img.youtube.com/vi/D2pe9ZZ2yCE/0.jpg)](https://www.youtube.com/watch?v=D2pe9ZZ2yCE)
> Cloud-Native Corner

- Styleguide. A good place to start for bash scripting Authored, revised and maintained by many Googlers.
[google.github.io](https://google.github.io/styleguide/shellguide.html)


- Bash Pitfalls:
A page with compilation of common mistakes made by bash users.
[mywiki.wooledge.org](http://mywiki.wooledge.org/BashPitfalls)

- Explain shell
[explainshell.com/](https://explainshell.com/)


- Awesome shell
[github.com](https://github.com/alebcay/awesome-shell?tab=readme-ov-file)

| Key Combination | Description                        |
|------------------|------------------------------------|
| `Ctrl + A`       | Move cursor to beginning of line   |
| `Ctrl + E`       | Move cursor to end of line         |
| `Ctrl + U`       | Delete from cursor to beginning    |
| `Ctrl + K`       | Delete from cursor to end          |
| `Ctrl + W`       | Delete the previous word           |
| `Ctrl + Y`       | Yank (paste) the last killed text  |
| `Ctrl + L`       | Clear the screen (like `clear`)    |
| `Ctrl + R`       | Reverse search through history     |
| `Ctrl + P`       | Previous command in history        |
| `Ctrl + N`       | Next command in history            |
| `Alt + .`        | Insert last argument from previous command |
| `Ctrl + T`       | Transpose (swap) two characters    |
| `Alt + T`        | Transpose two words                |
| `Ctrl + B`       | Move back one character            |
| `Ctrl + F`       | Move forward one character         |
| `Alt + B`        | Move back one word                 |
| `Alt + F`        | Move forward one word              |

## Bash History expansion

| Syntax   | Description                                      |
|----------|--------------------------------------------------|
| `!$`     | Last argument of the previous command            |
| `!^`     | First argument of the previous command           |
| `!:n`    | Nth argument of the previous command (0-based)   |
| `!:0`    | The command itself                               |
| `!:1`    | First argument                                   |
| `!:2`    | Second argument, etc.                            |
| `!:-2`   | Second-to-last argument                          |

