
v1 :: String -> String -> String
v1 s v
    | s=="I" || s=="We" || s== "You" || s == "They"  = v
    | last v == 'o'  = v ++ "es"
    | otherwise      = v ++ "s"

v1be :: String -> String
v1be s 
    | s=="I"                           = "am"
    | s=="He" || s=="She" || s=="It"   = "is"
    | s=="We" || s=="You" || s=="They" = "are"

v2 :: String -> String
v2 v = v ++ "ed"

v3 :: String -> String
v3 v = v ++ "ed"

ving :: String -> String
ving "be" = "being"
ving v = v ++ "ing"


-- PRESENT CONTINUOUS
-- Form: BE + present participle (I am doing; he/she/it is doing; we/you/they are doing).
--PresentContinues :: [String] -> [String]
--PresentContinues (s:v:t)


contW :: String -> String
contW "I" = "am"
contW "You" = "are"
contW "He" = "is"
contW "She" = "is"
contW "It" = "is"


tenseSimple :: [String] -> [String]
tenseSimple (s:v:t) =
    s :
    v1 s v :
    t

tenseCont :: [String] -> [String]
tenseCont (s:verb) =
      s : 
      v1be s : 
      ving (head verb) : 
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
   putStrLn " ]>-"


main = do
{
--    putStrLn "hello world";
--    y <- fmap words getLine;
    
    printL (tenseSimple ["I", "test" ]);
    printL (tenseCont   ["I", "test" ]);
    printL (tenseSimple ["He", "print"]);
    printL (tenseCont   ["He", "print"]);
}

