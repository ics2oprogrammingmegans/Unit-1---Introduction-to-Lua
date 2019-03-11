-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Megan.S
-- Course: ICS2O Programming
-- This program will show an image, and the user can drag and drop the image on the
-- iPad Air
-----------------------------------------------------------------------------------------

-- Hide the status bar on the iPad Air

display.setStatusBar(display.HiddenStatusBar)

-- Create the local variables for this program

local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150, 150)
local yellowGirlWidth = 20
local yellowGirlHeight = 50


local blueGirl = display.newImageRect("Images/blueGirl.png", 150, 150)
local blueGirlWidth = 20
local blueGirlHeight = 50

-- My boolean variables to keep track of which object I touched first
local alreadyTouchedyellowGirl = false
local aldreayTouchedblueGirl = false

-- Set the initial x and y poistion of myImage
yellowGirl.x = 400
yellowGirl.y = 500

blueGirl.x = 300
blueGirl.y = 200
--[[
-- Function: blueGirlListener
-- Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her
local function BlueGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) then
			alreadTouchedBlueGirl = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadTouchedBlueGirl == true) ) then
		blueGirl.x = 300
		blueGirl.y = 200
	end

	if (touch.phase == "ended") then
		alreadTouchedBlueGirl = false
		alreadyTouchedYellowGirl = false
    end
end

-- Add the respective listeners to each object
blueGirl:addEventListener("touch", blueGirlListener)
--]]--