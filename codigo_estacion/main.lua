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
local accelHistory = {0}
local accelHistorySize = 120

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
    -- GRAFICOS--
    love.graphics.setBackgroundColor(255, 255, 255)
    gfxDegree = love.graphics.newImage("degree.jpg")
    gfxHumid = love.graphics.newImage("humidity.jpg")
    gfxAccel = love.graphics.newImage("accel.png")
    gfxGPS = love.graphics.newImage("gps.png")
    -- CONEXIÓN --
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
    b2RectFixture:setRestitution(0.9)
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
            table.insert(accelHistory, value[4])
            if #accelHistory > accelHistorySize then
                table.remove(accelHistory, 1)
            end
        end
    until not data
    -- JUEGO DE LA PELOTA --
    x, y = b2RectBody:getPosition()
    a = b2RectBody:getAngle()
    b2RectBody:setLinearVelocity(0, 0)
    
    b2RectBody:setAngularVelocity((-value[5] - math.deg(a))/7)
    b2RectBody:setPosition(rectX, rectY)
    b2World:update(dt)
    
    ballTimer = ballTimer + dt
    if ballTimer > ballInterval then
        ballSpawn()
        ballTimer = 0
    end
    ballClear()
end

function love.draw()
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("-- Sensores --", 100, 100)
    for i, v in ipairs(value) do
        if i ~= 1 then
            love.graphics.print(protocol[i] .. ": " .. value[i], 100, 100 + (i-1) * 12)
        end
    end
    
    -- SENSOR PITCH Y ROLL
    pitch = -math.rad(value[6])
    roll = -math.rad(value[5])
    love.graphics.print("Pitch", 700, 30, 0, 2, 2)
    love.graphics.circle("line", 800, 100, 60)
    love.graphics.line(800, 100, 800+math.cos(pitch)*60, 100+math.sin(pitch)*60)
    love.graphics.print(tonumber(string.format("%.3f", math.deg(pitch))), 800+math.cos(pitch)*60, 100+math.sin(pitch)*60)
    love.graphics.print("Roll", 900, 30, 0, 2, 2)
    love.graphics.circle("line", 1000, 100, 60)
    love.graphics.line(1000, 100, 1000+math.cos(roll)*60, 100+math.sin(roll)*60)
    love.graphics.print(tonumber(string.format("%.3f", math.deg(roll))), 1000+math.cos(roll)*60, 100+math.sin(roll)*60)
    
    -- ACELERACIÓN --
    accel = value[4]
    maxAccel = math.max(unpack(accelHistory))
    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(gfxAccel, 360, 130, 0, 0.4, 0.4)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print(string.format("%.2f", accel / 10) .. "g", 400, 250, 0, 2, 2)
    love.graphics.setColor(255, 0, 0)
    love.graphics.print(string.format("%.2f", maxAccel / 10) .. "g", 400, 275, 0, 2, 2)
    love.graphics.setColor(0, 0, 0)
    
    -- TEMPERATURA Y HUMEDAD --
    temp = value[7]
    hmdt = value[8]
    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(gfxDegree, 290, -10, 0, 0.2, 0.2)
    love.graphics.draw(gfxHumid, 480, -10, 0, 0.2, 0.2)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print(string.format("%.1f", temp) .. " °C", 300, 100, 0, 2, 2)
    love.graphics.print(string.format("%.1f", hmdt) .. "%", 500, 100, 0, 2, 2)

    -- GPS --
    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(gfxGPS, 1050, 320, 0, 0.2, 0.2)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("Latitud: " .. value[2], 800, 350, 0, 2, 2)
    love.graphics.print("Longitud: " .. value[3], 800, 400, 0, 2, 2)

    -- JUEGO DE PELOTA --
    x, y = b2RectBody:getPosition()
    a = b2RectBody:getAngle()
    love.graphics.push()
    love.graphics.translate(rectX, rectY)
    love.graphics.rotate(a)
    love.graphics.translate(-rectX, -rectY)
    love.graphics.rectangle("line", x - rectWidth / 2, y - rectHeight / 2, rectWidth, rectHeight)
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
    b2Body = love.physics.newBody(b2World, math.random(300, 400), 0, "dynamic")
    b2Shape = love.physics.newCircleShape(30)
    b2Fixture = love.physics.newFixture(b2Body, b2Shape)
    b2Fixture:setRestitution(0.5)
    local ball = {
        body = b2Body, 
        shape = b2Shape,
        fixture = b2Fixture
    }
    table.insert(ballEntities, ball)
end

function ballClear()
    for i = #ballEntities, 1, -1 do
        local ball = ballEntities[i]
        local x, y = ball.body:getPosition()
        if y > 1000 then
            ball.body:destroy()
            table.remove(ballEntities, i)
        end
    end
end