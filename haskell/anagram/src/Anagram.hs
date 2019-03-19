module Anagram
  ( anagramsFor
  ) where

import           Data.Char (toLower)
import           Data.List (filter, sort)

anagramsFor :: String -> [String] -> [String]
anagramsFor xs = filter (isAnagram xs)

isAnagram :: String -> String -> Bool
isAnagram xs ys = lxs /= lys && sort lxs == sort lys
  where
    lxs = map toLower xs
    lys = map toLower ys
