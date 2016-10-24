
-- Require sitegen and moonscript modules.
os = require "os"
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

  -- The following pages are for basic access and management.
  add "pages/index.md", target: "index"
  add "pages/403.md", target: "403", template: "error"
  add "pages/404.md", target: "404", template: "error"
  add "pages/500.md", target: "500", template: "error"

  -- Custom pages added during development.
  add "pages/test.md", template: "page"

  -- Define variables for pages and templates here. Some of these should be
  -- overwritten using the templating functions within input files.
  @version = "0.6"

  -- Page title variable. Extends "Mavulp" on pages that are not index.
  @title = "Mavulp"

  -- Base URL used throughout the page for navigation as well as meta tagging.
  @url = "https://mavulp.com"

  -- Variables for pages and input files. Should be overwritten in most cases.
  @author = "mavulp" -- Should be lowercase.
  @description = "Mavulp is an international development team building websites and applications."
