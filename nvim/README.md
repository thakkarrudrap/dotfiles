# Minimal Neovim Configuration

## Prerequisites
Ensure the following system dependencies are installed before launching Neovim to prevent plugin initialization errors:

* **Neovim (v0.9.0+)**: The core editor.
* **Git**: Required by the `lazy.nvim` package manager to clone and update plugins.
* **C Compiler (`gcc`, `clang`, or `build-essential`)**: Strictly required by `nvim-treesitter` to compile local language parsing trees.
* **Node.js & npm**: Required by `mason.nvim` to install and execute most Language Server Protocols (LSPs).
* **Ripgrep (`rg`)**: Required by `telescope.nvim` to power the Live Grep text search functionality.
* **Nerd Font** *(Optional)*: Recommended to ensure file and UI icons render correctly via `nvim-web-devicons`.

---

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

### Fuzzy Finder (`telescope.nvim`)
*Note: The Live Grep functionality requires `ripgrep` to be installed on your system. When the search window is open (Insert Mode), custom navigation keys are active.*
| Keystroke | Action |
| :--- | :--- |
| `<leader>ff` | Find files within the current working directory |
| `<leader>fg` | Live grep (search for text content across all files) |
| `<leader>fb` | Find and switch between currently open buffers |
| `<C-j>` | Select next item in the search results |
| `<C-k>` | Select previous item in the search results |
| `<CR>` | Open the selected file |
| `<Esc>` / `<C-c>` | Close the search window |

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

### UI & Feedback
* **Statusline (`lualine.nvim`):** A global statusline is active at the bottom of the editor. It automatically displays the current editor mode, active Git branch, file status (read-only/modified), LSP diagnostics (errors/warnings), and exact cursor coordinates.

### Plugin Management (`lazy.nvim`)
| Keystroke / Command | Action |
| :--- | :--- |
| `:Lazy` | Open plugin manager UI |
| `I` | Install missing plugins (from Lazy UI) |
| `S` | Sync/Update plugins and `lazy-lock.json` (from Lazy UI) |
| `x` | Uninstall highlighted plugin (from Lazy UI) |
