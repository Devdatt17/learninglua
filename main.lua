_G.love = require("love")

--[[
    To run love, Press ALT + SHIFT + L
]]

function love.load()
    love.graphics.setBackgroundColor(0.2, 0.2, 0.2)
    
    width, height = love.window.getMode()

    _G.position = {
        x = 0,
        y = 0
    }

    _G.speed = 2

end

-- dt stands for delta time
function love.update(dt)

    love.graphics.setBackgroundColor(0.2, 0.2, 0.2)
   

    width, height = love.window.getMode()

    if love.keyboard.isDown('d') or love.keyboard.isDown('right') then
        if position.x < width - 100 then 
            position.x = position.x + speed
        else
            love.graphics.setBackgroundColor(255, 0, 0)        
        end
    elseif love.keyboard.isDown('w') or love.keyboard.isDown('up') then
        if position.y >= 0 then
            position.y = position.y - speed
        else
            love.graphics.setBackgroundColor(255, 0, 0)
        end
    elseif love.keyboard.isDown('a') or love.keyboard.isDown('left') then
        if position.x >= 0 then
            position.x = position.x - speed
        else
            love.graphics.setBackgroundColor(255, 0, 0)
        end
    elseif love.keyboard.isDown('s') or love.keyboard.isDown('down') then
        if position.y < height - 100 then
            position.y = position.y + speed
        else
            love.graphics.setBackgroundColor(255, 0, 0)
        end
    end

end

function love.draw()

    width, height = love.window.getMode()
    
    love.graphics.setColor(255,255,0)
    love.graphics.rectangle("fill", position.x, position.y, 100, 100)
   
    love.graphics.print('X: '..position.x..'\nY: '..position.y)

    love.graphics.print('\n\nWindow Width: '..width..'\nWindow Height: '..height)
    
end