-- Algebraic Data types
-- data means we are defining a new data type
-- data Bool = False | True
-- the Bool is the type, the parts after = are value constracter
-- "The bool type can have a value of True or False"

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)


surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

nudge :: Shape -> Float ->  Float -> Shape
nudge (Circle (Point x y) r) a b = Circle (Point  (x + a) (y + b) ) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point (x1 + a) (y1 + b)) (Point (x2+ a) (y2 + b))

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (Point 0 0) (Point width height)

-- Value constructors are just functions that take the fields as parameters and return a value of some type

-- Record syntax
-- data Person = Person String String Int Float String String deriving (Show)
-- This is dumb
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String
                     }


-- Type parameter
data Maybe a = Nothing | Just a
