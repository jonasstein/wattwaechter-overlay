# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Helper routines to access native code from Java"
HOMEPAGE="http://opensource.intarsys.de/home/en/index.php?n=OpenSource.IsNativeC"
SRC_URI="mirror://debian/pool/main/libi/libisnativec-java/libisnativec-java_${PV}+fix.orig.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="
	dev-java/isrt
	dev-java/jna
	"
DEPEND=">=virtual/jdk-1.5
	${CDEPEND}"
RDEPEND=">=virtual/jre-1.5
	${CDEPEND}"

S="${WORKDIR}"/libisnativec-java-${PV}

JAVA_GENTOO_CLASSPATH="jna,isrt"
