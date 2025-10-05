return {
  {
    'neovim/nvim-lspconfig',
    rocks = false,
    config = function()
      require('lspconfig').yamlls.setup({
        settings = {
          yaml = {
            customTags = {
              '!Ref',
              '!GetAtt',
              '!Join',
              '!Sub',
              '!ImportValue',
              '!Select',
              '!Split',
              '!Base64',
              '!GetAZs',
              '!Equals',
              '!If',
              '!Not',
              '!And',
              '!Or',
              '!FindInMap',
            },
            schemas = {
              ['https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json'] =
              '*.{yml,yaml}',
            },
          },
        },
      })
    end,
  },
}
