local lsp = require('lsp-zero').preset({
  manage_nvim_cmp = {
    set_sources = 'recommended',
    set_basic_mappings = true,
    set_extra_mappings = false,
    use_luasnip = true,
    set_format = true,
    documentation_window = true,
  }
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
  -- First Item Pre Select
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  },
  mapping  = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),  --enter
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),

  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  formatting = {
    -- changing the order of fields so the icon is the first
    fields = {'menu', 'abbr', 'kind'},

    -- here is where the change happens
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
        nvim_lua = 'Π',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
})
