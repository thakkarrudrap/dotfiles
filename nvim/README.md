## Keybindings & Usage Guide

This Neovim configuration is designed to be minimal, fast, and keyboard-driven. 
The `<leader>` key is mapped to `Space`.

### Window Navigation & Splits
| Keystroke | Action |
| :--- | :--- |
| `<leader>\|` | Split window vertically (opens right) |
| `<leader>-` | Split window horizontally (opens below) |
| `<C-h>` | Move to left split |
| `<C-j>` | Move to bottom split |
| `<C-k>` | Move to top split |
| `<C-l>` | Move to right split |

### File Explorer (`nvim-tree`)
| Keystroke / Command | Action |
| :--- | :--- |
| `<leader>e` | Toggle file explorer |
| `Enter` | Open file or expand folder (while in tree) |
| `a` | Add new file/folder (append `/` to name for folder) |
| `d` | Delete file/folder |
| `r` | Rename file/folder |

### LSP & Code Navigation
*Note: These mappings are only active in buffers attached to a Language Server.*
| Keystroke / Command | Action |
| :--- | :--- |
| `K` | Hover: Show documentation for symbol under cursor |
| `gd` | Go to Definition |
| `:Mason` | Open Mason UI to manage LSPs, linters, and formatters |

### Auto-Completion (`nvim-cmp`)
*Note: These mappings are only active in **Insert Mode** while the completion menu is visible.*
| Keystroke | Action |
| :--- | :--- |
| `<C-j>` | Select next item in the completion list |
| `<C-k>` | Select previous item in the completion list |
| `<CR>` | Confirm selection |
| `<C-Space>` | Manually trigger completion menu |
| `<C-e>` | Abort and close completion menu |

### Built-in Terminal
| Keystroke / Command | Action |
| :--- | :--- |
| `:term` | Open terminal in current buffer/split |
| `<Esc>` | Exit terminal input mode (allows window navigation via `<C-h/j/k/l>`) |
| `i` / `a` | Enter terminal input mode |

### Plugin Management (`lazy.nvim`)
| Keystroke / Command | Action |
| :--- | :--- |
| `:Lazy` | Open plugin manager UI |
| `I` | Install missing plugins (from Lazy UI) |
| `S` | Sync/Update plugins and `lazy-lock.json` (from Lazy UI) |
| `x` | Uninstall highlighted plugin (from Lazy UI) |
