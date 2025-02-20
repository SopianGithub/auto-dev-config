#!/bin/bash

# Log file
LOG_FILE="setup.log"

# Function to log messages
log() {
    echo "$(date +"%Y-%m-%d %T") : $1" | tee -a "$LOG_FILE"
}

# Function to configure IDEs
configure_ides() {
    log "Configuring IDEs..."
    if command -v code &> /dev/null; then
        code --install-extension ms-python.python
        code --install-extension esbenp.prettier-vscode
        log "VSCode extensions installed."
    else
        log "VSCode not found. Skipping IDE configuration."
    fi
}

# Function to setup dependencies
setup_dependencies() {
    log "Setting up dependencies..."
    if ! command -v node &> /dev/null; then
        log "Node.js not found, installing..."
        curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt-get install -y nodejs
        log "Node.js installed."
    else
        log "Node.js is already installed."
    fi
    npm install && log "NPM packages installed."
}

# Function to install tools
install_tools() {
    log "Installing tools..."
    if ! command -v git &> /dev/null; then
        log "Git not found, installing..."
        sudo apt-get install -y git && log "Git installed."
    else
        log "Git is already installed."
    fi
}

# Function to configure git hooks
configure_git_hooks() {
    log "Configuring Git hooks..."
    HOOKS_DIR=".git/hooks"
    if [ -d "$HOOKS_DIR" ]; then
        echo "#!/bin/sh" > "$HOOKS_DIR/pre-commit"
        echo "echo 'Running pre-commit checks...'" >> "$HOOKS_DIR/pre-commit"
        chmod +x "$HOOKS_DIR/pre-commit"
        log "Pre-commit hook configured."
    else
        log "Git hooks directory not found. Skipping Git hooks configuration."
    fi
}

# Main script execution
main() {
    log "Starting development environment setup..."
    configure_ides
    setup_dependencies
    install_tools
    configure_git_hooks
    log "Development environment setup complete!"
}

# Run the main function
main