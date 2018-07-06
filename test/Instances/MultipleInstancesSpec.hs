module Instances.MultipleInstancesSpec where

import           Data.Monoid
import           Test.Hspec
import           Test.Hspec.QuickCheck

import           Instances.MultipleInstances

spec :: SpecWith ()
spec =
  describe "SumType Monoid" $ do
    modifyMaxSuccess (const 1000) $
      prop "identity" $
        \a -> mempty <> SumType a == SumType a
