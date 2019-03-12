#!/bin/sh

#PHP dependencies
composer global require squizlabs/php_codesniffer
composer global require friendsofphp/php-cs-fixer
composer global require phpmd/phpmd

#GO
curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.15.0
