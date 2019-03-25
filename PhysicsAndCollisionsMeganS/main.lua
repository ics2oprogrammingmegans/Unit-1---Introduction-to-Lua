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
 local ground = display.newImage("Physics/ground.png", 0 , 0)
 ground.x = display.contentWidth/2
 ground.y = display.contentHeight*9/10