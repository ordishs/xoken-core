{-|
Module      : Network.Xoken.Test.Address
Copyright   : Xoken Labs
License     : Open BSV License

Stability   : experimental
Portability : POSIX
-}
module Network.Xoken.Test.Address where

import Network.Xoken.Address
import Network.Xoken.Test.Crypto
import Test.QuickCheck

-- | Arbitrary pay-to-public-key-hash or pay-to-script-hash address.
arbitraryAddress :: Gen Address
arbitraryAddress = oneof [arbitraryPubKeyAddress, arbitraryScriptAddress]

-- | Arbitrary pay-to-public-key-hash address.
arbitraryPubKeyAddress :: Gen Address
arbitraryPubKeyAddress = p2pkhAddr <$> arbitraryHash160

-- | Arbitrary pay-to-script-hash address.
arbitraryScriptAddress :: Gen Address
arbitraryScriptAddress = p2shAddr <$> arbitraryHash160
