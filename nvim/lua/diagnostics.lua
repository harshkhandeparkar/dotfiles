vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = true,
    update_in_insert = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '',
        }
    },
    float = {
        header = "Diagnostics",
        source = "always",
        border = "solid"
    }
})
