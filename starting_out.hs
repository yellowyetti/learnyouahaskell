-- Starting Out
-- "5 is not equal to 5" 5 /= 5
-- not False == True
-- succ is a function that takes anything that has a defined successor
    -- and returns the it

-- succ 9 + max 5 4 + 1 => (succ 9) + (max 5 + 4) + 1

-- First Functions
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- Since Haskell is imperative, every if statement must have an else
doubleSmallNumber x = 
    if x > 100
        then x
    else x * 2 

-- Functions cannot begin with uppercase letters
-- no params mean the function is a definition

-- Lists
-- Lists are homogenous, they store elements of the same types
-- use ++ to put two lists together. It appends the last list to the back.
-- use the cons operator : to append at beginning a value.
-- use !! to get an element by index. "Steve Buscemi" !! 6 returns 'B'
-- head [5,4,3,2,1] => 5
-- tail [5,4,3,2,1] => 1
-- last [5,4,3,2,1] => 1
-- init [5,4,3,2,1] => returns everything but the last element
-- length
-- null checks if list is empty
-- reverse reverses list
-- take n takes n elements from beginning of the list
-- drop n drops n elements from the beginning of the list
-- maximum
-- minimum
-- sum
-- product
-- elem takes a thing and a list of things and tells if that thing is an element of the list

--you can use ranges like [1..20], or specify a single step like
-- [20,19..0]. Going forwared, you can just do [0..20]
-- you can do infinite lists. You can take from one.
-- take 10 [13,26..]

-- cycle [1,2,3] = [1,2,3,1,2,3,1,2...]
-- repeat is like cycle but with one element

-- for x in 1..10, return x*2
-- [x*2 | x <- [1..10]]
-- return a list of x*2 where x is binded in range 1..10, and x*2 >= 12
--  [x*2 | x <- [1..10], x*2 >= 12]

-- TUPLES
-- Tuples are like lists, but can store several values of different types.
-- They are finite
--  [(1,2), (8,11), (4,5)]
-- fst takes a pair and returns first component
-- snd takes a pair and returns second component
-- zip, takes two lists and zips together into one list by joining matching
-- elements into pairs
