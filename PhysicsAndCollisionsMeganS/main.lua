-----------------------------------------------------------------------------------------
-- Title: PhysicsAndCollisions
-- Name: Megan.S
-- Course: ICS2O
-- This program
-----------------------------------------------------------------------------------------

--Hide the status bar on the iPad Air
display.setStatusBar(display.HiddenStatusBar)

--Load physics
local physics = require("physics")

--Start physics
physics.start()
-----------------------------------------------------------
--OBJECTS--
-----------------------------------------------------------

--Create the ground and set its x and y 
 local ground = display.newImage("Images/ground.png", 0 , 0)
 ground.x = display.contentWidth/2
 ground.y = display.contentHeight*9/10

 -- Change the width to be the same as the screen
 ground.wdth = display.contentWidth 

 -- Add to physics
 physics.addBody(ground, "static", {friction = 0.5, bounce=0.3})

-------------------------------------------------

local beam = display.newImage("Images/beam.png", 0, 0)

-- Set the x and y position
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

beam = display.contentWidth/2
beam = display.contentHeight*1/10

-- Rotate the beam -60 degrees to its on an angle
beam:rotate(45)

-- Send it to the back layer 
beam:toBack()

-- Add to physics
	physics.addBody(beam, "static", {friction-0.5, bounce-0.3})

-- Create background
local background = display.newImage("physics/background.png", 0, 0)

	-- Set the x and y position
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	background = display.contentWidth/768
	background = display.contentHeight/1024

	-- Senf to the back 
	background:toBack()



------------------------------------------------
-- FUNCTIONS --
------------------------------------------------

-- Create the first ball
local function firstBall()
	-- Creating the first ball
	local ball1 = display.newImage("Physics/super_ball.png", 0, 0)

	-- Add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end


------------------------------------------------

local function secondBall()

-- Create the second ball
	local ball2 = display.newImage("Physics/super_ball.png", 0, 0)

	-- Add to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	object:scale(0.5, 0.5)
end


------------------------------------------------
-- TIMER DELAYS --
------------------------------------------------
timer.performwithDelay( 0, firstBall)
timer.performwithDelay( 500, secondBall)





























