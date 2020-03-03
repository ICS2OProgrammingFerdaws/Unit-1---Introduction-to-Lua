-- Title: TouchAndDrag
-- Name: Ferdaws
-- Course: ICS20/3C
-- This progran displays images that react to a person's finger.

-- hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png",2048, 1536) 
local rocketship = display.newImageRect("Images/rocketship.png", 150, 150)
local rocketshipWidth = rocketship.width
local rocketshipHight = rocketship.height 

local beetleship = display.newImageRect("Images/beetleship.png", 150, 150)
local beetleshipWidth = beetleship.width
local beetleshipHight = beetleship.height 

-- my boolean Variables to keep track of which object I touched first
local alreadyTouchedRocketship = false 
local beetleshipTouchedBeetleship = false

-- set the initial x and y position of myImage
rocketship.x = 400
rocketship.y = 500

beetleship.x = 300
beetleship.y = 200

