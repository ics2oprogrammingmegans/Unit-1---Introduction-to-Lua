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
 ground.y = display.contentHeight*1/10

 -- Change the width to be the same as the screen
 ground.width = display.contentWidth/2048

 -- Add to physics
 physics.addBody(ground, "static", {friction = 0.5, bounce= 0.3})

-------------------------------------------------

local beam = display.newImage("Images/beam.png", 0, 0)

-- Set the x and y position
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

beam = display.contentWidth/2
beam = display.contentHeight*1/10


-- Add to physics
physics:addBody(beam, "static", {friction = 0.5, bounce = 0.3})

-- Create background
local background = display.newImage("Images/background.png", 0, 0)

background.width = display.contentWidth/2048
background.height = display.contentHeight/1536

background.x = display.contentCenterX
background.y = display.contentCenterY

-- Send to the back 
background:toBack()

	
-- Creating the first ball
local ball1 = display.newImage("Images/super_ball.png", 0, 0)

-- Create the second ball
local ball2 = display.newImage("Images/super_ball.png", 0, 0)

-- Create the thrid ball
local ball3 = display.newImage("Images/super_ball.png", 0, 0)

-- Create the fourth ball
local ball4 = display.newImage("Imag/super_ball.png", 0, 0)

------------------------------------------------
-- FUNCTIONS --
------------------------------------------------

local function firstBall()

	-- Add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end


------------------------------------------------

local function secondBall()

	-- Add to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	object:scale(0.5, 0.5)
end

------------------------------------------------

local function thridBall()

	-- Add to physics
	physics.addBody(ball3, {density=1.0, friction=0.5, bounce=0.3, radius=6.25})

	object:scale(0.25, 0.25)
end

------------------------------------------------

local function fourthBall()

	-- Add to physics
	physics.addBody(ball4, {density=1.0, friction=0.5, bounce=0.3, radius=3.125})

	object:scale(0.125, 0.125)
end

------------------------------------------------
-- TIMER DELAYS --
------------------------------------------------

timer.performwithDelay( 0, firstBall)
timer.performwithDelay( 500, secondBall)
timer.performwithDelay( 1000, thridBall)
timer.performwithDelay( 1500, fourthBall)






