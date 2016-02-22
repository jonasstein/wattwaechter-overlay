# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit versionator java-pkg-2 java-pkg-simple

DESCRIPTION="Rich PDF manipulation and rendering framework"
HOMEPAGE="https://sourceforge.net/projects/jpodlib/"
SRC_URI="mirror://sourceforge/project/jpodlib/jpod/$(get_version_component_range 1-2)/jPod.${PV}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="
	dev-java/iscwt:0
	>=dev-java/isrt-4.11.20131203:0
	dev-java/jbig2:0
	"
DEPEND=">=virtual/jdk-1.8
	${CDEPEND}"
RDEPEND=">=virtual/jre-1.8
	${CDEPEND}"

S="${WORKDIR}"/distribution

JAVA_ENCODING="ISO-8859-15"
JAVA_GENTOO_CLASSPATH="isrt,iscwt,jbig2"
JAVA_JAR_FILENAME="jPod.jar"
