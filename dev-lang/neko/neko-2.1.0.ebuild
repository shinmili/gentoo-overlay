# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="A non-bytecode VM and its programming language"
HOMEPAGE="http://nekovm.org/"
SRC_URI="http://nekovm.org/media/${P}-src.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/boehm-gc[threads(+)]
	www-servers/apache
	net-libs/mbedtls
	dev-db/mariadb
	sys-libs/zlib
	dev-libs/openssl
	dev-libs/libpcre
	dev-db/sqlite:3
	x11-libs/gtk+:2
	dev-vcs/git"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}-src"

src_configure () {
	local mycmakeargs=("-DRUN_LDCONFIG=OFF")
	cmake-utils_src_configure
}
