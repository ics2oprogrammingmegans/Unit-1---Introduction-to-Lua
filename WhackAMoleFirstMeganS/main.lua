-----------------------------------------------------------------------------------------
-- Title: WhackAMole
-- Name: Megan.S
-- Course: ICS2O
-- This program will make an object appear on the screen for an amount of time and then disappears
-- the score increases by 1 
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
-- CREATE THE LOCAL VARIABLES/ OBJECCT CREATION--
-----------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)


-- Create the background colour
display.setDefault( "background", 0, 0, 0 )

-- Create the rabbit
local rabbit = display.newImage( "Images/rabbit.png", 0, 0 )

	-- Setting the position for the rabbit
	rabbit.x = display.contentCenterX
	rabbit.y = display.contentCenterY 


	rabbit:scale(2, 2)

	rabbit.isVisible = false

-- Create the local variables for the score

local score = 0 

local scoreObject = display.newText( "Score: ", display.contentWidth/7, display.contentHeight*1/10, nil, 50 )

scoreObject:setTextColor( 1, 1, 1 )

-- Create the sound for when the rabbit is touched
local PopSound = audio.loadSound ( "Sounds/PopSound.wav" )
local PopSoundChannel
-----------------------------------------------------------------------------------
-- FUNCTIONS-- 
-----------------------------------------------------------------------------------

-- Thism function that makes the rabbit appear in a raondom (x,y) position on the screen
-- before calling the Hide function

function PopUpDelay()

	-- Choosing Random Position on the screen between 0 and the size of the screen 
	rabbit.x = math.random( 0, display.contentWidth )
	rabbit.y = math.random( 0, display.contentHeight )

	rabbit.isVisible = true

	timer.performWithDelay( 700, Hide )

end

-- This function makes the rabbit invisible and then calls the PopUpDelay function
function Hide()

	-- Changing the Visibility 
	rabbit.isVisible = false

	PopUpDelay()
end

-- This function starts the game
function GameStart()

	PopUpDelay()

end

-- This function increments the score only if the rabbit is clicked. It then displays the 
-- new score
function Whacked( event )

	-- If touch phase just started 
	if (event.phase == "began") then

		score = score + 1

		scoreObject.text = "Score: " .. score

		PopSoundChannel = audio.play(PopSound)
	end

end

-----------------------------------------------------------------------------------
-- EVENT LISTENERS --
-----------------------------------------------------------------------------------

-- I add the even listener to the rabbits so that if the rabbit is toiched, the Whacked function
-- is called

rabbit:addEventListener( "touch", Whacked )

-----------------------------------------------------------------------------------
-- CALL THE FUNCTION TO START THE GAME --
-----------------------------------------------------------------------------------
GameStart()





