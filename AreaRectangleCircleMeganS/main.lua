-----------------------------------------------------------------------------------------
-- Title: AreaOfRectangleAndCircle
-- Name: Megan.S
-- Course: ICS2O/3C
-- This program displays a rectangle and shows its area
-----------------------------------------------------------------------------------------

-- Make my local variables
local areatext
local textSize = 50	
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

<<<<<<< HEAD

-- set the background colour of the Ipad Air to white 
=======
-- set the background colour of the Ipad Air to light purple 
>>>>>>> 3fcb08c8f1afb5f2af28fd3ebe53a6286c634e9f
display.setDefault("background", 204/255, 204/255, 1)

-- hide the status bar on the Ipad air 
display.setStatusBar(display.HiddenStatusBar)

-- create the rectangle that has its width and height
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- place an anchorof the rectangle in the top left corner of the screen and its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0 
myRectangle.x = 20
myRectangle.y = 20 

-- set and create the border of the rectangle
myRectangle.strokeWidth = 15

-- set the colour of the rectangle
myRectangle:setFillColor(1, 1, 51/255) 

-- set colour of the reactangles border
myRectangle:setStrokeColor(1, 0, 0)


-- calculate the area using the area of a rectangle formula (area = length * width)
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- display the text on the screen to the user
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the colour of the newtext
areaText:setTextColor(0, 0, 0)

