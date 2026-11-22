local config_path = os.getenv("HOME") .. "/.config/nvim/"
local config_file = config_path .. "init.lua"

local M = {
    ---Returns the mode to split viewport on depending on its ratio
    ---@return string mode Returns "vertical" if the viewport is wider than taller and "horizontal" otherwise
    get_viewport_mode = function()
        local width = vim.fn.winwidth(0)
        local height = 2 * vim.fn.winheight(0)
        local mode = ""
        if width > height then
            mode = "vertical"
        else
            mode = "horizontal"
        end

        return mode
    end,

    ---Execs a given command in a split terminal
    ---@param self table
    ---@param opts table
    compile = function(self, opts)
        local mode = self.get_viewport_mode()
        vim.cmd(mode .. " term " .. opts.args)
    end,

    ---Aling equals on selected lines
    ---@param opts table
    align = function(opts)
        if opts.range > 0 then
            local range = opts.line1 .. "," .. opts.line2
            local command = " !column -t -s= -o="
            vim.cmd(range .. command)
        end
    end,

    ---Opens init.lua with nvim directory as pwd
    open_config = function()
        vim.cmd("cd " .. config_path)
        vim.cmd("e " .. config_file)
    end,

    ---Splits current buffer dynamically depending on mode
    split = function(self)
        local mode = self.get_viewport_mode()
        if mode == "vertical" then
            vim.cmd("vsplit")
        else
            vim.cmd("split")
        end
    end,

    ---Opens a split terminal dynamically depending on mode
    terminal = function(self)
        local mode = self.get_viewport_mode()
        vim.cmd(mode .. " term")
        vim.cmd("startinsert")
    end,
}

return M
