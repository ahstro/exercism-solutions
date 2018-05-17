module DNA (toRNA) where

import Data.Traversable (traverse)

toRNA :: String -> Maybe String
toRNA = traverse toRNA'

toRNA' :: Char -> Maybe Char
toRNA' n =
  case n of
    'G' -> Just 'C'
    'C' -> Just 'G'
    'T' -> Just 'A'
    'A' -> Just 'U'
    _   -> Nothing
