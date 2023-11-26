# Configs
alias zshconfig="code ~/.zshrc"
alias zshrefresh="source ~/.zshrc"

# Helper functions
function gcd(){cd `git rev-parse --show-toplevel`}
function cpwd(){pwd | pbcopy}