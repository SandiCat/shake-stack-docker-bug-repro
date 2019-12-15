module Main (main) where

import Development.Shake

main :: IO ()
main = shakeArgs shakeOptions $ do
    phony "build" $ do
        command_ [Cwd "../my-app"] "stack" ["build"]
        putQuiet "done building"
