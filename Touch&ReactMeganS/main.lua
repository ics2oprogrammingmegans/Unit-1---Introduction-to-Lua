-------------------------------------------------------------------------------------------
-- Title: TouchAndReact
-- Name: Megan.S
-- Course: ICS2O
-- This program does something when I click on the button.
----------------------------------------------------------------------------------------------

-- Set background colour 
local Background1 = display.setDefault ("background", 153/255, 204/255, 1)

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--Create a blue button, set its position and make it visible

local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 

--Create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

--Create a background once the button is clicked
local backgroundImage = display.newImageRect("Images/Galaxy.png", 2048, 1536)

--Create a text object, and set its positio and make it invisible
textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false

--Function: BlueButtonListener
--Input: touch listener
--Output: none
--Description: when blue button is clicked, it will make the text appear with the red button,
-- and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		Background1.isVisible = false
		backgroundImage.isVisible = true
	end

	if (touch.phase == "ended") then
		Background1.isVisible = true
		backgroundImage.isVisible = false
	end
end

local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
	end
end

--Add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)


--Function: RedButtonListener
--Input: touch listener
--Output: none
--Description: when red button is clicked, it will make the text appear with the blue button,
-- and make the red button disappear
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = false
		blueButton.isVisible = true
		textObject.isVisible = false
	end

	if (touch.phase == "ended") then
		redButton.isVisible = false
		blueButton.isVisible = true
		textObject.isVisible = false
	end
end

--Add the respective linteners to each object 
redButton:addEventListener("touch", RedButtonListener)
