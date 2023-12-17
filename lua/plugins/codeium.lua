return {
  -- codeium for copilot functionality
  'Exafunction/codeium.vim',
  config = function()
    vim.fn['CodeiumEnable']()
    vim.fn['CodeiumAuto']()
    vim.keymap.set('i', '<M-a>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<M-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<M-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<M-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    vim.keymap.set('i', '<M-\\>', function() return vim.fn['codeium#Complete']() end, { expr = true })
    vim.keymap.set('n', '<leader>co', function()
      local r
      if vim.g.codeium_enabled then
        r = vim.fn['CodeiumDisable']()
      else
        r = vim.fn['CodeiumEnable']()
      end
      vim.cmd('redraw!')
      return r
    end, { expr = true, desc = 'Toggle codeium on/off' })
    vim.keymap.set('n', '<leader>cm', function()
      local r
      if vim.g.codeium_manual then
        r = vim.fn['CodeiumAuto']()
      else
        r = vim.fn['CodeiumManual']()
      end
      vim.cmd('redraw!')
      return r
    end, { expr = true, desc = 'Toggle codeium auto/manual' })
  end
}
