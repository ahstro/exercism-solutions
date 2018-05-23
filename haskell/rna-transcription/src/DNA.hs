module DNA
  ( toRNA
  ) where

import           Data.Traversable (mapM)

toRNA :: String -> Maybe String
toRNA = mapM toRNA'

toRNA' :: Char -> Maybe Char
toRNA' n =
  case n of
    'G' -> Just 'C'
    'C' -> Just 'G'
    'T' -> Just 'A'
    'A' -> Just 'U'
    _   -> Nothing
