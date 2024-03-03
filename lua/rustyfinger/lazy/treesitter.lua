return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "css",
                "elixir",
                "erlang",
                "html",
                "javascript",
                "jsdoc",
                "lua",
                "query",
                "scss",
                "sql",
                "typescript",
                "vimdoc",
                "zig",
            }
        })
    end
}
