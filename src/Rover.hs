module Rover where

import Orientation

data Rover = Rover {
  direction :: Direction
  , position :: Position
  } deriving (Eq, Show)
