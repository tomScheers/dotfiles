local ls = require("luasnip")
local snippet = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("css", {
	snippet("sr", {
		text("."),
		insert(1, "sr-only"),
		text(" {"),
		text({ "", "\tpositition: absolute;" }),
		text({ "", "\twidth: 1px;" }),
		text({ "", "\theight: 1px;" }),
		text({ "", "\tpadding: 0;" }),
		text({ "", "\tmargin: -1px;" }),
		text({ "", "\toverflow: hidden;" }),
		text({ "", "\tclip: rect(0, 0, 0, 0);" }),
		text({ "", "\twhite-space: nowrap;" }),
		text({ "", "\tborder-width: 0;" }),
		text({ "", "}" }),
	}),
})
