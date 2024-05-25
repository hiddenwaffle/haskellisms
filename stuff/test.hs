module Mult1 where
--
hello :: String
hello = "hello"

world :: String
world = "world"

main :: IO()
main = do
  putStrLn myGreeting
  where myGreeting = concat [hello, " ", world]
