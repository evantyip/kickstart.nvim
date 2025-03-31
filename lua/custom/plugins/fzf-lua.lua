return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({
        grep = {
          rg_glob = true,
          rg_opts = "--hidden --column --line-number --no-heading --color=always --smart-case",
        }
      })
    end
}
