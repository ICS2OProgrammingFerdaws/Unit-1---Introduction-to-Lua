-- Title: MovingObjects
-- Name: Ferdaws 
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and then makes it fade in. I added
-- a second objeect that moves in a diffrent 
-- direction, fades out and grows in size

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables 
scrollSpeed = 3

-- background image with width and hight 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and hight 
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: Moveship 
-- Input: this function accepts an event listener 
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ship 
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out 
	beetleship.alpha = beetleship.alpha + 0.01
end
-- MovesShip will be called over and over again 
Runtime:addEventListener("enterFrame", MoveShip)

-- character image with width and hight 
local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)


rocketship:scale(-1,1)

newScrollSpeed = -3

-- set the image to be transparent
rocketship.alpha = 1

-- set the initial x and y position of rocketship 
rocketship.x = -1024
rocketship.y = display.contentHeight/2

-- Function: Moverocket
-- Input: this function accepts an event listener 
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the rocket
local function MoveRocket(event)
	-- add the scroll speed to the x-value of the rocket
	rocketship.x = rocketship.x + scrollSpeed
	-- change the transparency of the rocket every time it moves so that it fades in 
	rocketship.alpha = rocketship.alpha - 0.000000001
end 
-- MoveRocket will be called over and over again 
Runtime:addEventListener("enterFrame", MoveRocket)