#!/bin/sh

# PHP dependencies
composer global require squizlabs/php_codesniffer
composer global require friendsofphp/php-cs-fixer
composer global require phpstan/phpstan
composer global require phpmd/phpmd

# GO
curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v1.15.0

# Javascript
npm install -g eslint
npm install -g prettier eslint-plugin-prettier
npm install -g eslint-plugin-vue
npm install -g babel-eslint

# Clang
npm install -g clang-format
apt-get install clang-tools-8
update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
