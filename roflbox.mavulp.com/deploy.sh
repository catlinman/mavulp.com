#!/bin/bash

# Prepare directories, builds and deploy mavulp.com as well as clean up output files.
mkdir -p /srv/roflbox.mavulp.com/private/log && mkdir -p /srv/roflbox.mavulp.com/public || { printf "Failed to create required directory structure.\n" ; exit ; }
printf "Created required directory structure.\n"

printf "Running sitegen...\n"

if sitegen ; then
	rm -dRf /srv/roflbox.mavulp.com/public/* || { printf "Failed to clear the remote directory." ; exit ; }
	printf "Removed deployment directory contents if any were present.\n"

	cp -Rf www/* /srv/roflbox.mavulp.com/public || { printf "Failed to copy files to the public server directory.\n" ; exit; }
	printf "Copied built files to the public server directory.\n"

	rm -dRf www || { printf "Failed to remove local build files." ; exit ; }
	printf "Removed locally built files.\n"

	printf "\n\033[1mSite (roflbox.mavulp.com) successfully built and deployed.\033[0m\n"

else
	printf "\n\033[1mSite (roflbox.mavulp.com) experienced errors and was not set up.\033[0m\n"

fi
