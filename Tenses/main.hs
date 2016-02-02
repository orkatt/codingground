continues :: String -> String
continues "be" = "being"
continues verb = verb++"ing"

main = do
{
    putStrLn "hello world";
    x <- getLine;

    putStrLn (continues x);
}