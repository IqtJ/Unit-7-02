-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

---background
local background = display.newImageRect( "assets/bg.png", 570, 345 )
background.x = display.contentCenterX
background.y = display.contentCenterY
background.id = "background" 



---------------------------Character move
--d-pad
local dPad = display.newImageRect( "assets/d-pad.png", 75, 75)
dPad.x = 50
dPad.y = display.contentHeight - 80
dPad.id = "d-pad"

--up arrow goes up
local upArrow = display.newImageRect( "assets/upArrow.png", 19, 14)
upArrow.x = 50
upArrow.y = display.contentCenterY + 53
upArrow.id = "up arrow"

---down arrow goes down
local downArrow = display.newImageRect( "assets/downArrow.png", 19, 14)
downArrow.x = 50
downArrow.y = display.contentCenterY + 108
downArrow.id = "up arrow"

--left arrow goes left
local leftArrow = display.newImageRect( "assets/leftArrow.png", 14, 19)
leftArrow.x = 22
leftArrow.y = display.contentCenterY + 80
leftArrow.id = "up arrow"

----right arrow goes right
local rightArrow = display.newImageRect( "assets/rightArrow.png", 14, 19)
rightArrow.x = 78
rightArrow.y = display.contentCenterY + 80
rightArrow.id = "up arrow"

----jump button (no use yet)
local jumpButton = display.newImageRect( "assets/jumpButton.png", 19, 19)
jumpButton.x = 50
jumpButton.y = display.contentCenterY + 80
jumpButton.id = "up arrow"



local theCharacter = display.newImageRect( "assets/ninja.png", 50, 50 )
theCharacter.x = display.contentCenterX
theCharacter.y = display.contentCenterY
theCharacter.id = "the character"


 ----to go up
function upArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = -50, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

--to go down
function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character down
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = 50 , -- move down 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

--to go left
function leftArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character left
        transition.moveBy( theCharacter, { 
        	x = -50, -- move 50 left 
        	y = 0 , -- move 0 in y direction
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end

--to go right
function rightArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character right
        transition.moveBy( theCharacter, { 
        	x = 50, -- move 50 right 
        	y = 0 , -- move 0 in y direction
        	time = 100 -- move in a 1/10 of a second
        	} )
    end

    return true
end


-----event listeners
upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
leftArrow:addEventListener( "touch", leftArrow ) 
rightArrow:addEventListener( "touch", rightArrow )