check :: Int -> Int -> Bool
check number guess
     = if number == guess 
          then (True, "You Win")
          else if number > guess  
               then (False, "Guess Higher")
               else (False, "Guess Lower")


turn :: Int -> Int -> Bool -> String -> IO ()
turn number n status tip
  do if n == 0 
    then putStrLn "You Lose"
    else if (status == True)
         putStrLn tip 
      else 
         putStrLn tip
         mkguess number

mkguess :: Int -> IO()
mkguess number n = 
  do putStrLn "Enter your guess: "
     q <- getLine
     let (status, tip) = check number guess q
     let n' = if status then n else n-1
     turn n' status tip


      
whatnumber :: Int -> Int -> IO ()              
whatnumber number n = turn number n False "Make your first guess"