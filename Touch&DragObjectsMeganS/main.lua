-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Megan.S
-- Course: ICS2O
-- This program will show an image, and the user can drag and drop the image on the
-- iPad Air 
------------------------------------------------------------------------------

-- hide the status bar on the iPad Air
display.setStatusBar(display.HiddenStatusBar)

-- Create the local variables for this program


local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

local yellowGirl = display.newImageRect("YBimages/yellowGirl.png", 150, 150)
local yellowGirlWidth = 30
local yellowGirlHeight = 50

local blueGirl = display.newImageRect("YBimages/blueGirl.png" , 150, 150)
local blueGirlWidth = 30
local blueGirlHeight = 50

local greyGirl = display.newImageRect("YBimages/greyGirl.png", 150, 150)
local greyGirl = 30
local greyGirl = 50

-- My boolean variables to keep track of which object I touched first
local alreadyTouchedyellowGirl = false
local alreadyTouchedblueGirl = false
local alreadyTouchedgreyGirl = false

-- Set the initial x and y positions pf MyImage

yellowGirl.x = 400
yellowGirl.y = 500

blueGirl.x = 300
blueGirl.y = 200

greyGirl.x = 600
greyGirl.y = 300

-- Function: blueGirlListener
-- Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her

local function blueGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedgreyGirl == false) then
			if (alreadyTouchedyellowGirl == false) then
				alreadyTouchedblueGirl = true
			end
		end
	end

	if ( (touch.phase == "moved") amd (alreadyTouchedblueGirl == true) ) then
		blueGirl.x = touch.x
		blueGirl.y = touch.y
	end

	if  (touch.phase == "ended") then
		alreadyTouchedblueGirl = false
		alreadyTouchedyellowGirl = false
		alreadyTouchedgreyGirl = false
	end
end

-- Add an event listener to blueGirl
blueGirl:addEventListener("touch", blueGirlListener)

-- Function: yellowGirlListener
-- Input: touch listener
-- Output: none
-- Description: when yellow girl is touched, move her

local function yellowGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedgreyGirl == false) then
			if (alreadyTouchedblueGirl == false) then
				alreadyTouchedyellowGirl = true
			end
		end
	end	
	
	if ( (touch))



