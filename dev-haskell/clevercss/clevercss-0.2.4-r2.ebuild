# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.6.9999
#hackport: flags: -parsec2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="A CSS preprocessor"
HOMEPAGE="http://sandbox.pocoo.org/clevercss-hs/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-haskell/parsec-3:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

PATCHES=( "${FILESDIR}/${P}-ghc-7.10.patch" )

src_configure() {
	haskell-cabal_src_configure \
		--flag=-parsec2
}
