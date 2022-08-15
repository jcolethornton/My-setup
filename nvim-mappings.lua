-- MY MAPPINGS
-- Move current line / block with Alt-j/k ala vscode.
maps.v["<S-j>"] = { ":m '>+1<CR>gv-gv", desc = "Move line down" }
maps.v["<S-k>"] = { ":m '<-2<CR>gv-gv", desc = "Move line up" }
