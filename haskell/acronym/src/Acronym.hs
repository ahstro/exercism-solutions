module Acronym
  ( abbreviate
  ) where

import           Data.Char  (isAlpha, isUpper, toUpper)
import           Data.Maybe (catMaybes)

abbreviate :: String -> String
abbreviate = map toUpper . catMaybes . mapWithPrevious getAcronymLetter

mapWithPrevious :: (Maybe a -> a -> b) -> [a] -> [b]
mapWithPrevious fn xs = zipWith fn previous xs
  where
    previous = Nothing : map Just xs

getAcronymLetter :: Maybe Char -> Char -> Maybe Char
getAcronymLetter Nothing curr = Just curr
getAcronymLetter (Just prev) curr
  | isAlpha curr && not (isAlpha prev) = Just curr
  | isUpper curr && not (isUpper prev) = Just curr
  | otherwise = Nothing
