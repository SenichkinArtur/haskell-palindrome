module Pal where

import Data.Char (isLetter, toLower)

-- Palindrom logic

isPalindrome :: String -> Maybe Bool
isPalindrome = isOwnReverseMaybe . rejectEmpty . normalize

normalize :: String -> String
normalize = filter isLetter . map toLower

rejectEmpty :: String -> Maybe String
rejectEmpty word =
  case word of
    [] -> Nothing
    _anyString -> Just word

isOwnReverseMaybe :: Maybe String -> Maybe Bool
isOwnReverseMaybe maybeWord =
  case maybeWord of
    Nothing -> Nothing
    Just word -> Just (word == reverse word)

-- Implementation of the Prelude functions (for exercise purposes)

-- myMap :: (a -> a) -> [a] -> [a]
-- myMap func list =
--   case list of
--     [] -> []
--     head : rest -> func head : myMap func rest
--
-- myFilter :: (Char -> Bool) -> String -> String
-- myFilter predicate phrase =
--   case phrase of
--     [] -> []
--     first : remainder ->
--       if predicate first
--         then first : myFilter predicate remainder
--         else myFilter predicate remainder
