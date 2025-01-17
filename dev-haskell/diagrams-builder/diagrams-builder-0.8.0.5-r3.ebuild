# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -ps

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="hint-based build service for the diagrams graphics EDSL"
HOMEPAGE="https://diagrams.github.io/"
HACKAGE_REV="4"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cairo pgf postscript rasterific svg"

RDEPEND=">=dev-haskell/base-orphans-0.3:=[profile?] <dev-haskell/base-orphans-0.9:=[profile?]
	>=dev-haskell/cmdargs-0.6:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/diagrams-lib-1.4:=[profile?] <dev-haskell/diagrams-lib-1.5:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/haskell-src-exts-simple-1.18:=[profile?] <dev-haskell/haskell-src-exts-simple-1.24:=[profile?]
	>=dev-haskell/hint-0.4:=[profile?] <dev-haskell/hint-0.10:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-5.2:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-lang/ghc-8.10.1:=
	cairo? ( >=dev-haskell/diagrams-cairo-1.4:=[profile?] <dev-haskell/diagrams-cairo-1.5:=[profile?] )
	pgf? ( >=dev-haskell/diagrams-pgf-1.4:=[profile?] <dev-haskell/diagrams-pgf-1.5:=[profile?]
		dev-haskell/texrunner:=[profile?] )
	postscript? ( >=dev-haskell/diagrams-postscript-1.4:=[profile?] <dev-haskell/diagrams-postscript-1.5:=[profile?] )
	rasterific? ( >=dev-haskell/diagrams-rasterific-1.4:=[profile?] <dev-haskell/diagrams-rasterific-1.5:=[profile?]
			>=dev-haskell/juicypixels-3.1.5:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?] )
	svg? ( >=dev-haskell/diagrams-svg-1.4:=[profile?] <dev-haskell/diagrams-svg-1.5:=[profile?]
		>=dev-haskell/svg-builder-0.1:=[profile?] <dev-haskell/svg-builder-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cairo cairo) \
		$(cabal_flag pgf pgf) \
		$(cabal_flag postscript postscript) \
		--flag=-ps
		$(cabal_flag rasterific rasterific) \
		$(cabal_flag svg svg)
}
