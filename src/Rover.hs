module Rover where

import Direction
import Position

data Rover = Rover {
  direction :: Direction
  , position :: Position
  } deriving (Eq, Show)
