return {
    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim",
            "nvim-telescope/telescope-file-browser.nvim",
        },
        keys = {
            {
                "<leader>ff",
                function() require("telescope.builtin").find_files() end,
                desc = "Find Files CWD",
            },
            {
                "<leader>fs",
                function() require("telescope.builtin").live_grep() end,
                desc = "Live grep",
            },
            {
                "<leader>fc",
                function() require("telescope.builtin").live_grep() end,
                desc = "Grep String",
            },
            {
                "<leader>bl",
                function() require("telescope.builtin").buffers() end,
                desc = "Buffers",
            },
            {
                "<leader>fb",
                "<cmd>Telescope file_browser<cr>",
                desc = "File Browser Project",
                { noremap = true },
            },
            {
                "<leader>fp",
                "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
                desc = "File Browser Buffer",
                { noremap = true },
            },
            {
                "<leader>u",
                "<cmd>Telescope undo<cr>",
                desc = "Undo Tree",
            }
        },
        opts = {
            defaults = {
                sorting_strategy = "ascending",
            },
            pickers = {
                find_files = {
                    hidden = true,
                    no_ignore = false,
                    no_ignore_parent = false,
                    find_command = {
                        "rg",
                        "--vimgrep",
                        "--files",
                        "--smart-case",
                        "--hidden",
                        "--glob=!.git",
                    },
                },
                live_grep = {
                    additional_args = { "--hidden" }
                },
                buffers = {
                    sort_mru = true,
                    select_current = true,
                    mappings = {
                        i = {
                            ["<c-x>"] = "delete_buffer",
                        }
                    }
                },
            },
            extensions = {
                file_browser = {
                    hidden = true,
                    grouped = true,
                    no_ignore = false,
                    respect_gitignore = false
                },
                undo = {},
            }
        },
    },
}
