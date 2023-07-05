FROM chendscm/basic
RUN sudo pacman -Syu --noconfirm xorg xorg-drivers xorg-xinit

COPY desktop /usr/local/share/packages/desktop
COPY desktop /tmp/desktop
USER user
RUN sudo chown -R user:user /tmp/desktop
WORKDIR /tmp/desktop
RUN makepkg -p ./PKGBUILD --printsrcinfo | awk '{$1=$1};1' | grep -oP '(?<=^depends = ).*' | xargs yay -Syu --noconfirm
RUN makepkg -i --noconfirm

# eaf core deps
#RUN cd /opt/chendsystem/git/emacs-application-framework; ./install-eaf.py --install-core-deps

# Tmp install emacs27 replace emacs28.1
# RUN yay -U --noconfirm https://archive.archlinux.org/packages/e/emacs/emacs-27.2-2-x86_64.pkg.tar.zst




