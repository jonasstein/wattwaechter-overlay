# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Common runtime library by intarsys"
HOMEPAGE="http://opensource.intarsys.de/home/en/index.php?n=IsRuntime.HomePage"
SRC_URI="mirror://debian/pool/main/libi/libisrt-java/libisrt-java_${PV}.orig.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/jdk-1.5"
RDEPEND=">=virtual/jre-1.5"

S="${WORKDIR}"/lib${PN}-java-${PV}
