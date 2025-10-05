return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "terraform", "json", "yaml", "java", "python" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
