-- Pattern matching
-- specify patterns that data should conform to, and deconstruct data according
    -- to those patterns

lucky :: (Integral a) => a -> String
lucky 7 =
    "Lucky Number Seven!"
lucky x =
    "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not Between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

addVectors :: (Num a) => (a,a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x: y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- patterns are a handy way of breaking something up according to a pattern
-- and binding it to a variable, while keeping reference to whole thing
-- xs@(x:y:ys) will match x:y:ys but you can also get the whole list with xs

capital :: String -> String
capital "" = "Empty string, whoops !"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- GUARDS

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"

bmiTell' :: (RealFloat a) => a -> String
bmiTell' bmi =
    if bmi <= 20
        then do
            let a = "a"
            "You're underweight you emo" ++ a
    else
        "YT"

bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight you emo, you!"
    | otherwise = "You're a whale"

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b = a
    | otherwise = b


bmiTell3 :: (RealFloat a) => a -> a -> String
bmiTell3 weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= fat = "You're fat! Lose weight, fatty!"
    | otherwise = "You're a whale, congratulations!"
    where 
        bmi = weight / height ^ 2
        skinny = 19.5
        normal = 25.0
        fat = 30.0

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r^2
    in sideArea + 2 * topArea


-- Case expressions
-- case expression of pattern -> result
                   -- pattern -> result
                   -- pattern -> result


describeList :: [a] -> String
describeList xs =
    "The list is " ++ case xs of [] -> "empty."
                                 [x] -> "a singleton liist."
                                 xs -> "a longer list."