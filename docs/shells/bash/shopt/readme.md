## shopt
Check options enables with `shopt -s`

| Option                        | Description                                                              |
|------------------------------|--------------------------------------------------------------------------|
| **`autocd`**                  | Automatically runs `cd` if you type a directory name                     |
| **`cdable_vars`**             | If `cd` fails, tries to interpret the argument as a variable             |
| **`cdspell`**                 | Fixes small typos in directory names when using `cd`                     |
| **`checkhash`**               | Recheck commands in the hash table before running                        |
| **`checkjobs`**               | Warn if background jobs are running when you exit the shell              |
| **`checkwinsize`**            | Automatically update `LINES` and `COLUMNS` after each command            |
| **`cmdhist`**                 | Saves multi-line commands as a single line in history                    |
| **`compat31`–`compat44`**     | Use behavior compatible with older Bash versions                         |
| **`dirspell`**                | Correct spelling when using `dir` tab-completion                         |
| **`dotglob`**                 | Globs like `*` will include dotfiles (`.bashrc`, `.gitignore`, etc.)     |
| **`execfail`**                | If a command is not executable, stay in the shell instead of exiting     |
| **`expand_aliases`**          | Expand aliases even in non-interactive shells (mostly for scripts)       |
| **`extdebug`**                | Enables debugging features (`trap DEBUG`, etc.)                          |
| **`extglob`**                 | Enables extended pattern matching (`@(a|b)`, `!(x)`, etc.)               |
| **`extquote`**                | Allow additional quoting rules (enabled by default)                      |
| **`failglob`**                | Make unmatched globs (e.g. `*.jpg` when none exist) produce an error     |
| **`force_fignore`**           | Enforces `FIGNORE` behavior strictly during completion                   |
| **`globstar`**                | `**` matches files and directories recursively                           |
| **`gnu_errfmt`**              | Error messages in GNU-style format (`file:line: error`)                  |
| **`histappend`**              | Append to `.bash_history` instead of overwriting it                      |
| **`histreedit`**              | Re-edit a failed history expansion interactively                         |
| **`histverify`**              | Let you **edit** a history-expanded command before execution             |
| **`hostcomplete`**            | Enable hostname completion after `@`                                     |
| **`huponexit`**               | Send `SIGHUP` to jobs when the shell exits                               |
| **`interactive_comments`**    | Allow `#` comments in interactive shell                                  |
| **`lastpipe`**                | Run the last command in a pipeline in the current shell (not a subshell) |
| **`lithist`**                 | Saves literal (multi-line) commands in history                           |
| **`login_shell`**             | Indicates if the shell is a login shell (read-only)                      |
| **`mailwarn`**                | Show message if mail file is accessed                                    |
| **`no_empty_cmd_completion`** | Don’t complete commands on empty lines                                   |
| **`progcomp`**                | Enable programmable completion (tab-completion with functions)           |
| **`promptvars`**              | Allow variables in `PS1`, `PS2` prompt strings                           |
| **`restricted_shell`**        | Indicates if Bash is restricted (read-only)                              |
| **`shift_verbose`**           | Warn if `shift` is called with too few positional parameters             |
| **`sourcepath`**              | When using `source` (or `.`), look in `$PATH` for the file               |

