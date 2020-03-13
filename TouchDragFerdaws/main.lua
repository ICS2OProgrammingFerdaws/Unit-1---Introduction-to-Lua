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

local earth = display.newImageRect("Images/Earth.png", 150, 150)
local earthWidth = earth.width
local earthHight = earth.height
-- my boolean Variables to keep track of which object I touched first
local alreadyTouchedRocketship = false 
local alreadyTouchedBeetleship = false
local alreadyTouchedEarth = false 

-- set the initial x and y position of myImage
rocketship.x = 400
rocketship.y = 500

beetleship.x = 300
beetleship.y = 200

earth.x = 560
earth.y = 400

-- Function: rocketshipListener
-- Input : touch  listener
-- output : none
-- Description : when rocketship is touched, move it 

local function rocketshipListener(touch)
	if	(touch.phase == "began") then
		if (alreadyTouchedRocketship == false) then
			alreadyTouchedRocketship = true
		end
	end


	if	(	(touch.phase == "moved") and (alreadyTouchedRocketship == true)	) then 
		rocketship.x = touch.x
		rocketship.y = touch.y
	end

	if	(touch.phase == "ended") then
		alreadyTouchedRocketship = false
		alreadyTouchedRocketship = false
	end
		
end

-- add the respective listeners to the object
rocketship:addEventListener("touch", rocketshipListener)


local function beetleshipListener(touch)
	if	(touch.phase == "began") then
		if(alreadyTouchedBeetleship == false) then
			alreadyTouchedBeetleship = true
		end
	end


	if	(	(touch.phase == "moved") and (alreadyTouchedBeetleship == true)	) then
		beetleship.x = touch.x
		beetleship.y = touch.y
	end


	if	(touch.phase == "ended") then
		alreadyTouchedBeetleship = false
		alreadyTouchedBeetleship = false
	end
end		



-- add the respective listeners to the object
beetleship:addEventListener("touch", beetleshipListener)


local function earthListener( touch )
	if	(touch.phase == "moved") then
		if	(alreadyTouchedEarth == false) then
			alreadyTouchedEarth = true
		end
	end


	if 	(	(touch.phase == "moved") and (alreadyTouchedEarth == true)	) then
		earth.x = touch.x
		earth.y = touch.y
	end


	if	(touch.phase == "ended") then
		alreadyTouchedEarth = false
		alreadyTouchedEarth = false
	end
end
	
		
-- add the respective listeners to the object

earth:addEventListener("touch", earthListener)