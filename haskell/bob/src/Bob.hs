module Bob (responseFor) where

import Data.Char (isSpace, toLower, toUpper)
import Data.List (isSuffixOf)

responseFor :: String -> String
responseFor xs
    | isSilent   = "Fine. Be that way!"
    | isShouting = "Whoa, chill out!"
    | isQuestion = "Sure."
    | otherwise  = "Whatever."
  where
    isSilent   = all isSpace xs
    isShouting = map toUpper xs == xs && map toLower xs /= xs
    isQuestion = isSuffixOf "?" . filter (not . isSpace) $ xs
