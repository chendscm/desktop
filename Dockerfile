FROM chendscm/basic
RUN yay -Sy --noconfirm xorg xorg-drivers xorg-xinit chendsystem-desktop

# eaf dependencies
# RUN cd /opt/chendsystem/git/emacs-application-framework; chmod +x ./install-eaf.py; ./install-eaf.py --install-all-apps


