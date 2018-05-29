module School
  ( School
  , add
  , empty
  , grade
  , sorted
  ) where

import qualified Data.List as List
import qualified Data.Map  as Map

type School = Map.Map Int [String]

add :: Int -> String -> School -> School
add gradeNum student = Map.adjust (student :) gradeNum

empty :: School
empty = Map.empty

grade :: Int -> School -> [String]
grade = Map.findWithDefault []

sorted :: School -> [(Int, [String])]
sorted = List.sort . Map.assocs
