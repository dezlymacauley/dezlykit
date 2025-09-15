# SECTION: Sytem Management

upkeep_dezlykit() {
    cd $HOME/.config/dezlykit/
    ./upkeep_dezlykit.sh
}

#______________________________________________________________________________
# SECTION: $PATH Management

# Display the contents ot the $PATH variable in a list format
list_path_variable_contents() {
  echo "$PATH" | tr ':' '\n'
}

#______________________________________________________________________________
# SECTION: Zsh Management

shell_history_clear() {
    cat /dev/null > $HISTFILE && \
    rm -f $HISTFILE && \
    touch $HISTFILE && \
    exec zsh
}

shell_history_disable() {
    unset HISTFILE
    export HISTSIZE=0
    export HISTFILESIZE=0
    set +o history
}

shell_reload() {
    exec zsh
}

#______________________________________________________________________________
# SECTION: Python

# To use this:
# `py main.py`

# The flag `--no-error-summary` will ensure that mypy only displays a message
# to the terminal when there is an error.
py() {
    mypy --no-error-summary "$1" && python "$1"
}

#______________________________________________________________________________
# SECTION: Docker Management

docker_status() {
    if systemctl is-active --quiet docker.service; then
        echo "🟢 Docker is active"
    else
        echo "⚫ Docker is inactive"
    fi
}

docker_toggle() {
    if systemctl is-active --quiet docker.service; then
        # If Docker is active, shut it down.
        sudo systemctl stop docker.service docker.socket
        echo "⚫ Docker has been shutdown"
    else
        # If Docker is inactive, switch it on.
        sudo systemctl start docker.service docker.socket
        echo "🟢 Docker has been switched on"
    fi
}

docker_containers() {
    docker ps -a --format "table {{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"
}

#______________________________________________________________________________
# SECTION: Libvirt Management

libvirt_status() {
    if systemctl is-active --quiet libvirtd.service; then
        echo "🟢 Libvirt is active"
    else
        echo "⚫ Libvirt is inactive"
    fi
}

libvirt_toggle() {
    if systemctl is-active --quiet libvirtd.service; then
        # Stop service and sockets
        sudo systemctl stop libvirtd.service libvirtd.socket libvirtd-admin.socket libvirtd-ro.socket
        echo "⚫ Libvirt has been shutdown"
    else
        # Start service and sockets
        sudo systemctl start libvirtd.service libvirtd.socket libvirtd-admin.socket libvirtd-ro.socket
        echo "🟢 Libvirt has been switched on"
    fi
}

#______________________________________________________________________________
