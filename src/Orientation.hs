module Orientation where

data Position = Position Int Int
  deriving (Eq, Show)

data Direction = North | East | South | West
  deriving (Eq, Show)

data Command = Forward | Backward
  deriving (Eq, Show)

move :: Command -> Direction -> Position -> Position
move Forward North (Position x y) = Position x (y+1)
move Forward East (Position x y) = Position (x+1) y
move Forward South (Position x y) = Position x (y-1)
move Forward West (Position x y) = Position (x-1) y
move Backward North (Position x y) = Position x (y-1)
move Backward East (Position x y) = Position (x-1) y
move Backward South (Position x y) = Position x (y+1)
move Backward West (Position x y) = Position (x+1) y
