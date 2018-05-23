module Bob
  ( responseFor
  ) where

import           Data.Char (isAlpha, isLower, isSpace)
import           Data.List (all, any)

responseFor :: String -> String
responseFor xs
  | all iSpace xs = "Fine. Be that way!"
  | any isAlpha xs && not (any isLower xs) = "Whoa, chill out!"
  | (last $ last $ words xs) == '?' = "Sure."
  | otherwise = "Whatever."
