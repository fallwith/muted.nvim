# muted.nvim

A muted, low-contrast Neovim colourscheme with warm neutrals, earthy greens, and dusty purples.  
Covers editor chrome, Treesitter, LSP semantic tokens, diagnostics, diffs, and a wide range of popular plugins.

---

## Plugin support

| Plugin | Covered |
|---|---|
| Treesitter (`@` captures) | ✅ |
| LSP semantic tokens (`@lsp.*`) | ✅ |
| Diagnostics & LSP references | ✅ |
| Diff / Git | ✅ |
| gitsigns.nvim | ✅ |
| Telescope | ✅ |
| nvim-cmp | ✅ |
| neo-tree / nvim-tree | ✅ |
| which-key | ✅ |
| indent-blankline (ibl) | ✅ |
| mini.nvim (statusline, cursorword, pick) | ✅ |
| nvim-notify | ✅ |
| Noice | ✅ |
| Lazy.nvim | ✅ |
| Mason | ✅ |

---

## Installation

### Option A — Test locally (no plugin manager)

Use this to try the colourscheme instantly without committing to a plugin manager.

1. **Clone** the repo anywhere:

   ```sh
   git clone https://github.com/yourname/muted.nvim ~/.local/share/nvim/site/pack/muted/start/muted.nvim
   ```

   Or if you just want to test from the cloned folder directly, add it to `runtimepath` in your `init.lua`:

   ```lua
   -- init.lua  (top of file, before any colorscheme call)
   vim.opt.runtimepath:prepend("/path/to/muted.nvim")
   ```

2. **Activate**:

   ```lua
   vim.cmd.colorscheme("muted")
   ```

   Or from the command line inside Neovim:

   ```vim
   :colorscheme muted
   ```

3. **Verify** the colourscheme loaded:

   ```vim
   :echo g:colors_name
   " should print: muted
   ```

4. **Inspect a highlight group** to confirm colours are applied:

   ```vim
   :Inspect
   " or
   :hi Normal
   ```

---

### Option B — Install with lazy.nvim

Add this to your lazy.nvim plugin spec:

```lua
{
  "yourname/muted.nvim",
  lazy = false,    -- load at startup, not on demand
  priority = 1000, -- load before all other plugins
  config = function()
    vim.cmd.colorscheme("muted")
  end,
},
```

If you haven't published it to GitHub yet and want to load it from a **local path**:

```lua
{
  dir = "/absolute/path/to/muted.nvim",  -- e.g. vim.fn.expand("~/.config/nvim/themes/muted.nvim")
  name = "muted.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("muted")
  end,
},
```

Then run `:Lazy sync` (or just restart Neovim) and the theme will be active.

---

## Manual loading (no `config` wrapper needed)

You can also call the Lua API directly if you prefer:

```lua
require("muted").load()
```

---

## Structure

```
muted.nvim/
├── colors/
│   └── muted.lua          ← Neovim entry point (:colorscheme muted)
└── lua/
    └── muted/
        ├── init.lua       ← Public API: require("muted").load()
        ├── palette.lua    ← All colour values in one place
        └── highlights.lua ← All highlight group definitions

To customise colours, edit `lua/muted/palette.lua`.  
To adjust or add highlight groups, edit `lua/muted/highlights.lua`.
