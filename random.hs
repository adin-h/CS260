-- Evaluate powers of an integer
pow :: Int -> Int -> Int
pow x 0 = 1
pow x 1 = x
pow x y = x * pow x (y - 1)

-- Get a given index in the Fibonacci sequence
fib :: Int -> Int
fib n
    | n <= 1 = 1
    | otherwise = fib (n - 1) + fib (n - 2)
