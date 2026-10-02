vim.pack.add { 'https://github.com/lervag/vimtex' }

vim.g.vimtex_view_method = 'zathura'

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'tex', 'latex' },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = 'en_gb'
  end,
})
