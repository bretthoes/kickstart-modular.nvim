-- 1) globally enable conceal
vim.o.conceallevel = 2
vim.o.concealcursor = 'n'

-- 2) our mappings
local patterns = {
  ['<='] = '≤',
  ['>='] = '≥',
  ['!='] = '≠',
  ['->'] = '→',
  ['<-'] = '←',
  ['=>'] = '⇒',
  ['<=>'] = '⇔',
}

-- 3) apply on every buffer open
local group = vim.api.nvim_create_augroup('GlobalConceal', { clear = true })
vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufWinEnter' }, {
  group = group,
  callback = function()
    for pat, char in pairs(patterns) do
      vim.fn.matchadd('Conceal', vim.pesc(pat), 10, -1, { conceal = char })
    end
  end,
})
