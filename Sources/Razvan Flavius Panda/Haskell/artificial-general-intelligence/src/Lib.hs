{-# LANGUAGE TemplateHaskell #-}

module Lib where

import Control.Monad
import Development.Placeholders

run :: WorldState -> IO ()
run startingWorldState =
  when (goalAchieved startingWorldState == Searching)
    $ run (action startingWorldState)

goalAchieved :: WorldState -> GoalAchievementState
goalAchieved worldState = $notImplemented

action :: WorldState -> WorldState
action worldState = $notImplemented

data WorldState = WorldState {
  time :: Time,
  externalState :: ExternalState,
  internalState :: InternalState
}

data Time = Time

data ExternalState = ExternalState

data InternalState = InternalState {
  goal :: Goal,
  worldLine :: [WorldState]
}

data Goal = Goal

data GoalAchievementState = Achieved | Failed | Searching deriving Eq