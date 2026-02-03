{- HLINT ignore "Use guards" -}

-- A simple function declaration which returns double the number it takes in as input.
double :: Int -> Int
double x = 2 * x

-- It's double again! This function returns the result of applying double twice on the input.
doubleAgain :: Int -> Int
doubleAgain x = double (double x)

-- Declaring variables have never been so simple.
n = 5
x = 9
y = "a"

-- We can also declare the type of a variable which is preferable.
m :: Int = 5
z :: Char = 'a'

-- Function that takes in true or false and returns the relevant value. 
-- Demonstration to explain function types.
xor :: Bool -> Bool -> Bool
xor x y = (not x && y) || (x && not y)

mux :: Bool -> Bool -> Bool -> Bool
mux c x y = (not c && x) || (c && y)

{- 
    This is some Java pseudocode for summing up all the numbers to n, then returning it.

    public int sumN (int n) {
        int total = 0;
        for (int i = 1; i<=n; i++) {
            total = total + i;
        }
    return total;
    }

    As we can see, this has to be implemented using recursion in Haskell.
-}

sumN :: Int -> Int
sumN 0 = 0                -- base case, known as pattern matching where we specify return values for specific input
sumN n = n + sumN (n - 1) -- recursive case

-- This could also be defined using if statements, but it's not as simple.
sumN2 :: Int -> Int
sumN2 n = if n == 0 then 0 else n + sumN2 (n - 1) 

-- Or, using guards which are similar to if statements. Guards are the Haskell equivalent of Java switch statements.
sumN3 :: Int -> Int
sumN3 n 
    | n == 0 = 0
    | otherwise = n + sumN3 (n - 1)

-- We can combine guards and pattern matching for the neatest function definition!
abs' :: Int -> Int
abs' 0 = 0
abs' x
    | x > 0 = x
    | otherwise = -x

-- Compare that neat function to an if statement again...
abs'' :: Int -> Int
abs'' x = if x == 0 then 0 else (if x > 0 then x else -x)
