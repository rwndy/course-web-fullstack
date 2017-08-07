# brew install pandoc
# go to each week-*
find ./schedule -iname "*.md" -type f -exec sh -c 'pandoc "${0}" -o "${0%.md}.html"' {} \;
