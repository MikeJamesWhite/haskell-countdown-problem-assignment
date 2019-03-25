module Q4 where

split :: [Int] -> [([Int], [Int])]
split xs = [(take n xs, drop n xs) | n <- [1..((length xs) -1)]]