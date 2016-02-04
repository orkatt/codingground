continues :: String -> String
continues "be" = "being"
continues verb = verb++"ing"

parse :: (String, String) -> [String]
parse (i, v) = [""]

main = do
{
    putStrLn "hello world";
    y <- fmap words getLine;
    
    putStrLn parse (head y, last y);
}
