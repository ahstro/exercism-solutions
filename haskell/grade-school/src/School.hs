module School
  ( School
  , add
  , empty
  , grade
  , sorted
  ) where

import           Control.Arrow   (second)
import           Data.List       (sort)
import qualified Data.Map.Strict as Map (Map, empty, findWithDefault,
                                         insertWith, toAscList)

type School = Map.Map Int [String]

add :: Int -> String -> School -> School
add gradeNum student = Map.insertWith (++) gradeNum [student]

empty :: School
empty = Map.empty

grade :: Int -> School -> [String]
grade gradeNum = sort . Map.findWithDefault [] gradeNum

sorted :: School -> [(Int, [String])]
sorted = map (second sort) . Map.toAscList
