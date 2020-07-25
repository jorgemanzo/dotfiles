#!/bin/bash

printf "Installing extensions........\n"

while read extension; do
    flatpak run com.visualstudio.code --install-extension $extension
done < vscode_extensions
