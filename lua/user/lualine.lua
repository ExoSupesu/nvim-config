 require('lualine').setup {
      options = {
        icons_enabled = true,
         component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
          {'filename', path = 1},
          {'diagnostics', sources = {'nvim_lsp'}}
        },
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = {'fugitive', 'nvim-tree'},
    }

