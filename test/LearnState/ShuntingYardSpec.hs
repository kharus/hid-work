module LearnState.ShuntingYardSpec where

import Test.Hspec
import LearnState.ShuntingYard
import Expr

spec :: Spec
spec = do
  describe "parse expression" $ do
    it "2+3" $ do
      convertToExpr "2+3" `shouldBe` Add (Lit 2) (Lit 3)

    it "(2+3) * (3+2)" $ do
      convertToExpr "(2+3) * (3+2)" `shouldBe` Mult (Add (Lit 2) (Lit 3)) (Add (Lit 3) (Lit 2))