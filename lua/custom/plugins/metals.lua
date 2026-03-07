return {
  {
    'scalameta/nvim-metals',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    ft = { 'scala', 'sbt', 'java' },
    config = function()
      local metals = require 'metals'
      local metals_config = metals.bare_config()

      metals_config.settings = {
        showImplicitArguments = true,
        showInferredType = true,
      }

      -- Auto-start Metals when entering Scala buffers
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'scala', 'sbt', 'java' },
        callback = function()
          metals.initialize_or_attach(metals_config)
        end,
      })
    end,
  },
}
