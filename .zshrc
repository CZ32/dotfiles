## LOGIN
# Start SSH agent
eval "$(ssh-agent -s)"

## SCRIPTS
source ./.oh-my-zsh-config.sh
source ./.custom_commands.sh

## PATHS
export PROJECTS_HOME=${HOME}/projects

# There are many other ways to customize your shell:
# - Set variables
# - Create aliases
# - Customize the prompt
# - Write handy functions
# - Change ZSH options
# - Adjust history functionality
# - Improve line editor (completions, menu, navigation, etc.)
# - Add locations to $PATH variable (or $path array)
# - Use ZSH plugins
# - Change key bindings
# - Add "zstyles" for completions & more
