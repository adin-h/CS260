{- HLINT ignore "Use foldr" -}

-- Question 4
sumEven :: [Int] -> Int
sumEven [] = 0      -- base case
sumEven (x : xs)    -- recursive case
    | even x = x + sumEven xs
    | otherwise = sumEven xs
