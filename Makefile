#!/usr/bin/make -f
##
# A simple wrapper for common developer commands.
# Most common commands: [run, clean]
##

site/index.html: themes/universal/theme.toml
	hugo --minify -d site

browse: site/index.html
	sensible-browser site/index.html

run: themes/universal/theme.toml
	hugo server --disableFastRender

themes/universal/theme.toml:
	git submodule update --init --recursive

.PHONY: browse run
