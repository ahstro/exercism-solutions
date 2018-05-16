module Bob (hey) where

import Prelude 
import Data.String (toUpper, toLower, trim, null)
import Data.String.Utils (endsWith)

isShouting :: String -> Boolean
isShouting s =
  toLower s /= s && toUpper s == s

isQuestion :: String -> Boolean
isQuestion =
  endsWith "?"

isEmpty :: String -> Boolean
isEmpty =
  null <<< trim

hey :: String -> String
hey s
  | isShouting s = "Whoa, chill out!"
  | isQuestion s = "Sure."
  | isEmpty s    = "Fine. Be that way!"
  | otherwise    = "Whatever."
