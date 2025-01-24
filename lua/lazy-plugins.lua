-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  -- Show git changes in sign column, some useful keybinds for visualizing and operating on hunks in current buffer
  require 'kickstart/plugins/gitsigns',

  -- Show command options in window when using leader key and other commands
  require 'kickstart/plugins/which-key',

  -- Fuzzy finder and file navigator. <Leader>sh to search help, <Leader>sk to search keybindings
  require 'kickstart/plugins/telescope',

  -- Setup LSPs on a per-language basis
  require 'kickstart/plugins/lspconfig',

  -- Auto-formatter. <Leader>f to manually format current document
  require 'kickstart/plugins/conform',

  -- Auto-completions. Ctrl Space to manually trigger; tab/shift tab to navigate suggestions, enter to confirm
  require 'kickstart/plugins/cmp',

  -- Theme. :colorscheme to manually change this
  require 'kickstart/plugins/kanagawa',

  -- Highlight and search for Todo comments and other specific keywords; use :TodoTelescope to view all Todos with Telescope
  require 'kickstart/plugins/todo-comments',

  -- Smarter surround text replacement, other miscellaneous nice-to-haves
  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  -- Plugin for calling lazygit within neovim
  require 'kickstart/plugins/lazygit',

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  -- { import = 'custom.plugins' },
  --
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
