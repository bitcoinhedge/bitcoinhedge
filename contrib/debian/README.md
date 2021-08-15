
Debian
====================
This directory contains files used to package bitcoinhedged/bitcoinhedge-qt
for Debian-based Linux systems. If you compile bitcoinhedged/bitcoinhedge-qt yourself, there are some useful files here.

## bitcoinhedge: URI support ##


bitcoinhedge-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitcoinhedge-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitcoinhedge-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitcoinhedge128.png` to `/usr/share/pixmaps`

bitcoinhedge-qt.protocol (KDE)

