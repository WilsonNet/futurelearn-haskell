getFirstLetter :: [Char] -> [Char]
getFirstLetter "" = ""
getFirstLetter word =
  let firstLetter = head word
   in firstLetter : " is for " ++ word

speller :: [[Char]] -> [Char]
speller [] = []
speller list =
  let   
    mapped = map getFirstLetter list
    resulted = foldl (\acc elt -> acc ++ ", " ++ elt) "" mapped
  in
    resulted

test1 = speller ["abacus"]
test2 = speller ["whisky", "x-ray"]
test3 = speller ["whisky", "x-ray", "", "bar"]

main :: IO ()
main =
  do
    print test1
    print test2
    print test3

-- Tests
-- speller [] -- > ""
-- > "a is for apple, b is for banana, and c is for coconut"
-- > "w is for whisky, and x is for x-ray"
