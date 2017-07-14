module Pangram (isPangram) where

import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = all present ['a'..'z']
  where
    present :: Char -> Bool
    present = (`elem` map toLower text)
