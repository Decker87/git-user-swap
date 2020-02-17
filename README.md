# git-user-swap
A thing that can be sourced in your bash profile to swap git users based on directory.

Put something like this in your .bashrc:

```
# Magic to use correct SSH keys and git authors
source "/d/Users/Adam/programming/Decker87/git-user-swap/git-user-swap.sh"
PROMPT_COMMAND="gitUserSwitchPromptCommand"
```
