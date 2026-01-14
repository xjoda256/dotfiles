local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

-- Load plugins
require('pckr').add{
    'catppuccin/nvim';
    'folke/snacks.nvim';
    'folke/tokyonight.nvim';
    'hrsh7th/nvim-cmp';
    'steelsojka/pears.nvim';
    'deviantfero/wpgtk.vim';
    -- 'foo1/bar1.nvim';
  -- 'foo2/bar2.nvim';
}

-- VIm commands
vim.cmd [[set number]]
vim.cmd [[set showmatch]]
vim.cmd [[set cursorline]]

-- Set the number of spaces a tab represents
vim.opt.tabstop = 4

-- Set the number of spaces for each indentation (used by >>, <<, and auto-indent)
vim.opt.shiftwidth = 4

-- When a tab is inserted, expand it to spaces
vim.opt.expandtab = true

-- Set the number of spaces for a soft tab (used for editing; often same as shiftwidth)
vim.opt.softtabstop = 4

-- Enable smart indentation (automatic indentation of new lines)
vim.opt.smartindent = true

-- Colorscheme last to make sure all plugins are loaded
vim.cmd [[colorscheme catppuccin-macchiato]]

