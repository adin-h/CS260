isPrime :: Int -> Int -> Bool
isPrime x y
    | y * y > x = True
    | x `mod` y == 0 = False
    | otherwise = isPrime x (y + 1)

prime :: Int -> Bool
prime x
    | x <= 1 = False
    | x == 2 = True
    | otherwise = isPrime x 2
    