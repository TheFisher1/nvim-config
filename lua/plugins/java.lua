return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').jdtls.setup({
        cmd = { 'jdtls' },
        root_dir = function(fname)
          return require('lspconfig').util.root_pattern('.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle')(fname) or vim.fn.getcwd()
        end,
        filetypes = { 'java' },
      })
    end,
  },
}
