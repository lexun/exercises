module Squares (difference, squareOfSums, sumOfSquares) where

difference :: Integral a => a -> a
difference n = squareOfSums n - sumOfSquares n

squareOfSums :: Integral a => a -> a
squareOfSums n = square $ sum [0..n]

sumOfSquares :: Integral a => a -> a
sumOfSquares n = sum $ map square [0..n]

square :: Integral a => a -> a
square n = n * n
