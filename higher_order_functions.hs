-- higher order functions
-- a function that takes functions as parameters and returns functions as return values

-- curried functions
-- max 4 5 is the same as (max 4) 5

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

-- type can also be written as multThree :: (Num a) => a -> (a -> (a -> a))
-- so calling multThree 3 5 9
-- multThree 3 5 9 => mult 3 -> mult 5 -> mult 9 -> 135

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred x = compare 100 x

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x

-- map takes a function and a list and applies that function to every element in
    -- the list, producing a new list.
-- map :: (a -> b) -> [a] -> [b]
-- map _ [] = []
-- map f (x:xs) = f x : map f xs

-- filter is a function that takes a predicate
    -- predicate is a function that tells whether something is true or not

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999..])
    where p x = x `mod` 3829 == 0

-- Collatz sequences
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain(n `div` 2)
    | odd n = n:chain (n*3 + 1)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15

-- fold takes a binary function, a starting value (accumulator), and a list to fold up
    -- binary is called with the accumulator and the first or last element
        -- it produces new acumulator
    -- binary is called again with new accumulator
    -- returns the accumulator

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

-- function application $
-- $ has the lowest precedence
-- function application wish a space is left associaive, fo f a b c is ( ( (f a) b) c)
-- $ is right associative

-- Function composition
-- f(g(x))

