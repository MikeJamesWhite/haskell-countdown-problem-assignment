module Q2 where

delete :: Int -> [Int] -> [Int]

-- Handle empty lists
delete n [] = []

-- Otherwise
delete n (x:xs) =
    if (x==n) then xs -- if x == n, return the rest of the list
    else x:(delete n xs) -- else return x concat with delete on the rest of the list
