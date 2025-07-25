# Neovim

# Install lazy.nvim

`git clone https://github.com/folke/lazy.nvim.git ~/.config/nvim/lazy/lazy.nvim`

To sinc
`:Lazy sync`


# Plugins

## LSP - support

```
local lspconfig = require("lspconfig")

lspconfig.pyright.setup({})
lspconfig.lua_ls.setup({})
```

