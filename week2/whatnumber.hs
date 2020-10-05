check :: Int -> Int -> (Bool, String)
check number guess
     = if number == guess 
          then (True, "You Win")
          else if number > guess  
               then (False, "Guess Higher")
               else (False, "Guess Lower")

              