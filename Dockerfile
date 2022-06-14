FROM chendscm/basic
RUN yay -Syu --noconfirm xorg xorg-drivers xorg-xinit

COPY desktop /usr/local/share/packages/desktop
COPY desktop /tmp/desktop
USER user
RUN sudo chown -R user:user /tmp/desktop
WORKDIR /tmp/desktop
RUN makepkg -p ./PKGBUILD --printsrcinfo | awk '{$1=$1};1' | grep -oP '(?<=^depends = ).*' | xargs yay -Syu --noconfirm
RUN makepkg -i --noconfirm

# eaf core deps
RUN cd /opt/chendsystem/git/emacs-application-framework; chmod +x ./install-eaf.py; ./install-eaf.py --install-core-deps



