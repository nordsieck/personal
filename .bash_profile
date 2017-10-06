export HOMEBREW_GITHUB_API_TOKEN=
export PATH=$PATH:/Users/nordsieck/go/bin
export PATH=$PATH:/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources

if [-f "$(brew --prefx bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
