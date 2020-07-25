#!/bin/bash

printf "Installing extensions........\n"

while read extension; do
    code --install-extension $extension
done < vscode_extensions
