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
        echo "🟣 Docker is active"
    else
        echo "⚫ Docker is inactive"
    fi
}

docker_toggle() {
    if systemctl is-active --quiet docker.service; then
        # If Docker is active, deactivate it.
        sudo systemctl stop docker.service docker.socket
        echo "⚫ Docker has been deactivated"
    else
        # If Docker is inactive, activate it.
        sudo systemctl start docker.service docker.socket
        echo "🟣 Docker has been activated"
    fi
}

docker_images() {
    docker image ls
}

docker_volumes() {
    docker volume ls
}

docker_remove_all_images() {
    docker rmi $(docker images -q)
}

docker_containers_status() {
    docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}"
}

docker_containers_ports() {
    docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}"
}

docker_stop_all_containers() {
    docker stop $(docker ps -q)
}

docker_remove_all_containers() {
    docker rm $(docker ps -aq)
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
