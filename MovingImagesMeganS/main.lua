-----------------------------------------------------------------------------------------
-- Title: MovingObjects
-- Name: Megan.S
-- Course: ICS2O
-- This program moves a beetleship across the screen and then makes it fade out.
-----------------------------------------------------------------------------------------

-- hide the status bar on the iPad Air
display.setStatusBar(display.HiddenStatusBar)

-- global variables 
scrollSpeed = 3

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
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time ot moves sp that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", Moveship)
