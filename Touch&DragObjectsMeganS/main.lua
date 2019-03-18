-----------------------------------------------------------------------------------------
-- Title: MovingObjects
-- Name: Megan.S
-- Course: ICS2O
-- This program moves a beetleship across the screen and then makes it fade out.
-- I added another object that moves in a 
-- Different dircertion as well as a background
-- Image
-----------------------------------------------------------------------------------------

-- hide the status bar on the iPad Air
display.setStatusBar(display.HiddenStatusBar)

-- global variables 
scrollSpeedBettleShip = 3

-- add a background image with width and height 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initail x and y position of the beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: Moveship
-- Input: this function accepts an event listener 
-- output: none 
-- Description: This function adds the scroll speed to the x-value of the ship
local function Moveship(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeedBettleShip
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end
-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", Moveship)

-----------------------------------------------------------------------

-- add a scroll speed to the octopus and move it from right to left 
scrollSpeedOctopus = -4

-- add the character image with the width and height of the octopus
Octopus = display.newImageRect("Images/octopus.png", 300, 300)

--set the octopus image to be transparent
Octopus.alpha = 1

-- set the initail x and y position of the octopus
Octopus.x = 1024
Octopus.y = display.contentHeight/2

-- Function: MoveOctopus
-- Input: This function accepts an event listener
-- Output: none
-- Descriptions: This function adds the scroll speed to the x-value of the octopus
local function MoveOctopus(event)
	-- add the scroll speed to the x-value of the octopus
	Octopus.x = Octopus.x + scrollSpeedOctopus
	-- change the transparency of the octopus every time it moves so that it fades in
	Octopus.alpha = Octopus.alpha - 0.001
end
 -- MoveOctopus will be called over and over again
 Runtime:addEventListener("enterFrame", MoveOctopus)

-- flip the Octopus direction
Octopus:scale (-1, 1)
 





