-- indenting options
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.relativenumber = true

vim.g.editorconfig = true

require('editorconfig').properties.foo = function(bufnr, val, opts)
  if val == 'false' then
    error('we are cooking', 0)
  end
  if opts.charset and opts.charset ~= 'utf-8' then
    error('foo can only be set when charset is utf-8', 0)
  end
  vim.b[bufnr].foo = val
end
