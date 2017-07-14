module Grains (square, total) where

import Data.Maybe (fromJust)

square :: Integer -> Maybe Integer
square 1 = Just 1
square n
    | n < 1     = Nothing
    | n > 64    = Nothing
    | otherwise = fmap (* 2) (square (n - 1))

total :: Integer
total = sum $ fromJust $ mapM square [1..64]
