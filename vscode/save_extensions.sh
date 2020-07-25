#!/bin/bash

printf "Saving installed extensions into vscode_extensions............\n"

code --list-extensions > vscode_extensions
