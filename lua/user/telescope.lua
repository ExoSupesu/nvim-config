-- Set up Telescope configurations
require'telescope'.setup {
  defaults = {
    prompt_prefix = '🔍 ',
    selection_caret = '❯ ',
    layout_config = {
      horizontal = { mirror = false },
      vertical = { mirror = false },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case',
    },
  },
}
