module Leap where

import Prelude

isLeapYear :: Int -> Boolean
isLeapYear y
         | divisibleBy 400 y = true
         | divisibleBy 100 y = false
         | divisibleBy 4 y = true


divisibleBy :: Int -> Int -> Boolean
divisibleBy x y = (==) 0 $ mod y x
