module Q3 where

import Q2 -- Import 'delete' from 'q2.hs'

perms :: [Int] -> [[Int]]

-- Handle empty lists
perms [] = [[]]

-- Otherwise
perms xs = do
    x <- xs
    let l = delete x xs
    ls <- perms l 
    return (x : ls)