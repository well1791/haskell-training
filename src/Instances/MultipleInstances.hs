module Instances.MultipleInstances where

import Data.Monoid


-- ^ Addition type

newtype SumType = SumType Int

instance Monoid SumType where
  mempty = SumType 0
  mappend (SumType a) (SumType b) = SumType $ a + b


-- ^ Multiplication type

newtype MultType = MultType Int

instance Monoid MultType where
  mempty = MultType 1
  mappend (MultType a) (MultType b) = MultType $ a * b
