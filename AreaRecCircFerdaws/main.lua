-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
-- create my local vaiables
local areaText 
local textSize = 50
local myRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

-- set the background colour of my screen.Remember that colors are between 0 and 1.
display.setDefault("background", 78/255, 54/255, 156/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size.