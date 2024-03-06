module StringToExpression (stringToExpression) where
import ArithmeticExpression

tokenize :: String -> [String]
tokenize = words

stringToExpression :: String -> Expression
stringToExpression s = parseExpression (tokenize s)

parseExpression :: [String] -> Expression
parseExpression (t:ts)
    | isNumeric t = Val (read t)
    | t == "+"     = Sum (parseExpression ts) (parseExpression (tail ts))
    | t == "*"     = Mult (parseExpression ts) (parseExpression (tail ts))
    | t == "^"     = Pow (parseExpression ts) (parseExpression (tail ts))
    | t == "/"     = Div (parseExpression ts) (parseExpression (tail ts))
    | otherwise    = error "Expresión no válida"

isNumeric :: String -> Bool
isNumeric s = case reads s :: [(Int, String)] of
    [(_, "")] -> True
    _         -> False
