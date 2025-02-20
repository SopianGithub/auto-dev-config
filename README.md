# Automated Dev Environment Configurator

This project provides a shell script to automate the setup of a development environment. It configures IDEs, sets up dependencies, installs necessary tools, and configures Git hooks.

## Tech Stack

- **Shell Script**: Used for automating the setup process.

## Features

- **Configure IDEs**: Automatically installs and configures IDE extensions.
- **Setup Dependencies**: Installs necessary dependencies for the project.
- **Install Tools**: Installs essential development tools.
- **Configure Git Hooks**: Sets up Git hooks for better code management.

## Prerequisites

- **Bash**: Ensure you have Bash installed on your system.
- **VSCode**: If you want to configure VSCode extensions, ensure it is installed.

## Usage

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Make the script executable**:
   ```bash
   chmod +x setup.sh
   ```

3. **Run the script**:
   ```bash
   ./setup.sh
   ```

   This will execute the script and perform the following actions:
   - Configure IDEs by installing necessary extensions.
   - Setup project dependencies.
   - Install essential development tools.
   - Configure Git hooks.

## Customization

- **IDEs Configuration**: Modify the `configure_ides` function in `setup.sh` to add or remove IDE extensions.
- **Dependencies Setup**: Update the `setup_dependencies` function to include additional dependencies.
- **Tools Installation**: Add more tools in the `install_tools` function as needed.
- **Git Hooks Configuration**: Customize the `configure_git_hooks` function to add more Git hooks.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

## Contact
For any questions or issues, please contact Yayan Sopian at yayansopiant@gmail.com.