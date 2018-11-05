# npm install -g markdown-link-check

find . -name \*.md -exec markdown-link-check --config config.json {} \;
