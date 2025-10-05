return {
  {
    'someone-stole-my-name/yaml-companion.nvim',
    dependencies = {
      { 'neovim/nvim-lspconfig' },
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim' },
    },
    config = function()
      require('telescope').load_extension('yaml_schema')
      local cfg = require('yaml-companion').setup({
        schemas = {
          {
            name = 'GitHub Actions',
            uri = 'https://json.schemastore.org/github-workflow.json',
          },
          {
            name = 'CloudFormation',
            uri = 'https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json',
          },
        },
        lspconfig = {
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
                'Fn::FindInMap',
                'Fn::GetAtt',
                'Fn::Join',
                'Fn::Sub',
                'Fn::Select',
                'Fn::Split',
                'Fn::Base64',
                'Fn::GetAZs',
                'Fn::ImportValue',
                'Fn::Ref',
              },
            },
          },
        },
      })
      require('lspconfig')['yamlls'].setup(cfg)
    end,
  },
}
