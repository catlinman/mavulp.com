# mavulp.com #

Repository for the main Mavulp website as well as any project pages hosted under [mavulp.com](https://mavulp.com)

## Pages ##

The following sites are currently maintained in this repository.

- mavulp.com
- roflbox.mavulp.com

## Setup ##

Sites in this repository depend on [Sitegen](https://github.com/leafo/sitegen/) which is required to build the pages. Additionally [Less.js](http://lesscss.org/) and [CoffeeScript](http://coffeescript.org/) are used in development. Please make sure that these dependencies have been fulfilled before building.

To build any of the sites in this repository, navigate to the given page root site directory and run the following command.

    $ sitegen

If you want to make changes to any of the input files used for content then you might want to consider running the following command during development.

    $ sitegen watch

This will make sure that files are updated and the page is rebuild as needed. Changes to site.moon files are not tracked meaning you have to do a complete sitegen rebuild if the file is modified.

Sitegen will build the site in a new *www* directory in the given build root. This directory contains the deployment ready files. You'll have to take it from here on out. We recommend looking into [nginx](https://www.nginx.com/) for this purpose. The configuration files for the pages in this repository can be found in the *nginx* directory.

Notice: Additionally pages have a script for deployment in their root directory called *deploy.sh*. This file sets up required paths, builds the given site using sitegen, moves the file to the public server directory and removes any files leftover from sitegen, assuring that the work environment is kept clean. This file is mainly a helper. You should look into it before using it.

## License ##

This repository is released under the MIT license. For more information please refer to [LICENSE](https://github.com/catlinman/mavulp.com/blob/master/LICENSE)
