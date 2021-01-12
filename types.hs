-- Types
--static type system, so the type of every expression is known at compile time
--type inference -> it can infer the type
-- :t 'a' returns 'a' :: Char
--  :: is read as "has type of"


removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- Int, Float, Double, Integer, Bool, Char


-- Typeclasses
-- If a type is part of a typeclss, it supports and implements behavior the typeclass describes

-- class constraint => function
-- (==) :: (Eq a) => a -> a -> Bool
-- basically the type variable a must be a member of the Eq class

-- type annotation :: is an explicit way as saying what the type of an expression should be
-- read "5" :: Int