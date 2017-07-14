module DNA (toRNA) where

import qualified Data.Map.Strict as Map

toRNA :: String -> Maybe String
toRNA = mapM (`Map.lookup` rna)
  where
    rna = Map.fromList $ zip "GCTA" "CGAU"
