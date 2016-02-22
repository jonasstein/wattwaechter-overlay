# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit java-pkg-2 java-ant-2

MY_PN=JMapProjLib
MY_PV=a05348df37021283f78ef8bca9fba379bbf3f2bf
DESCRIPTION="Java Map Projection Library"
HOMEPAGE="https://github.com/OSUCartography/JMapProjLib"
SRC_URI="https://github.com/OSUCartography/JMapProjLib/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/jdk-1.4"
RDEPEND=">=virtual/jre-1.4"

S="${WORKDIR}"/${MY_PN}-${MY_PV}

src_install() {
	java-pkg_newjar dist/${MY_PN}.jar ${MY_PN}.jar
}
