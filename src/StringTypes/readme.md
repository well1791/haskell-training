## String Types

#### String
It's a basic type alias, it usually has a bad performance as it's default
definition is a `[Char]` which is computed as an array

#### Text
It's an efficient implementation of Unicode text, used to store in a more
efficient way String-like values and operate over them.

#### ByteString
It's a low level implementation of string. It's usually efficient if you
need to transport data to external systems.

## Stric Vs Lazy
Strict strings will have it's content read completely in runtime, however,
lazy strings will have it's content read when needed.
Laziness allows a better performance when dealing with big data.

## IsString Typeclass
It's usually used by the `OverloadedStrings` pragma.
