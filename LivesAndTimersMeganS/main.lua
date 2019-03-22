------------------------------------------------------------------------------------------
-- Lives and Timers
-- Name: Megan.S
-- Course: ICS2O
-- This program will ask the user either an addition or subtraction question, and the program will
-- caculate the user's answer and display an image.
-----------------------------------------------------------------------------------------

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--Sets the background colour
display.setDefault("background", 1, 1, 204/255)

--Create the pictures for the green check mark and the red cross
local correctCheckMark = display.newImageRect("Images/checkmark.png", 200, 70)
correctCheckMark.x = display.contentWidth/3
correctCheckMark.y = display.contentHeight/3
correctCheckMark.isVisible = false

local wrongRedCross = display.newImageRect("Images/red_x.png", 200, 70 )
wrongRedCross.x = display.contentWidth/3
wrongRedCross.y = display.contentHeight/3
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
local incorrectSound = audio.loadSound( "Sounds/incorrectSound.mp3" )
local incorrectSoundChannel

--Create the local variables for the timer
local totalSeconds = 15
local secondsLeft = 15
local clockText 
local countDownTimer

--Create the variables for the hearts
local lives = 5
local heart1
local heart2
local heart3
local heart4


--Create local variables for the incorrect and correct object
local incorrectObject 
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

		correctAnswer = math.round(randomNumber1 / randomNumber2 * 100 / 100)

		--Create the question in the text object
		questionObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = "
	end

end


local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end	

local function HideIncorrect()
	incorrectText.isVisible = false
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

			correctSoundChannel = audio.play(correctSound)

		elseif ( userAnswer ~= correctAnswer ) then
			incorrectText.isVisible = true
			wrongRedCross.isVisible = true
			correctCheckMark.isVisible = false
			timer.performWithDelay(3000, HideIncorrect)

			incorrectSoundChannel = audio.play(incorrectSound)
		
		end
	end
end


--Displays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 70 )
questionObject:setTextColor(155/255, 42/255, 198/255)

pointsObject = display.newText("Points: " .. points, display.contentWidth*4/5, display.contentHeight*1/10, nil, 50 )
pointsObject:setTextColor(0, 0, 0)

--Create the correct text object and make it invisible 
correctObject = display.newText("Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 70 )
correctObject:setTextColor(155/255, 42/255, 198/255)
correctObject.isVisible = false

--Create the incorrect text object and make it invisible 
incorrectText = display.newText("Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 70 )
incorrectText:setTextColor(102/255, 178/255, 1)
incorrectText.isVisible = false

--Create numeric field
numericField = native.newTextField( display.contentWidth*2/3, display.contentHeight/2, 200, 80 )
numericField.inputType = "number"

--Add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

incorrectObject = display.newText( display.contentWidth/3, display.contentHeight*2/3, nil, 70 )
incorrectObject.isVisible = false

--Set the text colour of the countDownTimer to be light purple


------------------------------------------------------------------------------
-- Function calls --
------------------------------------------------------------------------------
--Call the function to ask the question
AskQuestion()












