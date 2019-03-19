module Isogram
  ( isIsogram
  ) where

import           Data.Char (toLower)
import           Data.List (filter, nub)

isIsogram :: String -> Bool
isIsogram xs = normalized == nub normalized
  where
    allowed c = notElem c [' ', '-']
    normalized = map toLower $ filter allowed xs
