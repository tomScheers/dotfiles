local ls = require("luasnip")
local snippet = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("c", {
	snippet("arrLength", {
		text("sizeof("),
		insert(1, "arr"),
		text(") / sizeof("),
		rep(1),
		text("[0]);"),
	}),
	snippet(",", {
		text({"#include <stdio.h>", "", ""});
		text({"int main() {", ""});
		text({"\treturn 0;", ""});
		text("}");
	})
})
