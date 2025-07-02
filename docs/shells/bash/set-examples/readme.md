# Bash set options

| Option       | Description                                                              |
|--------------|---------------------------------------------------------------------------|
| `allexport`  | Automatically export all variables you assign (like `export VAR=value`).  |
| `errexit`    | Exit immediately if any command has a non-zero exit status (`set -e`).    |
| `nounset`    | Treat use of undefined variables as an error (`set -u`).                  |
| `pipefail`   | Causes a pipeline to fail if any command in the pipeline fails.           |
| `noclobber`  | Prevent overwriting files with `>` (forces you to use `>|` to override).  |
| `xtrace`     | Print each command before executing it (for debugging) (`set -x`).        |
| `vi`         | Use `vi`-style line editing in the shell.                                 |
| `emacs`      | Use `emacs`-style line editing (default in most bash shells).             |
| `ignoreeof`  | Prevent accidental shell exit via Ctrl+D (requires `exit` instead).       |
| `monitor`    | Enable job control (foreground/background jobs).                          |
| `nocaseglob` | Make filename globbing (like `*.txt`) case-insensitive.                   |
| `noglob`     | Disable pathname expansion (wildcards like `*`, `?`, etc. won’t work).    |
| `notify`     | Notify immediately when background jobs terminate.                        |
| `verbose`    | Print shell input lines as they're read (used for debugging).             |
| `histexpand` | Enable `!` history expansion (e.g., `!ls` repeats last `ls`).             |


## Bash `set` Shorthand Flags and Their Long Options

| Shorthand | Long Option (`set -o`) | Description                                             |
|-----------|------------------------|---------------------------------------------------------|
| `-a`      | `allexport`            | Automatically export all variables you define.          |
| `-b`      | `notify`               | Job completion notifications in background.             |
| `-e`      | `errexit`              | Exit immediately on error (fail-fast).                  |
| `-f`      | `noglob`               | Disable pathname expansion (`*`, `?`, etc.).            |
| `-h`      | *(not applicable)*     | Reserved; ignored in interactive bash.                  |
| `-n`      | `noexec`               | Read commands but don’t execute them (syntax checking). |
| `-u`      | `nounset`              | Error on undefined variables.                           |
| `-v`      | `verbose`              | Print each command before executing.                    |
| `-x`      | `xtrace`               | Trace commands as they are executed (debug mode).       |

## Best Practice:
`set -euo pipefail`

```
-e: Exit on error
-u: Treat undefined variables as errors
-o pipefail: Fail on any pipeline command failing
```
