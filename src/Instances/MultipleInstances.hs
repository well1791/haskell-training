{-# LANGUAGE CPP #-}
module Instances.MultipleInstances where

#if __GLASGOW_HASKELL__==708
import           Data.Monoid
#endif

-- ^ Addition type

_mappendSum :: SumType -> SumType -> SumType
_mappendSum (SumType a) (SumType b) = SumType $ a + b

newtype SumType = SumType Int deriving (Eq)

#if MIN_VERSION_base(4,11,0)
instance Semigroup SumType where
  (<>) = _mappendSum
#endif

instance Monoid SumType where
  mempty = SumType 0
  mappend = _mappendSum


-- ^ Multiplication type

newtype MultType = MultType Int deriving (Eq)

_mappendMult :: MultType -> MultType -> MultType
_mappendMult (MultType a) (MultType b) = MultType $ a * b

#if MIN_VERSION_base(4,11,0)
instance Semigroup MultType where
  (<>) = _mappendMult
#endif

instance Monoid MultType where
  mempty = MultType 1
  mappend = _mappendMult
