build:
	rm -f ./*.gem
	gem build jekyll-forcewebp.gemspec

push:
	gem push ./*.gem
