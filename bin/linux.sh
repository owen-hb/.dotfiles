#!/bin/bash
# Shebang to specify this script is to be run with Bash

# Check if the operating system is Linux
if [ "$(uname)" != "Linux" ]; then
    # Log an error message and exit if not Linux
        echo "Error: This script is designed for Linux systems only." >> linuxsetup.log
	    exit
	    fi

	    # Create the .TRASH directory in the home directory if it doesn't exist
	    if [ ! -d "$HOME/.TRASH" ]; then
	        mkdir "$HOME/.TRASH"
		fi

		# Backup the existing .nanorc file if it exists
		if [ -f "$HOME/.nanorc" ]; then
		    mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
		        echo "The current .nanorc file was renamed to .bup_nanorc" >> linuxsetup.log
			fi

			# Overwrite the contents of etc/nanorc to a new .nanorc file in the home directory
			cat ~/.dotfiles/etc/nanorc > "$HOME/.nanorc"

			# Add a line to source the custom bashrc file in the .bashrc file
			if ! grep -q "source ~/.dotfiles/etc/bashrc_custom" "$HOME/.bashrc"; then
			    echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
			    fi
			    



































    
























