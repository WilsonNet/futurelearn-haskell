test :: [Char] -> [Char]
test word = word

getFirstLetter :: [Char] -> [Char]
getFirstLetter word = 
  let
    firstLetter = head word
  in
    firstLetter : " is for " ++  word


speller :: [[Char]] -> [Char]
speller [] = "" 
-- speller wordList = foldl function "" wordList

-- Tests
-- speller ["abacus"] -- > "a is for abacus"
-- speller [] -- > ""
-- speller ["apple", "banana", "coconut"] 
 -- > "a is for apple, b is for banana, and c is for coconut"
-- speller ["whisky", "x-ray"]
 -- > "w is for whisky, and x is for x-ray"
