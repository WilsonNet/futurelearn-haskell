check :: Int -> Int -> (Bool, String)
check number guess
     = if number == guess 
          then (True, "You Win")
          else if number > guess  
               then (False, "Guess Higher")
               else (False, "Guess Lower")

turn :: Int -> Int -> Bool -> String -> IO ()
turn number n status tip =
  do if n == 0 
       then putStrLn "You Lose"
       else if (status == True)
               then  putStrLn tip 
               else do putStrLn tip
                       mkguess number n

mkguess :: Int -> Int -> IO()
mkguess number n = 
  do putStrLn ("You have " ++ show n ++ " tries")
     putStrLn "Enter your guess: "
     q  <- getLine
     let q' = (read q :: Int)
     let (status, tip) = check number q'
     let n' = if status then n else n-1
     turn number n' status tip
      
whatnumber :: Int -> Int -> IO ()              
whatnumber number n = turn number n False "Make your first guess"