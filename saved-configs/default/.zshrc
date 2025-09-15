source "$HOME/.config/zsh/01_history_settings.sh"
source "$HOME/.config/zsh/02_required_exports.sh"
source "$HOME/.config/zsh/03_required_aliases.sh"
source "$HOME/.config/zsh/04_required_functions.sh"
source "$HOME/.config/zsh/05_required_evals.sh"
source "$HOME/.config/zsh/06_zsh_autosuggestions.sh"
source "$HOME/.config/zsh/07_zsh_highlighting.sh"

# This will avoid showing an error 
# if `$HOME/.config/zsh/private-workflow/` is empty.
setopt nullglob

# Source all sh files in `private-workflow`
for file in "$HOME/.config/zsh/private-workflow/"*.sh; do
  source "$file"
done
