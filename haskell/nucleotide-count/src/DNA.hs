module DNA (nucleotideCounts, Nucleotide (..)) where

import Data.Map (Map, fromListWith)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show, Read)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts s
  | not (all (`elem` "ATGC") s) = Left "Not a valid strand."
  | otherwise = Right (fromListWith (+) (map (\c -> (read [c], 1)) s))
