
-- [[ PB settings ]]
vim.wo.relativenumber = true



-- https://stackoverflow.com/questions/77466697
-- vim.api.nvim_create_augroup("AutoFormat", {})
-- vim.api.nvim_create_autocmd(
--     "BufWritePost",
--     {
--         pattern = "*.py",
--         group = "AutoFormat",
--         callback = function()
--             vim.cmd("silent !black --quiet %")
--             vim.cmd("edit")
--         end,
--     }
-- )
-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--     pattern = {"*"},
--     callback = function(ev)
--         save_cursor = vim.fn.getpos(".")
--         vim.cmd([[%s/\s\+$//e]])
--         vim.fn.setpos(".", save_cursor)
--     end,
-- })

-- done.
