{-# OPTIONS_GHC -fno-warn-orphans #-}

module Instances.OrphanInstance where

import Instances.OrphanClass
import Instances.OrphanType

instance OClass OType where
  empty = OType 0
