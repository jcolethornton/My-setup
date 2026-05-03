return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local configs = require("lspconfig.configs")

		if not configs.dbt then
			configs.dbt = {
				default_config = {
					cmd = { "dbt-language-server" },
					filetypes = { "sql", "yaml" },
					root_dir = lspconfig.util.root_pattern("dbt_project.yml"),
					single_file_support = false,
				},
			}
		end

		lspconfig.dbt.setup({})
	end,
}

