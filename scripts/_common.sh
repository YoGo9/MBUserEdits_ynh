#!/bin/bash

# Ensure a recent Node.js is available (>= 18).
# YunoHost's apt may have an older version — use NodeSource if needed.
install_nodejs() {
    local required=18
    local current=0

    if command -v node &>/dev/null; then
        current=$(node -e "process.exit(parseInt(process.version.slice(1)))" 2>/dev/null; echo $?)
        current=$(node --version 2>/dev/null | sed 's/v//' | cut -d. -f1)
    fi

    if [[ "$current" -lt "$required" ]] 2>/dev/null; then
        ynh_print_info "Installing Node.js 20 via NodeSource..."
        curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
        apt-get install -y nodejs
    else
        ynh_print_info "Node.js $current detected — OK"
    fi
}

# Install server-side npm dependencies (no devDependencies, no build tools)
install_node_deps() {
    pushd "$install_dir"
        npm ci --omit=dev --prefer-offline 2>&1 | tail -5
    popd
}
