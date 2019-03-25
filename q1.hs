module Q1 where

data Expr = Val Int | App Op Expr Expr
data Op = Add | Mul

eval :: Expr -> Int
eval (Val n) = n -- If a Val, return its value as an integer
eval (App Add x y) = eval x + eval y -- If an application of add, add the evals of its sub-expressions
eval (App Mul x y) = eval x * eval y -- If an application of multiply, add the evals of its sub-expressions

values :: Expr -> [Int]
values (Val n) = [n] -- If a Val, then its value is the only element of the list
values (App Add x y) = values x ++ values y -- If an application of add, return the values contained in its sub expressions
values (App Mul x y) = values x ++ values y -- If an application of multiply, return the values contained in its sub expressions

-- Instance of Show allowing Expr values to be displayed
instance Show Expr where
    show (Val n) = show n
    show (App Mul a b) = "(" ++ show a ++ "*" ++ show b ++ ")"
    show (App Add a b) = "(" ++ show a ++ "+" ++ show b ++ ")"