local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("html", {
	s("!", {
		t("<!DOCTYPE html>"),
		t({ "", '<html lang="en">' }),
		t({ "", "<head>" }),
		t({ "", '\t<link rel="stylesheet" href="styles.css">' }),
		t({ "", '\t<meta name="viewport" content="width=device-width,initial-scale=1.0">' }),
		t({ "", "\t<title>My Project</title>" }),
		t({ "", '\t<meta charset="utf-8">' }),
		t({ "", "</head>" }),
		t({ "", "<body>" }),
		t({ "", "\t", "</body>" }),
		t({ "", "</html>" }),
	}),
	s("ul", {
		t("<ul>"),
		t({ "", "\t<li></li>" }),
		t({ "", "</ul>" }),
	}),
})
