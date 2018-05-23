module Pangram
  ( isPangram
  ) where

import           Data.Char (toLower)
import           Data.List (all)

isPangram :: String -> Bool
isPangram text = all (`elem` (map toLower text)) ['a' .. 'z']
