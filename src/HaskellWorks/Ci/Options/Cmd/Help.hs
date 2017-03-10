{-# LANGUAGE DeriveAnyClass   #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TemplateHaskell  #-}

module HaskellWorks.Ci.Options.Cmd.Help
  ( CmdHelp(..)
  , parserCmdHelp
  ) where

import Control.Lens
import Data.Text.Lazy
import HaskellWorks.Ci.Options.Internal
import Options.Applicative

data CmdHelp = CmdHelp deriving (Show, Eq)

makeLenses ''CmdHelp

parserCmdHelp :: Parser CmdHelp
parserCmdHelp = pure CmdHelp