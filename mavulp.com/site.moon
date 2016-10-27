
-- Require sitegen and moonscript modules.
require "os"
require "lfs"

sitegen = require "sitegen"
tools = require "sitegen.tools"

-- Requirements: npm/less & npm/coffee-script
lessc = tools.system_command "lessc -x %s > %s", "css"
coffeescript = tools.system_command "coffee -c -s < %s > %s", "js"

sitegen.create =>
	-- Create directories to keep deployed files more organized.
	os.execute "rm -dRf www && mkdir -p www www/css www/js www/img"
	os.execute "cp -Rf img/* www/img"

	-- Build stylesheets and scripts.
	build lessc, "less/style.less", "css/style.css"
	build coffeescript, "coffee/main.coffee", "js/main.js"
	build coffeescript, "coffee/smoothscroll.coffee", "js/smoothscroll.js"

	-- Core pages. Should not be changed by content editors.
	add "pages/core/index.md", target: "index"
	add "pages/core/403.md", target: "403", template: "error"
	add "pages/core/404.md", target: "404", template: "error"
	add "pages/core/500.md", target: "500", template: "error"

	-- Custom pages added during development.
	@pages = {}
	for page in lfs.dir lfs.currentdir() .. "/pages/"
		if string.find page, ".md"
			table.insert @pages, string.sub(page, 0, -4)
			add "pages/" ..page, template: "page"

	-- Define variables for pages and templates here. Some of these should be
	-- overwritten using the template functions within input files.
	@version = "0.98"

	-- Get the current year. Used in the footer of all pages.
	@year = os.date("%Y")

	-- Base URL used throughout the page for navigation as well as meta tagging.
	@url = "https://mavulp.com"
	@email = "contact@mavulp.com"

	-- Variables for pages and input files. Should be overwritten in most cases.
	@title -- Page title variable. Extends "Mavulp" on pages that are not index.
	@description = "Mavulp is an international development team building websites and applications."
	@website = "https://mavulp.com" -- Author's website.
