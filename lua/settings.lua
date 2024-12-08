vim.opt.autoindent = true                        -- Indent according to previous line.
vim.opt.expandtab = true                         -- Use spaces instead of tabs.
vim.opt.smarttab = true                          -- Make tab behavior smart
vim.opt.softtabstop = 4                          -- Tab key indents by 4 spaces.
vim.opt.shiftwidth = 4                           -- >> indents by 4 spaces.
vim.opt.shiftround = true                        -- >> indents to next multiple of 'shiftwidth'.
vim.opt.cino = {'(0', 'N-s', ':0', 'b1', 'g0'}   -- For better C indentation

vim.opt.backspace = {'indent', 'eol', 'start'}   -- Make backspace work as you would expect.
vim.opt.hidden = true                            -- Switch between buffers without having to save first.
vim.opt.laststatus = 2                           -- Always show statusline.
vim.opt.display = 'lastline'                     -- Show as much as possible of the last line.

vim.opt.showmode = true                          -- Show current mode in command-line.
vim.opt.showcmd = true                           -- Show already typed keys when more are expected.
vim.opt.wildmode = {'list:longest', 'full'}      -- Make complete mode work as you would expect
vim.opt.ignorecase = true                        -- Ignore case in search by default
vim.opt.smartcase = true                         -- Use case if search pattern has upper case letters

vim.opt.incsearch = true                         -- Highlight while searching with / or ?.
vim.opt.hlsearch = true                          -- Keep matches highlighted.

vim.opt.ttyfast = true                           -- Faster redrawing.
vim.opt.lazyredraw = true                        -- Only redraw when necessary.

vim.opt.splitbelow = true                        -- Open new windows below the current window.
vim.opt.splitright = true                        -- Open new windows right of the current window.

vim.opt.cursorline = true                        -- Find the current line quickly.
vim.opt.wrapscan = true                          -- Searches wrap around end-of-file.
vim.opt.report = 0                               -- Always report changed lines.
vim.opt.synmaxcol = 200                          -- Only highlight the first 200 columns.

vim.opt.number = true                            -- Show line numbers
vim.opt.termguicolors = true                     -- Show better colors
vim.opt.list = true                              -- Show non-printable characters.

vim.opt.listchars = {tab = '▸ ', extends = '❯', precedes = '❮', nbsp = '␣'}

vim.opt.background = 'light'
vim.cmd('colorscheme acme')

-- The fish shell is not very compatible to other shells and unexpectedly
-- breaks things that use 'shell'.
if vim.fn.getenv("SHELL") == 'fish' then
  vim.opt.shell = '/bin/bash'
end

