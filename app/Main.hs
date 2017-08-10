{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

import           Control.Exception
import qualified Data.Text.IO as T
import           Data.Time
import           Formatting
import           Formatting.Clock
import           System.Clock
import           System.IO

main :: IO ()
main = do
  start0 <- getTime Monotonic
  hSetBuffering stdout LineBuffering
  hSetBuffering stdin LineBuffering
  let loop start = do
        line <- T.getLine
        end <- getTime Monotonic
        fprint ("(" % timeSpecs % ") " % build % "\n") start end line
        loop end
  catch (loop start0) (\(_ :: IOException) -> pure ())
