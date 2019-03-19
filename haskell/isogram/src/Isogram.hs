module Isogram
  ( isIsogram
  ) where

import           Data.Char (isAlpha, toLower)
import           Data.List (filter, nub)

isIsogram :: String -> Bool
isIsogram xs = normalized == nub normalized
  where
    normalized = map toLower $ filter isAlpha xs
