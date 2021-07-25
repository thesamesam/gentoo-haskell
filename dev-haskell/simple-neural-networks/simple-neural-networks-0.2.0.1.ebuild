# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Simple parallel neural networks implementation"
HOMEPAGE="http://eax.me/haskell-neural-networks/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/parallel-3.2:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

src_prepare() {
	default

	cabal_chdeps \
		'random >= 1.0 && < 1.1' 'random >= 1.0' \
		'deepseq >= 1.3 && < 1.4' 'deepseq >= 1.3' \
		'base >=4.5 && < 4.8' 'base >=4.5' \
		'base >= 4.5 && < 4.8' 'base >= 4.5' \
		'containers >= 0.5 && < 0.6' 'containers >= 0.5'
}
