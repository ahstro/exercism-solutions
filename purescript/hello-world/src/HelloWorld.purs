module HelloWorld where

import Prelude
import Data.Maybe (Maybe, fromMaybe)

helloWorld :: Maybe String -> String
helloWorld name = "Hello, " <> fromMaybe "World" name <> "!"
