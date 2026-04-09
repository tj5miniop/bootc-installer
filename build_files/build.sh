#!/bin/bash

set -ouex pipefail

### Install packages - these should be installed already, but it is always good to check
# install core networkmanager and firmware. Fzf and dracut is installed as well just in case
dnf5 install -y NetworkManager systemd linux-firmware bash btrfs-progs dracut fzf
systemctl enable NetworkManager





# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
