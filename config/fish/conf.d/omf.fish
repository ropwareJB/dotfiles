# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

set -gx PIP_DOWNLOAD_CACHE "$HOME/.cache/pip"

source /opt/google-cloud-sdk/path.fish.inc

set PATH $HOME/codeql/codeql $PATH
set PATH $HOME/go/bin $PATH
