continues :: String -> String
continues "be" = "being"
continues verb = verb++"ing"

contW :: String -> String
contW "I" = "am"
contW "You" = "are"
contW "He" = "is"
contW "She" = "is"
contW "It" = "is"


tenseCont :: [String] -> [String]
tenseCont (who:verb) =
      who : 
      contW who : 
      continues (head verb) : 
      tail verb
      


printLs :: [String] -> IO ()
printLs [] = do putStr ""
printLs s = do
    putStr (head s)
    if length s > 1 then putStr " " else putStr ""
    printLs (tail s)


printL :: [String] -> IO ()
printL s = do
   putStr "-<[ "
   printLs s
   putStr " ]>-"


main = do
{
    putStrLn "hello world";
    y <- fmap words getLine;
    
    printL (tenseCont y)
}
