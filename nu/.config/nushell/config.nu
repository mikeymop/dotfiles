# Env
$env.config.buffer_editor = "zed"
$env.config.show_banner = false
$env.config.use_kitty_protocol = true

# Aliases
alias k = kubectl

def kout [] {
  detect columns
}

def cwl [path: string] {
  code-insiders --enable-features=UseOzonePlatform --ozone-platform=wayland $path
}

# Quickly switch Kube contexts, or print the current context
def chk [ctx?: string] {
  match $ctx {
    null => (kubectl config get-contexts)
    _ => (kubectl config use-context $ctx)
  }
}

def chn [ns?: string] {
  match $ns {
    null => (kubectl config view --minify -o 'jsonpath={..namespace}')
    _ => (kubectl config set-context --current --namespace $ns)
  }
}

# For cargo support
source $"($nu.home-path)/.cargo/env.nu"

# Starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
