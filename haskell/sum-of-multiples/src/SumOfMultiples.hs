module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum multiples
  where
    multiples = filter isMultiple [0..limit - 1]
    isMultiple n = any ((==) 0 . rem n) factors
