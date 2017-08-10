{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

import qualified Data.Text.IO as T
import           Control.Exception
import           Formatting
import           Formatting.Clock
import           System.Clock
import           Data.Time
import           Formatting

main :: IO ()
main = do
  start0 <- getTime Monotonic
  let loop start = do
        line <- T.getLine
        end <- getTime Monotonic
        fprint ("(" % timeSpecs % ") " % build % "\n") start end line
        loop end
  catch (loop start0) (\(_ :: IOException) -> pure ())
