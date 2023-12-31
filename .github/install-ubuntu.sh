#!/bin/bash
#
# This is an install script for Ubuntu-specific packages.
#
set -ex

APT_FLAGS=(-q -o=Dpkg::Use-Pty=0)

export DEBIAN_FRONTEND=noninteractive

apt-get ${APT_FLAGS[@]} update
apt-get ${APT_FLAGS[@]} -y dist-upgrade
apt-get ${APT_FLAGS[@]} install -y locales
locale-gen en_US.UTF-8

PACKAGES=(git build-essential pkg-config meson clang libomp-dev perl lsb-release cmake)

apt-get ${APT_FLAGS[@]} install -y "${PACKAGES[@]}"
