-- autopairs
-- https://github.com/windwp/nvim-autopairs
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup {
      check_ts = true,
    }
    local npairs = require 'nvim-autopairs'
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    local cmp = require 'cmp'
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

    local Rule = require 'nvim-autopairs.rule'
    npairs.add_rule(Rule('/*', '*/', { 'javascript', 'typescript', 'typescriptreact', 'javascriptreact' }))
  end,
}
