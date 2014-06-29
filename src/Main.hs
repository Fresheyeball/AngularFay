module Main (main) where

import Angular
import FFI

setScopeStr :: NgScope -> String -> String -> Fay()
setScopeStr = ffi "%1[%2] = %3"

barCtrl :: NgScope -> Fay()
barCtrl scope = do
  setScopeStr scope "jello" "yellOw"

main :: Fay()
main = do
  foo   <- newNgModule "foo" []
  bar   <- ngController foo "bar" barCtrl
  putStrLn "murf"