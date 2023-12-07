module MyLib (Tree (..), insert, minElem, deleteMin) where

data (Ord a) => Tree a = Null | Fork a (Tree a) (Tree a)

-- Skew heap

isEmpty Null                = True
isEmpty (Fork x a b)        = False

minElem (Fork x a b)        = x
deleteMin (Fork x a b)      = merge a b

insert x a                  = merge (Fork x Null Null) a

merge a Null                = a
merge Null b                = b
merge a b
    | minElem a <= minElem b    = join a b
    | otherwise                 = join b a

join (Fork x a b) c = Fork x b (merge a c)