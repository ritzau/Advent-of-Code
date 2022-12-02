module Main where

import AoC21E01 (sonarSweep)
import AoC22E01 (calorieCounting)
import AoC22E02 (rockPaperScissors)

data Episode
  = S21E01
  | S22E01
  | S22E02

runEpisode S21E01 = sonarSweep
runEpisode S22E01 = calorieCounting
runEpisode S22E02 = rockPaperScissors

main :: IO ()
main = runEpisodes [S21E01, S22E01, S22E02]
  where
    runEpisodes (e : es) = do
      runEpisode e
      runEpisodes es
    runEpisodes _ = return ()