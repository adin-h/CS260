{- HLINT ignore "Use foldr" -}

{- 
    All functions on this page make use of recursion. 
    Recursion relies on having a base case, where the function can end,
    as well as the recursive step.
-}

{-
    The cons operator (:) allows us to stick an element at the start of a list
    i.e. 2:[3] returns [2, 3]
-}

{-
    The double dot operator, also known as a generator, allows us to quickly define large lists.
    i.e. [1..5] returns [1, 2, 3, 4, 5]
-}

-- Finds the length of a list i.e. how many elements are in the list.
length' :: [Int] -> Int
length' []     = 0                  -- base case
length' (x : xs) = 1 + length' xs   -- more than zero elements

-- Reverses the elements in the list i.e. [A, B, C] becomes [C, B, A]
reverse' :: [Int] -> [Int]
reverse' []     = []                    -- base case
reverse' [x]    = [x]                   -- one element
reverse' (x : xs) = reverse' xs ++ [x]  -- more than one element

-- Returns the amount of specified characters from the start of the given string i.e. 2 and "Hello World" returns "He"
taken :: Int -> String -> String               -- Int -> [Char] -> [Char]
taken _ []          = []                    -- base case, if list is empty we return empty list
taken n _ | n <= 0  = []                    -- base case, if characters are less than or equal to zero we return empty list
taken n (x : xs)    = x : taken (n - 1) xs  -- more than one characters to be taken, and more than one element in list

-- Helper function for histo
countChar :: Char -> String -> Int
countChar _ [] = 0
countChar c (x : xs)
    | c == x    = 1 + countChar c xs
    | otherwise = countChar c xs

-- Helper function for histo
removeAll :: Char -> String -> String
removeAll c [] = []
removeAll c (x : xs)
    | c == x    = removeAll c xs
    | otherwise = x : removeAll c xs

testHisto = histo "Clemens requires more lemons"

-- Counts all occurrences of each character, returns this as a list of tuples
histo :: String -> [(Char,Int)]
histo [] = []
histo (x : xs) = (x, countChar x (x : xs)) : histo (removeAll x xs)
