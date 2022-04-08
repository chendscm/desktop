FROM chendscm/basic
RUN yay -Sy --noconfirm xorg xorg-drivers xorg-xinit chendsystem-desktop

# eaf core deps
RUN cd /opt/chendsystem/git/emacs-application-framework; chmod +x ./install-eaf.py; ./install-eaf.py --install-core-deps



