-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- print "Hello, World" to the command terminal   
print("**** Hello Ferdaws")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the backround color 
display.setDefault("background", 111/255, 98/255, 63/255)

-- creat a local variable 
local textObject

-- display text on the screen at position x = 500 and y = 500 with 
-- a deafult font style and font size of 50 
textObject = display.newText( "Hello,Ferdaws", 500, 500, nil, 100 )

-- sets the color of the text 
textObject:setTextColor(53/255, 201/255, 218/255)

--  display text on the screen at position x = 500 and y = 700 with 
-- a deafult font style and font size of 50 
local textObjectSignature = display.newText( "By Ferdaws", 500, 700, nil, 50 )