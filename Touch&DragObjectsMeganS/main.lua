-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Megan.S
-- Course: ICS2O Programming
-- This program will show an image, and the user can drag and drop the image on the
-- iPad Air
-----------------------------------------------------------------------------------------

-- Hide the status bar on the iPad Air

display.setStatusBar(display.HiddenStatusBar)

-- Create the local variables for thi program

local bunnyGirl
local queenGirl

local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local bunnyGirl = display.newImageRect("Images/bunnyGirl", 150, 150)
local bunnyGirlWidth = bunnyGirl.width 
local bunnyGirlHeight = bunnyGirl.height

local queenGirl = display.newImageRect("Images/queenGirl", 150, 150)
local queenGirlWidth = queenGirl.width
local queenGirlHeight = queenGirl.height

-- My boolean variables to keep track of which object I touched first
local alreadyTouchedbunnyGirl = false
local aldreayTouchedqueenGirl = false

-- Set the initial x and y poistion of myImage
bunnyGirl.x = 400
bunnyGirl.y = 500

queenGirl.x = 300
queenGirl.y = 200

-- Function: queenGirlListener
-- Input: touch listener
-- Output: none
-- Description: when queen girl is touched, move her
local function queenGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedbunnyGirl == false) then
			alreadTouchedqueenGirl = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadTouchedqueenGirl == true) ) then
		







