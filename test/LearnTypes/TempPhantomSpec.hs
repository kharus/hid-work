module LearnTypes.TempPhantomSpec where

import Test.Hspec
import Expr
import LearnTypes.TempPhantom

spec :: Spec
spec = do
  describe "add temps" $ do
    it "2+3" $ do
      let 
        paperBurning :: Temp F
        paperBurning = 451

        absoluteZero :: Temp C
        absoluteZero = -273.15

      paperBurning `shouldBe` paperBurning