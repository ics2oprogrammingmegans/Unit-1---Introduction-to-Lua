-----------------------------------------------------------------------------------------
<<<<<<< HEAD
-- Title: AreaOfCricle
-- Name: Megan.S
-- Course: ICS2O/3C
-- This program will calculate the area of a circle
-----------------------------------------------------------------------------------------

-- make my local variables
=======
-- Title: AreaOfCircle		
-- Name: Megan.S
-- Course: ICS2O
-- This program will calculate the area of a circle
-----------------------------------------------------------------------------------------

local myCircle
local radiusOfCircle = 15
local areaOfCircle 
local areaText 
local textSize = 50
local PI = 3.14

-- set the background colour of the iPad Air to light blue
display.setDefault("background", 204/255, 1, 1)

-- hide the status bar on the iPad Air 
display.setStatusBar(display.HiddenStatusBar)

-- draw the circle
local myCircle = display.newCircle( 150, 100, 100 )

-- place an anchor of the circle on the screen and its (x,y) position
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 150
myCircle.y = 100


-- add a purple colour to the circle
myCircle:setFillColor( 102/255, 102/255, 1 )

-- create a border for the circle
myCircle.strokeWidth = 15

-- set the colour of the circle to red
myCircle:setStrokeColor( 1, 0, 0 )

-- calculate the area using the area of the circle formula (area = PIr²)
areaOfCircle = PI * radiusOfCircle * radiusOfCircle

-- display the text on the screen to the user
areaText = display.newText("The area of this circle with a radius of \n" ..
	radiusOfCircle .. " is " .. areaOfCircle .. " pixels.²", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 130
areaText.y = display.contentHeight/2

-- set the colour of the newtext to black
areaText:setTextColor(0, 0, 0)










>>>>>>> 3fcb08c8f1afb5f2af28fd3ebe53a6286c634e9f
