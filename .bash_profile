export HOMEBREW_GITHUB_API_TOKEN=
export PATH=$PATH:/Users/nordsieck/go/bin
export PATH=$PATH:/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
