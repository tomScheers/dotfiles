local ls = require("luasnip")
local snippet = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("lua", {
	-- These snippets are to help me built my own snippets faster
	snippet("snip", {
		insert(2, "snippet"),
		text('("'),
		insert(1, "snippet_name"),
		text('", {'),
		text({ "", "\t" }),
		text({ "", "})," }),
	}),
	-- nlt stands for new line text
	snippet("nlt", {
		insert(2, "text"),
		text('({ "", "'),
		insert(1, "foo = 0"),
		text('" }),'),
	}),
	snippet("add_snip", {
		insert(2, "ls"),
		text('.add_snippets("'),
		insert(1, "lua"),
		text('", {'),
		text({ "", "})" }),
	}),
	-- slt stands for single line text
	snippet("slt", {
		insert(2, "text"),
		text('("'),
		insert(1, "text"),
		text('"),'),
	}),
	snippet("insert", {
		insert(3, "insert"),
		text("("),
		insert(2, "1"),
		text(', "'),
		insert(1, "text"),
		text('")'),
	}),
})
