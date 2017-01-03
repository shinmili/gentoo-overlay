# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="A cross-platform toolkit based on a programming language, a cross-compiler, and a library"
HOMEPAGE="http://haxe.org"
SRC_URI=""

EGIT_REPO_URI="git://github.com/HaxeFoundation/haxe.git"
EGIT_COMMIT="3.3.0-rc1"

LICENSE="GPL-2+ MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-lang/ocaml
	dev-ml/camlp4
	=dev-lang/neko-2.1.0"
RDEPEND="${DEPEND}"
