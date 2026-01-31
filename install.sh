# if any command returns an error, the script stops
set -e

# creates a directory where will be installed this program
mkdir -pv "$HOME/cpp_creator"
cp -rv ./* "$HOME/cpp_creator"

# Allows this file to be executed.
chmod +x "$HOME/cpp_creator/alcpp.sh"

mkdir -pv "$HOME/.local/bin"

# Create a symbolic link so 'alcpp' can be run as a global command
# -s: symbolic, -f: force overwrite if exists
ln -sfv "$HOME/cpp_creator/alcpp.sh" "$HOME/.local/bin/alcpp"

# Detect the active shell to determine the correct configuration file
case "$(basename "$SHELL")" in
    zsh)  
        RC="$HOME/.zshrc" 
        ;;
    bash) 
        RC="$HOME.bashrc" 
        ;;
    *)
        # Generic fallback for other shells (sh, dash, etc.)    
        RC=".profile" 
        ;;
esac

# Check if ".local/bin" is already in the config file.
# grep -q: quiet mode (returns exit status without printing output).
# !: logical NOT (proceeds if the string is NOT found).
if ! grep -qv "$HOME/.local/bin" "$RC"; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$RC"
fi

# Check if the installation was successful.
if [ -e "$HOME/.local/bin/alcpp" ]; then
    echo -e "Installation completed successfully. \nUse alcpp --help to view the available commands."
else
    echo "The installation failed."
    exit 1
fi

# Get the exact path to this script and store it in a variable.
#SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Go to home directory
cd "$HOME"

# Delete the installation directory.
rm -rfv $SCRIPT_DIR