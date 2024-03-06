module ExpressionEvaluator(evalExpression) where

import ArithmeticExpression

evalExpression :: Expression -> Int
evalExpression (Val n) = n
evalExpression (Sum x y) = (evalExpression x) + (evalExpression y)
evalExpression (Mult x y ) = (evalExpression x) * (evalExpression y)