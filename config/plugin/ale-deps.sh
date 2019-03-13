#!/bin/sh

#PHP dependencies
composer global require squizlabs/php_codesniffer
composer global require friendsofphp/php-cs-fixer
<<<<<<< HEAD
composer global require phpstan/phpstan
composer global require phpmd/phpmd
=======
composer global require phpmd/phpmd

#GO
curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.15.0
>>>>>>> 755b7f6ce0040ecaf5ca1bef1f00ff91a79c9e95
