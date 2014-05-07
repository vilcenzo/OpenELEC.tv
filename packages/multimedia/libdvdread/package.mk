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

PKG_NAME="libdvdread"
PKG_VERSION="4.9.9"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://dvdnav.mplayerhq.hu/"
PKG_URL="dvdnav.mplayerhq.hu/releases/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libdvdcss"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="libdvdread: Simple library for reading DVDs"
PKG_LONGDESC="libdvdread provides a simple foundation for reading DVD video disks. It provides the functionality that is required to access many DVDs. It parses IFO files, reads NAV-blocks, and performs CSS authentication and descrambling (if an external libdvdcss library is installed)."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

post_make_target() {
  mkdir -p $SYSROOT_PREFIX/usr/lib/pkgconfig
    cp misc/dvdread.pc $SYSROOT_PREFIX/usr/lib/pkgconfig/libdvdread.pc
}

