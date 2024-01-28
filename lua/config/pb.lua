-- [[ PB settings ]]
vim.wo.relativenumber = true

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {"*"},
    callback = function()
      local save_cursor = vim.fn.getpos(".")
      pcall(function() vim.cmd [[%s/\s\+$//e]] end)
      vim.fn.setpos(".", save_cursor)
    end,
})

local Session = require("projections.session")
vim.api.nvim_create_user_command("StoreProjectSession", function()
    Session.store(vim.loop.cwd())
end, {})

vim.api.nvim_create_user_command("RestoreProjectSession", function()
    Session.restore(vim.loop.cwd())
end, {})

local Workspace = require("projections.workspace")
-- Add workspace command
vim.api.nvim_create_user_command("AddWorkspace", function()
    Workspace.add(vim.loop.cwd())
end, {})
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
