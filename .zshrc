## LOGIN
# Start SSH agent
# Start SSH agent if not already running
# Start SSH agent if not already running
if [ -z "$SSH_AUTH_SOCK" ]; then
    if [ -r ~/.ssh-agent ]; then
        eval "$(<~/.ssh-agent)" >/dev/null
    fi

    if [ ! -S "$SSH_AUTH_SOCK" ]; then
        (umask 077; ssh-agent > ~/.ssh-agent)
        eval "$(<~/.ssh-agent)" >/dev/null
        ssh-add ~/.ssh/id_ed25519
    fi
fi


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
