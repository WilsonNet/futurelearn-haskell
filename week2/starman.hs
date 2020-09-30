-- specification before implementation.
check :: String -> String -> Char -> (Bool, String)
check word display c
  = (c `elem` word, [if x==c
            then c
            else y | (x, y) <- zip word display])

turn :: String -> String -> Int-> IO ()
turn word display n =
  do if n == 0
       then putStrLn "You Lose"
       else if word == display
              then putStrLn "You Win!"
              else mkguess word display n