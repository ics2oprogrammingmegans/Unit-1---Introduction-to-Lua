
-- Title: HelloWorld	
-- Name: Megan.S
-- Course: ICS2O/3C
-- This program displays Hello, world on the iPad air to the simulator and to the command terminal.
-------------------------------------------------------------------------------------------------------------------

-- print "hello, world" to the command terminal
print ("***Hello!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set the background colour to purple
display.setDefault("background", 178/255, 102/255, 255/255)

-- make a local variable
local textObject

-- display the text on the iPad air with the poistion of x = 500  y = 345
-- use nil font style with a font size of 80
textObject = display.newText( "Hello, Megan!", 500, 345, nil, 80 ) 

-- set the colour to a light blue
textObject:setTextColor(0/255, 0/255, 0/255)

-- create new variable for a new a new text 
local textObjectSignature

--display "Volleyball is my favourite sport" below "Hello, Megan"
textObjectSignature = display.newText("Volleyball is my favourite sport", 500, 500, nil, 50  )

-- set the text to a new color
textObjectSignature:setTextColor(51/255, 153/255, 255/255)