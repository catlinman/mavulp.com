
-- Require sitegen and moonscript modules.
os = require "os"
sitegen = require "sitegen"
tools = require "sitegen.tools"

-- Requirements: npm/less & npm/coffee-script
lessc = tools.system_command "lessc -x %s > %s", "css"
coffeescript = tools.system_command "coffee -c -s < %s > %s", "js"

sitegen.create =>
  -- Create directories to keep deployed files more organized.
  os.execute "rm -dRf www && mkdir -p www www/css www/js"

  -- Build stylesheets and scripts.
  build lessc, "less/style.less", "css/style.css"
  build coffeescript, "coffee/main.coffee", "js/main.js"

  -- The following pages are for basic access and management.
  add "pages/index.md", target: "index"
  add "pages/403.md"
  add "pages/404.md"
  add "pages/500.md"

  -- Custom pages added during development.
  add "pages/test.md"

  -- Define variables for pages and templates here.
  @version = "0.1"
  @title = "Mavulp"
  @url = "https://mavulp.com"
