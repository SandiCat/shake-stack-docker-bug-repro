module Main (main) where

import Development.Shake

main :: IO ()
main = shakeArgs shakeOptions $ do
    phony "build" $ do
        command_ [Cwd "../my-app/"] "stack" ["-v", "build"]
        -- command_ [] "docker" ["run", "--rm", "alpine", "ls", "/bin"]
        putQuiet "done building"
