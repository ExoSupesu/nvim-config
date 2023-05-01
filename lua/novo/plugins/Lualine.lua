local navic = require("nvim-navic")
require("lualine").setup({
  options  =  {
     theme = 'onedark',
     icons_enabled = true,
     disabled_filetypes  = {
	statusline={'neo-tree'}
     }
  },
  winbar = {
    lualine_c = {
        {
          function()
              return navic.get_location()
          end,
          cond = function()
              return navic.is_available()
          end
        },
    }
}

})
