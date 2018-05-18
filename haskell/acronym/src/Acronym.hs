module Acronym (abbreviate) where

import Data.Char (isLower, isUpper, toUpper)
import Data.Maybe (fromMaybe)

abbreviate :: String -> String
abbreviate = reverse . snd . foldl getAbrChars (Nothing, [])

getAbrChars (lastChar, acc) currChar =
  ( Just currChar
  , if
       lastChar == Just ' ' ||
       lastChar == Just '-' ||
       ((fromMaybe True $ fmap isLower lastChar) && isUpper currChar)
    then
      toUpper currChar : acc
    else
      acc
  )
