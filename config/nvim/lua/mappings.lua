--[[

Ref: https://github.com/dkarter/dotfiles/blob/da3a7200fd3ea31e1ec530508d9e6866726bf917/config/nvim/lua/core/mappings.lua

╭───────┬──────────────┬───────────────────────────────────────────┬─────────╮
│  Str  │  Help page   │  Affected modes                           │  VimL   │
├───────┼──────────────┼───────────────────────────────────────────┼─────────┤
│  ''   │  mapmode-nvo │  Normal, Visual, Select, Operator-pending │  :map   │
│  'n'  │  mapmode-n   │  Normal                                   │  :nmap  │
│  'v'  │  mapmode-v   │  Visual and Select                        │  :vmap  │
│  's'  │  mapmode-s   │  Select                                   │  :smap  │
│  'x'  │  mapmode-x   │  Visual                                   │  :xmap  │
│  'o'  │  mapmode-o   │  Operator-pending                         │  :omap  │
│  '!'  │  mapmode-ic  │  Insert and Command-line                  │  :map!  │
│  'i'  │  mapmode-i   │  Insert                                   │  :imap  │
│  'l'  │  mapmode-l   │  Insert, Command-line, Lang-Arg           │  :lmap  │
│  'c'  │  mapmode-c   │  Command-line                             │  :cmap  │
│  't'  │  mapmode-t   │  Terminal                                 │  :tmap  │
╰───────┴──────────────┴───────────────────────────────────────────┴─────────╯

TODO: In the [Ref] there are a lot of useful helper functions for using
mappings. Maybe it's worth it to take a look at them and re-use, using this
file as the repository and requiring them on init.lua before the plugin load.

NOTE: by default, vim.keymap.set is 'noremap'. Requires { remap = true } if
recursive is expected.

--]]
