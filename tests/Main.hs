module Main
  ( main
  ) where

import Protolude

import Test.Tasty (defaultMain, TestTree, testGroup)
import Test.Tasty.Hspec (describe, it, testSpec, shouldBe)

main :: IO ()
main = do
  t <- sequence allTests
  defaultMain . testGroup "Porth" $ t
  where
    allTests = [tests]

tests :: IO TestTree
tests =
  testSpec "PorthHs" $
  describe "the feature" $ it "has a test" $ 1 `shouldBe` (1 :: Int)
