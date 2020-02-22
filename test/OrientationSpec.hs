module OrientationSpec (spec) where

import Test.Hspec
import Orientation

spec :: Spec
spec = do
  describe "move" $ do
    let initPosition = Position 0 0

    describe "Forward" $ do
      let testForward direction = move Forward direction initPosition
      it "when looking North" $ do
        testForward North `shouldBe` Position 0 1
      it "when looking East" $ do
        testForward East `shouldBe` Position 1 0
      it "when looking South" $ do
        testForward South `shouldBe` Position 0 (-1)
      it "when looking West" $ do
        testForward West `shouldBe` Position (-1) 0

    describe "Backward" $ do
      let testBackward direction = move Backward direction initPosition
      it "when looking North" $ do
        testBackward North `shouldBe` Position 0 (-1)
      it "when looking East" $ do
        testBackward East `shouldBe` Position (-1) 0
      it "when looking South" $ do
        testBackward South `shouldBe` Position 0 1
      it "when looking West" $ do
        testBackward West `shouldBe` Position 1 0
