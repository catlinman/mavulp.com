
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

  -- Add pages that should be built.
  add "pages/index.md", target: "index"

  -- Define variables for pages and templates here.
  @version = "0.1"
  @title = "Mavulp"
  @url = "https://mavulp.com"
