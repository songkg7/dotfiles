-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = true
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/kgsong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/kgsong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/kgsong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/kgsong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/kgsong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "require('plugins.comment')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "require('plugins.bufferline')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol/after/plugin/cmp_nvim_lsp_document_symbol.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help/after/plugin/cmp_nvim_lsp_signature_help.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips/after/plugin/cmp_nvim_ultisnips.lua" },
    config = { "\27LJ\2\nD\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\23cmp_nvim_ultisnips\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  ["code_runner.nvim"] = {
    config = { "require('plugins.code-runner')" },
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "require('plugins.dashboard-nvim')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["fzf-lua"] = {
    config = { "require('plugins.fzf-lua')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    config = { "require('plugins.gitsigns')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["im-select.nvim"] = {
    config = { "\27LJ\2\n\127\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25disable_auto_restore\3\0\22default_im_select\28com.apple.keylayout.ABC\nsetup\14im_select\frequire\0" },
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/im-select.nvim",
    url = "https://github.com/keaising/im-select.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "require('plugins.indent-blankline')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    config = { "require('plugins.lazygit')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require('plugins.lspsaga')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('plugins.lualine')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "require('plugins.mason')" },
    load_after = {
      ["mason.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "require('plugins.null-ls')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "require('plugins.nvim-autopairs')" },
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp", "cmp-nvim-lsp-signature-help", "cmp-cmdline", "cmp-nvim-lsp-document-symbol", "cmp-nvim-lua", "cmp-under-comparator", "cmp-nvim-ultisnips", "cmp-path", "cmp-buffer" },
    config = { "require('plugins.nvim-cmp')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "require('plugins.nvim-lspconfig')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "require('plugins.nvim-tree')" },
    keys = { { "", "<leader>e" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require('plugins.treesitter')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sidebar.nvim"] = {
    config = { "require('plugins.sidebar-nvim')" },
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/sidebar-nvim/sidebar.nvim"
  },
  ["skeleton.nvim"] = {
    config = { "require('plugins.skeleton')" },
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/skeleton.nvim",
    url = "https://github.com/xvzc/skeleton.nvim"
  },
  tabular = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/tabular/after/plugin/TabularMaps.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["toggleterm.nvim"] = {
    config = { "require('plugins.toggleterm')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ultisnips = {
    after_files = { "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    config = { "require('plugins.ultisnips')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-easymotion"] = {
    config = { "require('plugins.easymotion')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-js"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-js",
    url = "https://github.com/yuezk/vim-js"
  },
  ["vim-jsx-pretty"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-jsx-pretty",
    url = "https://github.com/maxmellon/vim-jsx-pretty"
  },
  ["vim-lastplace"] = {
    config = { "require('plugins.vim-lastplace')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-lastplace",
    url = "https://github.com/farmergreg/vim-lastplace"
  },
  ["vim-surround"] = {
    config = { "require('plugins.vim-surround')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-terraform"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["yajs.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/yajs.vim",
    url = "https://github.com/othree/yajs.vim"
  },
  ["yats.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/kgsong/.local/share/nvim/site/pack/packer/opt/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: skeleton.nvim
time([[Config for skeleton.nvim]], true)
require('plugins.skeleton')
time([[Config for skeleton.nvim]], false)
-- Config for: code_runner.nvim
time([[Config for code_runner.nvim]], true)
require('plugins.code-runner')
time([[Config for code_runner.nvim]], false)
-- Config for: sidebar.nvim
time([[Config for sidebar.nvim]], true)
require('plugins.sidebar-nvim')
time([[Config for sidebar.nvim]], false)
-- Config for: im-select.nvim
time([[Config for im-select.nvim]], true)
try_loadstring("\27LJ\2\n\127\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25disable_auto_restore\3\0\22default_im_select\28com.apple.keylayout.ABC\nsetup\14im_select\frequire\0", "config", "im-select.nvim")
time([[Config for im-select.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require('plugins.nvim-autopairs')
time([[Config for nvim-autopairs]], false)
-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <leader>e <cmd>lua require("packer.load")({'nvim-tree.lua'}, { keys = "<lt>leader>e", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType jsx ++once lua require("packer.load")({'vim-jsx-pretty'}, { ft = "jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType js ++once lua require("packer.load")({'yats.vim', 'yajs.vim', 'vim-js'}, { ft = "js" }, _G.packer_plugins)]]
vim.cmd [[au FileType tf ++once lua require("packer.load")({'vim-terraform'}, { ft = "tf" }, _G.packer_plugins)]]
vim.cmd [[au FileType terraform ++once lua require("packer.load")({'vim-terraform'}, { ft = "terraform" }, _G.packer_plugins)]]
vim.cmd [[au FileType md ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "md" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'gitsigns.nvim', 'nvim-cmp', 'fzf-lua', 'Comment.nvim', 'vim-surround', 'vim-fugitive', 'nvim-treesitter', 'lualine.nvim', 'vim-easymotion', 'ultisnips', 'lazygit.nvim', 'indent-blankline.nvim', 'toggleterm.nvim', 'tabular'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'dashboard-nvim', 'bufferline.nvim', 'nvim-lspconfig', 'mason.nvim', 'vim-lastplace', 'null-ls.nvim', 'lspsaga.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /Users/kgsong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], true)
vim.cmd [[source /Users/kgsong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]]
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], false)
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-js/ftdetect/javascript.vim]], true)
vim.cmd [[source /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-js/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-js/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], true)
vim.cmd [[source /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]]
time([[Sourcing ftdetect script at: /Users/kgsong/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
