# Liste les commandes disponibles
default:
    @just --list

# Tout mettre à jour (image bootc + flatpak + distroboxes)
update:
    distrobox-host-exec sudo bootc upgrade
    distrobox-host-exec flatpak update -y
    distrobox-host-exec distrobox upgrade --all

# Reboot (après update si nouvelle image bootc)
reboot:
    distrobox-host-exec systemctl reboot
