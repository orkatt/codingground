fun v = "["++v++"for fun!]"

continues verb = verb++"ing"

main = do
{
    putStrLn "hello world";
    x <- getLine;
    putStrLn (fun (x ++ " just "));
    putStrLn (continues x);
}
