# My Dotfiles Repository

This repository contains configurations and scripts to customize the Linux shell environment.

## Files and Directories

- **bin/linux.sh**: A script to set up the environment, including:
  - Checking for Linux OS.
    - Creating a `.TRASH` directory.
      - Backing up and replacing `.nanorc`.
        - Adding custom configurations to `.bashrc`.

- **bin/cleanup.sh**: A script to reverse the changes made by `linux.sh`, including:
  - Removing the `.nanorc` file.
    - Removing the `.TRASH` directory.
      - Removing the custom `bashrc` configurations.

- **etc/nanorc**: Custom configurations for the Nano text editor.

- **etc/bashrc_custom**: Custom configurations for the Bash shell, including:
 - Environment variable modifications.
  - Useful aliases (e.g., `cdd`, `lsa`, `trash`).
    - Functions for compressing and extracting files.

- **Makefile**: Automates the setup and cleanup processes with two targets:
  - `linux`: Runs the `linux.sh` script to set up the environment.
    - `clean`: Runs the `cleanup.sh` script to revert changes.

## Usage

	1. Run `make linux` to set up the environment.
	2. Run `make clean` to clean up and revert the setup.







