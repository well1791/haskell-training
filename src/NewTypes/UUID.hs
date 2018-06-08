module NewTypes.UUID where

import           Data.Aeson
import           Data.Maybe
import qualified Data.Text  as T
import           Data.UUID

-- ^ MyUUID

newtype MyUUID = MyUUID { unMyUUID :: UUID }

mkMyUUID :: String -> Maybe MyUUID
mkMyUUID = fmap MyUUID . fromString

instance FromJSON MyUUID where
  parseJSON = withText "MyUUID" (return . fromMaybe (MyUUID nil) . mkMyUUID . T.unpack)

instance ToJSON MyUUID where
  toJSON (MyUUID o) = String $ toText o

-- ^ DeriveCommon

newtype DeriveCommon = DeriveCommon
  { unDeriveCommon :: Int
  } deriving (Eq, Show, Read, Ord)

-- ^ CreateCommon

newtype CreateCommon = CreateCommon
  { unCreateCommon :: Int }

instance Eq CreateCommon where
  (==) (CreateCommon a) (CreateCommon b) = a == b

instance Ord CreateCommon where
  (compare) (CreateCommon a) (CreateCommon b) = compare a b

instance Show CreateCommon where
  show (CreateCommon a) = show a
