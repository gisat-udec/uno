print("prueba de la consola")

local socket = require "socket"
local address, port = "192.168.2.108", 20001

local startTime = love.timer.getTime()
local pingInterval = 10
local pingTime = startTime + pingInterval

local protocol = {
    "time",
    "lat",
    "lon",
    "accel",
    "roll",
    "pitch",
    "temp",
    "hmdt"
}

local value = {0, 0, 0, 0, 0, 0, 0, 0}

-- JUEGO DE LA PELOTA -- 
local rectAngle = 0
local rectWidth = 500
local rectHeight = 40
local rectX = 400
local rectY = 500
local ballTimer = 0
local ballInterval = 5
local ballEntities = {}

function love.load()
    udp = socket.udp()
    udp:settimeout(0)
    udp:setpeername(address, port)
    pingSend()
    -- JUEGO DE LA PELOTA --
    love.physics.setMeter(64)
    b2World = love.physics.newWorld(0, 9.81*64, false)
    b2RectBody = love.physics.newBody(b2World, rectX, rectY, "dynamic")
    b2RectShape = love.physics.newRectangleShape(rectWidth, rectHeight)
    b2RectFixture = love.physics.newFixture(b2RectBody, b2RectShape)
    b2RectBody:setBullet(true)
    ballSpawn()
end
t = 0
function love.update(dt)
    -- Enviar pings periodicamente
    nowTime = love.timer.getTime()
    if nowTime > pingTime then
       pingSend()
       pingTime = nowTime + pingInterval
    end
    -- Recibir datos
    repeat
        data, msg = udp:receive()
        if data then
            local i = 1
            for item in string.gmatch(data, "([^:]*):") do
                value[i] = tonumber(item)
                i = i + 1
            end
        end
    until not data
    -- JUEGO DE LA PELOTA --
    x, y = b2RectBody:getPosition()
    a = b2RectBody:getAngle()
    b2RectBody:applyAngularImpulse(a - value[5])
    b2RectBody:setLinearVelocity(0, 0)
    b2RectBody:setPosition(rectX, rectY)
    b2World:update(dt)
    
    ballTimer = ballTimer + dt
    if ballTimer > ballInterval then
        ballSpawn()
        ballTimer = 0
    end
end

function love.draw()
    love.graphics.print("-- Sensores --", 100, 100)
    for i, v in ipairs(value) do
        love.graphics.print(protocol[i] .. ": " .. value[i], 100, 100 + i * 12)
    end
    -- JUEGO DE PELOTA --
    love.graphics.push()
    love.graphics.translate(rectX, rectY)
    love.graphics.rotate(math.rad(value[5]))
    love.graphics.translate(-rectX, -rectY)
    love.graphics.rectangle("fill", rectX - rectWidth / 2, rectY - rectHeight / 2, rectWidth, rectHeight)
    love.graphics.pop()

    x, y = b2RectBody:getPosition()
    a = b2RectBody:getAngle()

    love.graphics.push()
    love.graphics.setColor(255, 0, 0)
    love.graphics.translate(rectX, rectY)
    love.graphics.rotate(a)
    love.graphics.translate(-rectX, -rectY)
    love.graphics.rectangle("fill", x - rectWidth / 2, y - rectHeight / 2, rectWidth, rectHeight)
    love.graphics.setColor(255, 255, 255)
    love.graphics.pop()

    
    for i, ball in ipairs(ballEntities) do
        x, y = ball.body:getPosition()
        love.graphics.circle("fill", x, y, 30)
    end
end

function pingSend()
    udp:send("1")
end

function ballSpawn()
    b2Body = love.physics.newBody(b2World, 400, 300, "dynamic")
    b2Shape = love.physics.newCircleShape(30)
    b2Fixture = love.physics.newFixture(b2Body, b2Shape)
    b2Fixture:setRestitution(0.9)
    local ball = {
        body = b2Body, 
        shape = b2Shape,
        fixture = b2Fixture
    }
    table.insert(ballEntities, ball)
end

function math.average(t)
    local sum = 0
    for _,v in pairs(t) do -- Get the sum of all numbers in t
      sum = sum + v
    end
    return sum / #t
  end