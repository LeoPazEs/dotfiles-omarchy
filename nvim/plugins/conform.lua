return {
  "stevearc/conform.nvim",
  dependencies = { "mason-org/mason.nvim" },
  opts = {
    formatters_by_ft = {
      ["python"] = { "isort", "black" },
      ["sh"] = { "shfmt" },
    },
    formatters = {
      isort = {
        prepend_args = { "--profile", "black" },
      },
      shfmt = {
        prepend_args = { "-i", "4", "-ci" },
      },
    },
  },
}
