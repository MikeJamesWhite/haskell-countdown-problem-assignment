module Q6 where

import Q1
import Q5

solve :: [Int] -> Int -> [Expr]
solve [] n = []
solve xs n = [e | e <- exprs xs, eval e == n]