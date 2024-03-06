module LibStringExpression (someFunc) where
import ArithmeticExpression
import ExpressionEvaluator
import StringToExpression

someFunc :: IO ()
someFunc = do
    let exprString = "8 + 3"
        expr = stringToExpression exprString
    print (evalExpression expr)