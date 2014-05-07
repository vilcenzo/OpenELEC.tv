################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="dvdbackup"
PKG_VERSION="0.4.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://dvdbackup.sourceforge.net/"
PKG_URL="http://sourceforge.net/projects/dvdbackup/files/dvdbackup/$PKG_NAME-$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libdvdread"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="dvdbackup: Simple command utility to rip DVDs"
PKG_LONGDESC="dvdbackup is a tool to rip video DVDs from the command line. It has the advantages of being small, fast, and easy to use."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_target() {
	export ac_cv_func_malloc_0_nonnull=yes
}

