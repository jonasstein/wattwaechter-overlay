# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit java-pkg-2 java-utils-2

MY_PV=${PV/p/}
DESCRIPTION="Programm zur Bewertung von Amateurfunkstellen"
HOMEPAGE="http://emf3.bundesnetzagentur.de/wattw%C3%A4chter.html"
SRC_URI="http://emf3.bundesnetzagentur.de/wattw%C3%A4chter/Wattw%C3%A4chter.zip -> ${P}.zip"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/jdk-1.8"
RDEPEND=">=virtual/jre-1.8
	>=dev-java/appframework-1.03:0
	dev-java/isrt:0
	dev-java/iscwt:0
	dev-java/jbig2:0
	dev-java/jmapprojlib:0
	dev-java/jpod:0
	dev-java/junit:4
	dev-java/hamcrest-core:1.3
	>=dev-java/swing-worker-1.1:0
	"
S="${WORKDIR}"

src_prepare() {
	rm NECDATA/*.field || die  # TODO install them to somewhere found
}

src_compile() {
    :
}

src_install() {
	java-pkg_register-dependency junit-4 junit.jar
	java-pkg_register-dependency hamcrest-core-1.3 hamcrest-core.jar
	java-pkg_register-dependency iscwt iscwt.jar
	java-pkg_register-dependency isrt isrt.jar
	java-pkg_register-dependency jbig2 jbig2.jar
	java-pkg_register-dependency jpod jPod.jar
	java-pkg_register-dependency jmapprojlib JMapProjLib.jar
	java-pkg_register-dependency appframework appframework.jar
	java-pkg_register-dependency swing-worker swing-worker.jar

	java-pkg_newjar wattwaechter_v120a_3.jar
	java-pkg_dolauncher ${PN} --main org.eclipse.jdt.internal.jarinjarloader.JarRsrcLoader
}
