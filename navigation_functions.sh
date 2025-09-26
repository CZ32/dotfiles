cdp() {
    echo "Foo"
    if [ -z "$PROJECTS_HOME" ]; then
        echo "Error: PROJECT_HOME environment variable is not set"
        echo "Please set PROJECT_HOME in your shell configuration, e.g.:"
        echo "export PROJECT_HOME=\"/path/to/your/projects\""
        return 1
    fi
   
    local project_directory="$PROJECTS_HOME"

    if [ -z "$1" ]; then
        echo "Please provide a project name to navigate to in project directory:"
        echo "$project_directory"
        return 1
    fi

    local project_name="$1"

    cd "$project_directory/$project_name"
}


cdconfig() {
    cd ~/.dotfiles
}