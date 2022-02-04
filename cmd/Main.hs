-- | Launch PorthHs server.
module Main
  ( main
  ) where

import Protolude

import Options.Applicative
  ( ParserInfo
  , execParser
  , fullDesc
  , header
  , helper
  , info
  , progDesc
  )

import Porth (Config(..), app)

-- | Parse the configuration from the command line.
options :: ParserInfo Config
options = info (helper <*> parser) description
  where
    parser = pure Config
    description =
      fold
        [ fullDesc
        , progDesc "Porth in Haskell"
        , header "PorthHs - TODO fill this in"
        ]

main :: IO ()
main = do
  cfg <- execParser options
  runReaderT app cfg
