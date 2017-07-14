module RunLength (decode, encode) where

import Data.Char (isDigit)

decode :: String -> String
decode "" = ""
decode xs = replicate n c ++ decode rest
  where
    c = head $ filter (not . isDigit) xs
    d = takeWhile isDigit xs
    n = if null d then 1 else read d
    rest = drop (length d + 1) xs

encode :: String -> String
encode "" = ""
encode xs = d ++ c : encode rest
  where
    c = head xs
    d = if n == 1 then "" else show n
    n = length $ takeWhile (== c) xs
    rest = drop n xs
