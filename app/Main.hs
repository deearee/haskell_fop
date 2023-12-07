module Main where

import qualified MyLib (Tree (..), insert, minElem, deleteMin)
import Data.Function

main :: IO ()
main = do
  let t = (MyLib.Null :: MyLib.Tree Integer) & MyLib.insert 3 & MyLib.insert 2 & MyLib.insert 1
  print $ MyLib.minElem t