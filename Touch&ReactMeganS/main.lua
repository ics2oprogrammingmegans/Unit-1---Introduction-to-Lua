-------------------------------------------------------------------------------------------
-- Title: TouchAndReact
-- Name: Megan.S
-- Course: ICS2O
-- This program does something when I click on the button.
----------------------------------------------------------------------------------------------

-- Set background colour 
background = display.setDefault ("background", 153/255, 204/255, 1)

--Create a background once the button is clicked
local backgroundImage = display.newImageRect("Images/Galaxy.png", 2048, 1536)
backgroundImage.x = 0
backgroundImage.y = 0
backgroundImage.isVisible = false

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

--Create a text object, and set its positio and make it invisible
textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false

--Create the volleyball image
local volleyball = display.newImageRect("Images/Volleyball.png", 150, 150)
volleyball.x = display.contentWidth/7
volleyball.y = display.contentHeight/3
volleyball.isVisible = false

local correctBuzzer = audio.loadStream("Sounds/Correct Answer Sound Effect.mp3")
local correctBuzzerChannel

--Function: BlueButtonListener
--Input: touch listener
--Output: none
--Description: when blue button is clicked, it will make the text appear with the red button,
-- and make the blue button disappear

local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		volleyball.isVisible = true
		redButton.isVisible = true
		blueButton.isVisible = false
		textObject.isVisible = true
		backgroundImage.isVisible = true
		
		correctBuzzerchannel = audio.play(correctBuzzer)
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		volleyball.isVisible = false
		backgroundImage.isVisible = false		
	end
end

--Add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)


--Function: RedButtonListener
--Input: touch listener
--Output: none
--Description: when red button is clicked, the blue button will appear
-- and the red button and the "clicked!" text will disappear
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = false
		blueButton.isVisible = true
		textObject.isVisible = false
		volleyball.isVisible = false
		backgroundImage.isVisible = false
	
	end

	if (touch.phase == "ended") then
		backgroundImage.isVisible = true
		redButton.isVisible = true
		blueButton.isVisible = false
		textObject.isVisible = true
		volleyball.isVisible = true
		
	end 
	
end

--Add the respective linteners to each object 
redButton:addEventListener("touch", RedButtonListener)
