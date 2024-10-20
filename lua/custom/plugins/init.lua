-- You can add your own plugins here or in other files in this directory!

--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    { 'nvim-treesitter/playground' },
    { 'ThePrimeagen/harpoon' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    {
      'christoomey/vim-tmux-navigator',
      cmd = {
        'TmuxNavigateLeft',
        'TmuxNavigateDown',
        'TmuxNavigateUp',
        'TmuxNavigateRight',
        'TmuxNavigatePrevious',
      },
      keys = {
        { '<c-j>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
        { '<c-k>', '<cmd><C-U>TmuxNavigateRight<cr>' },
        { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
      },
    },
    {
      'kdheepak/lazygit.nvim',
      cmd = {
        'LazyGit',
        'LazyGitConfig',
        'LazyGitCurrentFile',
        'LazyGitFilter',
        'LazyGitFilterCurrentFile',
      },
      -- optional for floating window border decoration
      dependencies = {
        'nvim-lua/plenary.nvim',
      },
    },
    {
      'catppuccin/nvim',
      as = 'catppuccin',
      init = function()
        -- Load the colorscheme here.
        -- Like many other themes, this one has different styles, and you could load
        vim.cmd.colorscheme 'catppuccin-mocha'

        -- You can configure highlights by doing something like:
        vim.cmd.hi 'Comment gui=none'
      end,
    },
    { 'github/copilot.vim', branch = 'release' },
  },
}
