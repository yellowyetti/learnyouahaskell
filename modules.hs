import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

-- intersperse takes an element and a list and puts that element between each pair of elements
-- intercalate takes a list of lists and a list, and inserts that list between all the lists, and then flattens
