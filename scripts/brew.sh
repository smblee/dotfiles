#!/usr/bin/env bash

set -e

intel_brew="/usr/local/bin/brew"
m1_brew="/opt/homebrew/bin/brew"

install_or_update_brew() {
    if [ -f "$intel_brew" ]; then
        echo "Intel Homebrew not found. Installing..."
        arch --x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    else
        echo "Intel Homebrew already exists. Updating..."
        
    fi

    if [ -f "$m1_brew" ]; then
        echo "M1 Homebrew not found. Installing..."
        arch --arm64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
    else
        echo "M1 Homebrew already exists. Updating..."
    fi  
}

install_or_update_brew
