module Q5 where

import Q4
import Q1

combine :: Expr -> Expr -> [Expr]
combine l r = [App o l r | o <- [Add, Mul]]

exprs :: [Int] -> [Expr]

exprs [] = []
exprs [n] = [Val n]
exprs ns = [ e | (ls, rs) <- split ns
                , l <- exprs ls
                , r <- exprs rs
                , e <- combine l r]
    