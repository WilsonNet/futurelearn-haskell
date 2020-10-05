check :: Int -> Int -> (Bool, String)
check number guess
     = if number == guess 
          then (True, "You Win")
          else if number > guess  
               then (False, "Guess Higher")
               else (False, "Guess Lower")


turn :: Int -> Int -> Int -> IO ()
turn number n
  do if n == 0 
    then putStrnLn "You Lose"
    else
      if (head checkResult == True)
        putStrLn tip
      else 
        mkguess n tip

mkguess :: Int -> IO()
mkguess tip n = 
    do putStrlLn (tip)
       putStrLn "Enter your guess: "
       q <- getLine
       let (win, tip) = check number guess q

      
whatnumber :: Int -> Int -> IO ()              
whatnumber number n = turn number n