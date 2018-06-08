module NewTypes.UUIDSpec where

import           Test.Hspec
import           Test.Hspec.QuickCheck

import           NewTypes.UUID

spec :: SpecWith ()
spec =
  describe "CreateCommon typeclass" $ do
    modifyMaxSuccess (const 1000) $
      prop "equality" $
        \a -> CreateCommon a == CreateCommon a
