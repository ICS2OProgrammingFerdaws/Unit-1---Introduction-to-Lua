-----------------------------------------------------------------------------------------
--Title: NumericTextFields
-- Name: Ferdaws
-- Course: ICS2O/3C
-- This program asks a question and says if your answer is right or wrog.
-----------------------------------------------------------------------------------------

-- hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 19/255, 188/255, 24/255)

-------------------------------------------------------------------------------------------------------------------------
--LOCAL VARIABLES
-------------------------------------------------------------------------------------------------------------------------
-- creat local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer 
local correctAnswer
local wrongObject

---------------------------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------
local function AskQuestion()
  -- generated 2 random numbers between a max. and a main. number 
  randomNumber1 = math.random(0, 8)
  randomNumber2 = math.random(0, 8)

  correctAnswer = randomNumber1 + randomNumber2

  -- create question in text object 
  questionObject.text = randomNumber1 .."+".. randomNumber2 .."=" 
end

local function HideCorrect()
  correctObject.isVisible = false
  AskQuestion()
end


local function HideIncorrect()
  wrongObject.isVisible = false
  AskQuestion()
end
  
local function NumericFieldListener( event )

  -- User begins editing "numericField"
  if  ( event.phase == "began" ) then

    -- clear text field
    event.target.text = ""

  elseif event.phase == "submitted" then

    -- when the answer is submitted (enter key is pressed) set user input to users answer
    userAnswer = tonumber(event.target.text)


    -- if the users answer and the correct answer are the same:
    if  (userAnswer == correctAnswer) then
      correctObject.isVisible = true
      timer.performWithDelay(3000, HideCorrect)
    else
      wrongObject.isVisible = true
      timer.performWithDelay(2000,  HideIncorrect)
    end
  end
end


local function HideIncorrect()
  wrongObject.isVisible = false
  AskQuestion()
end

--------------------------------------------------------------------------------------------------
-- CREATION
---------------------------------------------------------------------------------------------
-- display a question and sets the colour 
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(120/255, 9/255, 90/255)

-- create the correct text object and make it invisible 
correctObject = display.newText("Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(13/255, 254/255,192/255)
correctObject.isVisible = false



wrongObject = display.newText ("Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
wrongObject:setTextColor(65/255, 79/255, 3/255)
wrongObject.isVisible = false


-- Create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"


-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )
------------------------------------------------------------------------------------------------------------------------
-- FUNCTION CALL
-----------------------------------------------------------------------------------------------------------------------------------
-- call the function to ask question
AskQuestion()



