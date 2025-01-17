# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Standard spec's for aeson-related instances"
HOMEPAGE="https://cs-syd.eu"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/genvalidity-1.0:=[profile?]
	>=dev-haskell/genvalidity-hspec-0.6:=[profile?]
	dev-haskell/hspec:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/genvalidity-aeson
		dev-haskell/genvalidity-property
		dev-haskell/genvalidity-text
		dev-haskell/text
		>=dev-haskell/validity-0.9 )
"
