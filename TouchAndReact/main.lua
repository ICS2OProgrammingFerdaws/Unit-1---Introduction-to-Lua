-- Tittle: Buttons in Lua 
-- Name: Ferdaws
-- Course:ICS20/3C
-- This  program dose something when i click on the button.
----------------------------------------------------------------------------------------------------------------------------------------
-- STATUSBAR 
---------------------------------------------------------------------------------------------------------------------------------------------------

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)
---------------------------------------------------------------------------------------------------------------------------------
-- LOCAL
--------------------------------------------------------------------------------------------------------------
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
local textObject = display.newText ("Clicked!", 0, 0, nil, 70)
local nice = display.newImageRect("Images/Nice.jpg", 200, 200)
-----------------------------------------------------------------------------------------------------------------------------------
-- POSITION
-----------------------------------------------------------------------------------------------------------------------------
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 


redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false


textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor(0.4, 0.8,0.5)
textObject.isVisible = false

nice.x = display.contentWidth/2
nice.y = display.contentHeight/2
nice.isVisible = false
--------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
--------------------------------------------------------------------------------------------------------
local function BlueButtonListener( touch )
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true 
		textObject.isVisible = true
		nice.isvsible = true
	end

	if (touch.phase == "ended") then 
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		nice.isvsible = false
	end
end


local function RedButtonListener( touch )
	if (touch.phase == "ended") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		nice.isvsible = true
	end

	if (touch.phase == "began") then 
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		nice.isvsible = true
	end
end


local function NiceListener( touch )
	if (touch.phase == "began") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		nice.isVisible = false
	end

	if (touch.phase == "ended")then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		nice.isvsible = true
	end
end
----------------------------------------------------------------------------------------------------------------
--LISTENER
------------------------------------------------------------------------------------------------------------------------------------

blueButton:addEventListener("touch",BlueButtonListener)
redButton:addEventListener("touch",RedButtonListener)
nice:addEventListener("touch",NiceListener)
------------------------------------------------------------------------------------------------------
-- BACKGROUND
----------------------------------------------------------------------------------------------------------------
display.setDefault("background", 12/255, 90/255, 50/255)
