# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java wrapper for FreeType font handling library"
HOMEPAGE="http://opensource.intarsys.de/home/en/index.php?n=OpenSource.IsFreeType"
SRC_URI="mirror://debian/pool/main/libi/libisfreetype-java/libisfreetype-java_${PV}.orig.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="
	dev-java/isrt:0
	dev-java/jna:0
	dev-java/isnativec:0
	"
DEPEND=">=virtual/jdk-1.5
	${CDEPEND}"
RDEPEND=">=virtual/jre-1.5
	${CDEPEND}"

S="${WORKDIR}"/libisfreetype-java-${PV}

JAVA_GENTOO_CLASSPATH="jna,isrt,isnativec"
