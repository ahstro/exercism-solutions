module School
  ( School
  , add
  , empty
  , grade
  , sorted
  ) where

import qualified Data.List       as List (insert)
import qualified Data.Map.Strict as Map (Map, adjust, empty, insert, lookup,
                                         toList, (!?))
import           Data.Maybe      (fromMaybe)

type School = Map.Map Int [String]

add :: Int -> String -> School -> School
add gradeNum student school =
  case school Map.!? gradeNum of
    Nothing -> Map.insert gradeNum [student] school
    Just _  -> Map.adjust (List.insert student) gradeNum school

empty :: School
empty = Map.empty

grade :: Int -> School -> [String]
grade gradeNum = fromMaybe [] . Map.lookup gradeNum

sorted :: School -> [(Int, [String])]
sorted = Map.toList
