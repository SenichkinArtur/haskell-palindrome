import Pal (isPalindrome, normalize)

-- interactive programm

main :: IO ()
main =
  do
    print "Enter a string"
    word <- getLine
    print (verbose word)

verbose :: String -> String
verbose word =
  case isPalindrome word of
    Nothing -> "Please enter a word"
    Just False -> "It's not a palindrom"
    Just True -> "It's a palindrom"
