#!/bin/bash
set -e

# Configuration
VAULT_DIR="${HOME}/.mj-dotfiles/.vaults/oh-my-posh-themes"
MJ_DOTFILES="${HOME}/.mj-dotfiles"
OH_MY_POSH_BIN="${MJ_DOTFILES}/.local/bin"
OH_MY_POSH_THEME_DIR="${MJ_DOTFILES}/.cache/oh-my-posh-themes"
THEME_URL="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json"
THEME_NAME="jandedobbeleer.omp.json"
THEME_PATH="${OH_MY_POSH_THEME_DIR}/${THEME_NAME}"
SHELL_TYPE="bash" 
BASHRC="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"

# 1. Install Oh My Posh binary
echo "🔧 Installing Oh My Posh binary at: $OH_MY_POSH_BIN"
mkdir -p "$OH_MY_POSH_BIN"
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d "${OH_MY_POSH_BIN}"

# 2. Create custom theme directory
echo "📁 Creating custom theme folder at: $OH_MY_POSH_THEME_DIR"
mkdir -p "${$OH_MY_POSH_THEME_DIR}"

# 3. Download the selected theme
echo "🎨 Downloading theme: $THEME_NAME"
curl -fsSL -o "${OH_MY_POSH_THEME_DIR}/${THEME_NAME}" "${THEME_URL}"
chmod u+rw "${THEME_PATH}"

# 4. Add eval line to shell config
EVAL_LINE="eval \"\$(oh-my-posh init ${SHELL_TYPE} --config ${THEME_PATH})\""

echo "📝 Updating your shell configuration..."

if [[ "$SHELL_TYPE" == "bash" ]]; then
    if ! grep -Fxq "${EVAL_LINE}" "${BASHRC}"; then
        echo "${EVAL_LINE}" >> "${BASHRC}"
        echo "✅ Added to .bashrc"
    else
        echo "ℹ️  Already present in .bashrc"
    fi
elif [[ "$SHELL_TYPE" == "zsh" ]]; then
    if ! grep -Fxq "${EVAL_LINE}" "${ZSHRC}"; then
        echo "${EVAL_LINE}" >> "${ZSHRC}"
        echo "✅ Added to .zshrc"
    else
        echo "ℹ️  Already present in .zshrc"
    fi
else
    echo "⚠️  Unknown shell: $SHELL_TYPE. Please add manually:"
    echo "$EVAL_LINE"
fi

echo "✅ Oh My Posh installed with custom theme."
echo "💡 Restart your terminal or run: source ~/.${SHELL_TYPE}rc"


