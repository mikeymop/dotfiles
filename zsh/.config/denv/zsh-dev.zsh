# Add Go to PATH
export GOPATH="$HOME/go"
export GOBIN="$HOME/go"
export PATH="$HOME/go/:$PATH"

# Kubectl Customization
alias k="kubectl"

function chn() {
  if [ -z $1 ]; then
    kubectl config current-context
  else
    kubectl config set-context --current --namespace=$1
  fi
}

function chk() {
  if [ -z $1]; then
    kubectl config get-contexts
  else
    kubectl config use-context $1
  fi
}

# Node
# fnm https://github.com/Schniz/fnm#shell-setup
eval "$(fnm env --use-on-cd --shell zsh)"
