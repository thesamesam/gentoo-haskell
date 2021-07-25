# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Find a local optimum of strictness annotations"
HOMEPAGE="https://hackage.haskell.org/package/strictify"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2
		>=dev-lang/ghc-6.10.4"
