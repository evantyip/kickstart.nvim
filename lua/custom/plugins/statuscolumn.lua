return {
  "luukvbaal/statuscol.nvim", config = function()
    vim.o.foldcolumn = "auto:1"
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
      relculright = true,
      segments = {
        { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
        {
          text = { builtin.lnumfunc, " " },
          condition = { true, builtin.not_empty },
          click = "v:lua.ScLa",
        },
        { text = { "%s" }, maxwidth = 2, colwidth = 1, click = "v:lua.ScSa" },
      },
    })
  end,
}
