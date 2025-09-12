# This is where PyPi (Python) packages installed with 
# `uv tool install name-of-package` will be saved.
export PATH="$HOME/.local/bin:$PATH"

# This is where npm (JavaScript) packages installed with 
# `bun install -g name-of-package` will be saved.
export PATH="$HOME/.bun/bin:$PATH"

# This is where cargo (Rust) packages installed with either,
# `cargo-binstall name-of-package` or `cargo install` will be saved to.
export PATH="$HOME/.cargo/bin:$PATH"

# Disables the default message that direnv displays when 
# you enter a directory that you have given it permission to enter
export DIRENV_LOG_FORMAT=""
