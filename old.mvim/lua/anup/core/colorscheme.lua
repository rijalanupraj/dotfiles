-- vim.cmd("colorscheme nightfly")

local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
	print("Colors Scheme not found!")
	return
end
