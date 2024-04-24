-- press <Tab> to expand or jump in a snippet.
vim.keymap.set({"i"}, "<Tab>", function() ls.expand() end, {silent = true})

vim.keymap.set({"i", "s"}, "<Tab>", function() ls.jump( 1) end, {silent = true})
-- -1 for jumping backwards.
vim.keymap.set({"i", "s"}, "<S-Tab>", function() ls.jump(-1) end, {silent = true})

-- For changing choices in choiceNodes (not strictly necessary for a basic
-- setup).
vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
