local api = vim.api
local cmd = vim.cmd
local opt = vim.opt

function jump_to_last_edit_position()
  cmd([[
  if 0 < line("'\"") && line("'\"") <= line("$")
    execute "normal! g`\""
  endif
  ]])
end

api.nvim_create_autocmd("BufRead", {
  callback = jump_to_last_edit_position,
})

function remove_trailing_whitespace()
  cmd([[
  let winview = winsaveview()
  silent! %s/\s\+$//
  call winrestview(winview)
  unlet winview
  ]])
end

api.nvim_create_autocmd("BufWritePre", {
  callback = remove_trailing_whitespace,
})

-- function resize_splits(winwidth)
--   return function()
--     opt.winwidth = winwidth
--     cmd([[wincmd =]])
--   end
-- end
--
-- api.nvim_create_autocmd("WinEnter", {
--   callback = resize_splits(100),
-- })

-- api.nvim_create_autocmd("FileType", {
--   pattern = "i3config",
--   command = "set filetype=sh"
-- })
