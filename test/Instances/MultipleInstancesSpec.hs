module Instances.MultipleInstancesSpec where

import           Data.Monoid
import           Test.QuickCheck

import           Instances.MultipleInstances


compareSumIdentity a = SumType (0 :: Int) <> SumType a == mempty

main :: IO ()
main = quickCheck (withMaxSuccess 10000 compareSumIdentity)
