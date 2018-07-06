# NewTypes

Reduces the computation time in runtime by assuming the type it contains.

### Rules

It should only have one type variable

Examples:

```hs
-- ^ Has only one type variable
newtype Fd = Fd CInt

-- ^ Can implement derivngs
newtype Identity a = Identity a
  deriving (Eq, Ord, Read, Show)

-- ^ Record syntax is allowed only for one field
newtype State s a = State { runState :: s -> (s, a) }
```
