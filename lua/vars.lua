--[[ vars.lua ]]

local g = vim.g
g.t_co = 256 -- Enable support for 256 colors
g.background = "dark" -- Set the background

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
