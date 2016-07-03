module OOFun where

-- class Coll b where
--   add :: b -> Int -> b
--   del :: b -> Int -> b
--   has :: b -> Int -> Bool

add :: a -> Int -> a
add xs n = n : xs

del :: a -> Int -> a
del (x:xs) n = if n == x then del xs n else x : del xs n

has :: a -> Int -> Bool
has [] _ = False
has (x:xs) n = if n == x then True else has xs n
       
