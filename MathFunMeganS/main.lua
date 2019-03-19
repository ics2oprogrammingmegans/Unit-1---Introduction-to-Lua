-----------------------------------------------------------------------------------------
-- Title: MathFun
-- Name: Megan.S
-- Course: ICS2O
-- This program will add the eztra functions such as divison and multiplication, and it will round the number 0.5 and above
-- up and below 0.5 will round down
-----------------------------------------------------------------------------------------

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--Sets the background colour
display.setDefault("background", 1, 1, 204/255)

--Create the pictures for the green check mark and the red cross
local correctCheckMark = display.newImageRect("Images/checkmark.png", 200, 125 )
correctCheckMark.x = display.contentWidth/2
correctCheckMark.y = display.contentHeight*7/10
correctCheckMark.isVisible = false

local wrongRedCross = display.newImageRect("Images/red_x.png", 195, 130 )
wrongRedCross.x = display.contentWidth/2
wrongRedCross.y = display.contentHeight*7/10
wrongRedCross.isVisible = false

--------------------------------------------------------------------------------
-- Create the local variables --
---------------------------------------------------------------------------------
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local textIntro
local points = 0

--Add the local variables for the sound
local correctSound = audio.loadSound( "Sounds/correctSound.mp3" )
local correctSoundChannel

---------------------------------------------------------------
-- Create the local functions --
------------------------------------------------------------------
local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(10, 20)
	randomNumber2 = math.random(10, 20)
	randomNumber3 = math.random(1, 4)
	numericField.text = ""

	if (randomNumber3 == 1) then

		correctAnswer = randomNumber1 + randomNumber2

		--Create the question in the text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomNumber3 == 2 ) then

		correctAnswer = randomNumber1 - randomNumber2

		--Create the question in the text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

	elseif ( randomNumber3 == 3 ) then

		correctAnswer = randomNumber1 * randomNumber2

		--Create the question in the text object
		questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "

	else 

		correctAnswer = randomNumber1 / randomNumber2 

		--Create the question in the text object
		questionObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = "
	end

end


local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end	

local function HideIncorrect()
	incorrectObject.isVisible = false
	AskQuestion()
end	

local function HideWrongRedCross()
	wrongRedCross.isVisible = false
	AskQuestion()
end

local function HideCorrectCheckark()
	correctCheckMark.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )
	
	--User begins editing "numericField"
	if ( event.phase == "began" ) then

		--Clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then


		--When the answer is submited (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		--If the users answer and the correct answer are the same:
		if ( userAnswer == correctAnswer ) then
			points = points + 1
			pointsObject.text = "Points: " .. points
			correctObject.isVisible = true
			correctCheckMark.isVisible = true
			wrongRedCross.isVisible = false
			timer.performWithDelay(3000, HideCorrect)
			timer.performWithDelay(3000, HideCorrectCheckark)

			correctSoundChannel = audio.play(correstSound)

		elseif ( userAnswer ~= correctAnswer ) then
			incorrectObject.isVisible = true
			wrongRedCross.isVisible = true
			correctCheckMark.isVisible = false
			timer.performWithDelay(3000, HideIncorrect)
			timer.performWithDelay(3000, HideWrongRedCross)
		end
	end
end


--Displays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 70 )
questionObject:setTextColor(155/255, 42/255, 198/255)

pointsObject = display.newText("Points: " .. points, display.contentWidth*4/5, display.contentHeight*1/10, nil, 50 )
pointsObject:setTextColor(0, 0, 0)

--Create the correct text object and make it invisible 
correctObject = display.newText("Correct!", display.contentWidth/2, display.contentHeight*3/10, nil, 70 )
correctObject:setTextColor(155/255, 42/255, 198/255)
correctObject.isVisible = false

--Create the incorrect text object and make it invisible 
incorrectObject = display.newText("Incorrect!", display.contentWidth/2, display.contentHeight*3/10, nil, 70 )
incorrectObject:setTextColor(102/255, 178/255, 1)
incorrectObject.isVisible = false

--Create numeric field
numericField = native.newTextField( display.contentWidth*2/3, display.contentHeight/2, 200, 80 )
numericField.inputType = "number"

--Add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

------------------------------------------------------------------------------
-- Function calls --
------------------------------------------------------------------------------
--Call the function to ask the question
AskQuestion()













