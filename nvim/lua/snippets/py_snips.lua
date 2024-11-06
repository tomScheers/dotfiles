local ls = require("luasnip")
local snippet = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("python", {
	snippet("class", {
		text("class "),
		insert(1, "ClassName"),
		text(":"),
		text({ "", "\tdef __init__(self, " }),
		insert(2, "args"),
		text("):"),
		text({ "", "\t\tpass" }),
	}),
})
