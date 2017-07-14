module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA = mapM t
  where
    t 'G' = Just 'C'
    t 'C' = Just 'G'
    t 'T' = Just 'A'
    t 'A' = Just 'U'
    t _   = Nothing
