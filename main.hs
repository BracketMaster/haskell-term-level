-- run with:
-- ghc --make main.hs
-- ./main

module Main(main) where

import Id

-- `t = Id.Id` complains with:
--    • Illegal term-level use of the type constructor ‘Id’
--        imported from ‘Id’ at main.hs:7:1-9
--        (and originally defined at Id.hs:(50,1)-(54,69))
--    • In the expression: Id
--      In an equation for ‘t’: t = Id
t = Id.Id

main :: IO ()
main = do
    putStrLn "Hi. It's a program."
