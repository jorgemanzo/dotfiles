#!/bin/bash

printf "Saving installed extensions into vscode_extensions............\n"

flatpak run com.visualstudio.code --list-extensions > vscode_extensions
