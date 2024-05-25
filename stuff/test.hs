module Mult1 where
--
hello :: String
hello = "hello"

world :: String
world = "world"

main :: IO()
main = do
  putStrLn myGreeting1
  putStrLn myGreeting2
    where myGreeting1 = concat [hello, " ", world, " 1"]
          myGreeting2 = hello ++ " " ++ world ++ " 2"
