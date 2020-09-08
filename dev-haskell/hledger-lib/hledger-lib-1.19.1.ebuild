# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6
#hackport: flags: -double

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A reusable library providing the core functionality of hledger"
HOMEPAGE="https://hledger.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	>=dev-haskell/ansi-terminal-0.9:=[profile?]
	>=dev-haskell/base-compat-batteries-0.10.1:=[profile?] <dev-haskell/base-compat-batteries-0.12:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	dev-haskell/call-stack:=[profile?]
	dev-haskell/cassava:=[profile?]
	dev-haskell/cassava-megaparsec:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	>=dev-haskell/decimal-0.5.1:=[profile?]
	>=dev-haskell/extra-1.6.3:=[profile?]
	>=dev-haskell/fgl-5.5.4.0:=[profile?]
	>=dev-haskell/file-embed-0.0.10:=[profile?]
	>=dev-haskell/glob-0.9:=[profile?]
	>=dev-haskell/hashtables-1.2.3.1:=[profile?]
	>=dev-haskell/megaparsec-7.0.0:=[profile?] <dev-haskell/megaparsec-9.1:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/parser-combinators-0.4.0:=[profile?]
	>=dev-haskell/pretty-show-1.6.4:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?]
	>=dev-haskell/tabular-0.2:=[profile?]
	>=dev-haskell/tasty-1.2.3:=[profile?]
	>=dev-haskell/tasty-hunit-0.10.0.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/timeit:=[profile?]
	dev-haskell/uglymemo:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-double
}
