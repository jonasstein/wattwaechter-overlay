# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit eutils java-pkg-2 java-pkg-simple

DESCRIPTION="Abstractions and Java implementations for rendering PDF"
HOMEPAGE="http://opensource.intarsys.de/home/en/index.php?n=OpenSource.IsCWT"
SRC_URI="mirror://debian/pool/main/libi/libiscwt-java/libiscwt-java_${PV}.orig.tar.gz
	mirror://debian/pool/main/libi/libiscwt-java/libiscwt-java_${PV}-3.debian.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="
	dev-java/isrt:0
	dev-java/isfreetype:0
	dev-java/isnativec:0
	dev-java/swt:3.8
	"
DEPEND=">=virtual/jdk-1.8
	${CDEPEND}"
RDEPEND=">=virtual/jre-1.8
	${CDEPEND}"

S="${WORKDIR}"/libiscwt-java-${PV}

JAVA_ENCODING="ISO-8859-15"
JAVA_GENTOO_CLASSPATH="isrt,swt-3.8,isfreetype,isnativec"

src_prepare() {
	epatch "${WORKDIR}"/debian/patches/java7-compat.patch
	epatch "${WORKDIR}"/debian/patches/java6andjava7-compat.patch
}
