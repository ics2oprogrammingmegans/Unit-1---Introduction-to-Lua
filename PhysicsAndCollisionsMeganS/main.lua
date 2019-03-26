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

-- Add to 