module Grains (square, total) where

square :: Integer -> Maybe Integer
square n = if valid then Just result else Nothing
  where
    valid  = n >= 1 && n <= 64
    result = 2 ^ (n - 1)

total :: Integer
total = 2 ^ 64 - 1
