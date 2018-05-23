module DNA
  ( nucleotideCounts
  ) where

import           Data.Map as Map (Map, adjust, fromList, (!?))

nucleotideCounts :: String -> Either String (Map.Map Char Int)
nucleotideCounts =
  foldl count (Right $ Map.fromList [('A', 0), ('C', 0), ('G', 0), ('T', 0)])

count ::
     Either String (Map.Map Char Int)
  -> Char
  -> Either String (Map.Map Char Int)
count acc char = do
  rightValue <- acc
  case rightValue !? char of
    Nothing -> Left "Nope"
    Just _  -> Right $ Map.adjust (+ 1) char rightValue
