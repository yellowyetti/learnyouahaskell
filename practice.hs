factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

dotProduct :: [Integer] -> [Integer] -> Integer
dotProduct [] [] = 0
dotProduct (x:xs) (y:ys) = x * y + (dotProduct xs ys)

decList :: [Integer] -> [Integer]
decList [] = []
decList (x:xs) = (x - 1):decList xs 

data List a = Cons a (List a)
            | Nil
  deriving Show

cons2list :: List a -> [a]
cons2list Nil = []
cons2list (Cons x (xs)) = x:(cons2list xs)


countCons :: List a -> Integer
countCons Nil = 0
countCons (Cons x (xs)) = 1 + countCons (xs)




listsubtractn :: [Integer] -> Integer -> [Integer]
listsubtractn [] _ = []
listsubtractn (x:xs) n = (x - n):(listsubtractn xs n)

-- natList :: Integer -> [Integer]
-- natList 0 = [0]
-- natList n
    -- | n < 0 = []
    -- | otherwise = flip (n  natList (n - 1))

data Tuple a b = Tuple a b
  deriving Show

tuple2pair :: Tuple a b -> (a,b)
tuple2pair (Tuple a b)= (a,b)

prodTuple :: Tuple Integer Integer -> Integer
prodTuple (Tuple a b) = a * b


maxList :: Ord a => [a] -> a
maxList (x:xs) = foldr f x xs
    where f a b = max a b
    

myfoldr :: (a -> b -> b) -> b -> [a] -> b
myfoldr (f) b (x:xs) = f (b x)