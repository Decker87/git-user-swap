useGitSettings () {
    # Check for personal PWD
    if [[ "${PWD##/d/Users/Adam/programming/Decker87}" != "$PWD" ]]; then
        export GIT_AUTHOR_NAME="Adam Schirmacher"
        export GIT_AUTHOR_EMAIL="decker.adam@gmail.com"
        export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
        export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
        export GIT_SSH_COMMAND="ssh -i /d/Users/Adam/.ssh_personal/id_rsa"
        echo "Using Decker87..."
    elif [[ "${PWD##/d/Users/Adam/programming/Gusto}" != "$PWD" ]]; then
        export GIT_AUTHOR_NAME="Adam Schirmacher"
        export GIT_AUTHOR_EMAIL="adam.schirmacher@gusto.com"
        export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
        export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
        export GIT_SSH_COMMAND="ssh -i /d/Users/Adam/.ssh_gusto/id_rsa"
        echo "Using Gusto..."
    else
        unset GIT_AUTHOR_NAME GIT_AUTHOR_EMAIL GIT_COMMITTER_NAME GIT_COMMITTER_EMAIL SSH_OVERRIDE SSH_OVERRIDE_BEHAVIOR
        echo "Using NONE..."
    fi
}

gitUserSwitchPromptCommand () {
    useGitSettings 2>&1 1>/dev/null
}
