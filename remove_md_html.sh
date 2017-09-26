# brew install pandoc
# go to each week-*
find ./schedule -iname "*.html" -type f -exec sh -c 'rm -f "${0}"' {} \;
find ./projects -iname "*.html" -type f -exec sh -c 'rm -f "${0}"' {} \;
