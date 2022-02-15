local sti = require "libraries.sti"
local hCam = require "libraries.hump.camera"
local windfield = require "libraries.windfield"

local speed = 250
local cols = 50

local wW, wH, mW, mH, levelSwitch, switchStep, switchLength, world, player, gameManager, enemySprites, enemies, bulletsEnemy, bulletsPlayer, explosions, enemiesShot, soundManager

function love.load()
  wW = love.graphics.getWidth()
  wH = love.graphics.getHeight()
  love.graphics.setDefaultFilter('nearest', 'nearest')
  CAMERA = hCam()

  MAP = sti("assets/maps/Falcon_ArenaTest.lua")
  mW = MAP.width * MAP.tilewidth
  mH = MAP.height * MAP.tileheight
  levelSwitch = mH / 6
  switchStep = 4.25
  switchLength = 0

  world = windfield.newWorld(0, 0)
  world:addCollisionClass('Enemy')
  world:addCollisionClass('Player')
  world:addCollisionClass('BulletEnemy', {ignores = {'Enemy'}})
  world:addCollisionClass('BulletPlayer', {ignores = {'Player', 'BulletEnemy'}})

  player = {}
  player.life = 3
  player.x = mW / 2
  player.y = mH - 150
  player.shootTimer = 0.5
  player.hasShot = false
  player.sprite = love.graphics.newImage('assets/gfx/player.png')
  player.width = player.sprite:getPixelWidth()
  player.height = player.sprite:getPixelHeight()
  player.collider = world:newBSGRectangleCollider(player.x - player.width/2, player.y - player.height/2, player.width, player.height, player.width/5)
  player.collider:setFixedRotation(true)
  player.collider:setCollisionClass('Player')

  enemySprites = {}
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_1.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_2.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_3.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_4.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_5.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_6.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_7.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_8.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_9.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_10.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_11.png')
  enemySprites[#enemySprites+1] = love.graphics.newImage('assets/gfx/enemies/enemies_12.png')

  enemies = {}
  bulletsEnemy = {}
  bulletsPlayer = {}
  explosions = {}
  enemiesShot = {}

  gameManager = {}
  gameManager.player = player
  gameManager.level = 1
  gameManager.state = 'PLAY'
  gameManager.mainFont = love.graphics.newFont('assets/fonts/pixeld.ttf', 24)
  gameManager.specFont = love.graphics.newFont('assets/fonts/shaded.ttf', 40)
  gameManager.playerLife = love.graphics.newImage('assets/gfx/playerLife.png')
  gameManager.explosion = love.graphics.newImage('assets/gfx/explosion.png')
  gameManager.title = 'FALCON2022'
  gameManager.score = 0
  gameManager.bulletSpeed = 150
  gameManager.baseEnemyTimer = 1.8
  gameManager.playerHit = false

  soundManager = {}
  soundManager.bg = love.audio.newSource("assets/sfx/Falconized_melody.wav", "stream")
  soundManager.enemyHit = love.audio.newSource("assets/sfx/enemy_hit.ogg", "static")
  soundManager.enemyShoot = love.audio.newSource("assets/sfx/enemy_shoot.ogg", "static")
  soundManager.explode = love.audio.newSource("assets/sfx/explode.ogg", "static")
  soundManager.final_round = love.audio.newSource("assets/sfx/final_round.ogg", "static")
  soundManager.go = love.audio.newSource("assets/sfx/go.ogg", "static")
  soundManager.level_up = love.audio.newSource("assets/sfx/level_up.ogg", "static")
  soundManager.gamewon = love.audio.newSource("assets/sfx/mission_completed.ogg", "static")
  soundManager.gameover = love.audio.newSource("assets/sfx/mission_failed.ogg", "static")
  soundManager.player_shoot = love.audio.newSource("assets/sfx/player_shoot.ogg", "static")

  soundManager.bg:setVolume(0.7)
  soundManager.go:play()
  LoadLevel()

end

function love.update(dt)

  if not soundManager.bg:isPlaying() then
    soundManager.bg:play()
  end
  local vx = 0
  local vy = 0

  if gameManager.state == 'CHANGE' then

    if gameManager.level < 6 then

      if love.keyboard.isDown("up") then
        vy = speed * -1
        switchLength = switchLength + switchStep

        if switchLength > levelSwitch then
            LoadLevel()
            gameManager.state = 'PLAY'
            switchLength = 0
        end

      end

      player.collider:setLinearVelocity(0, vy)
      world:update(dt)
      player.y = player.collider:getY()
    else
      gameManager.state = 'DONE'

    end

  end

  -- if love.keyboard.isDown("down") then
  --   player.y = player.y + speed
  --   if (player.y > mH - pH/2) then
  --     player.y = mH - pH/2
  --   end
  -- end

  if gameManager.state == 'PLAY' then

    updateBullets(dt)
    updateEnemies(dt)
    updateExplosions(dt)

    if love.keyboard.isDown("left") then

      if (MAP:convertPixelToTile(player.x, player.y) > 1) then
        vx = speed * -1
      end

    end

    if love.keyboard.isDown("right") then

      if (MAP:convertPixelToTile(player.x, player.y) < 49) then
        vx = speed
      end

    end

    if love.keyboard.isDown("space") and not player.hasShot then
      player.hasShot = true
      local bullet = {}
      bullet.x = 0
      bullet.y = 0
      bullet.sprite = love.graphics.newImage('assets/gfx/bullet_player.png')
      bullet.collider = world:newRectangleCollider(player.x - bullet.sprite:getPixelWidth()/2, player.y - bullet.sprite:getPixelHeight()/2, bullet.sprite:getPixelWidth(), bullet.sprite:getPixelHeight())
      bullet.collider:setFixedRotation(true)
      bullet.collider:setCollisionClass('BulletPlayer')
      bullet.x = bullet.collider:getX()
      bullet.y = bullet.collider:getY()
      bulletsPlayer[#bulletsPlayer+1] = bullet
      soundManager.player_shoot:stop()
      soundManager.player_shoot:play()
    end

    if player.hasShot then
      player.shootTimer = player.shootTimer - dt
      if player.shootTimer <= 0 then
        player.hasShot = false
        player.shootTimer = 0.5
      end
    end

    player.collider:setLinearVelocity(vx, 0)
    player.x = player.collider:getX()

    world:update(dt)

  end

  setCorrectCameraLook()

end

function love.draw()
  drawWorld()
  drawUI()
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
end

function drawWorld()

  CAMERA:attach()
    love.graphics.setColor(1,1,1)
    MAP:drawLayer(MAP.layers['Ground'])
    drawObjects()

    -- draw colliders
    -- world:draw()

  CAMERA:detach()
end

function drawUI()
  love.graphics.setColor(0,0,0,0.5)
  love.graphics.rectangle('fill', 0, 0, wW, 50)
  love.graphics.rectangle('fill', 0, wH-50, wW, 50)

  love.graphics.setColor(1,1,1)
  love.graphics.setFont(gameManager.mainFont, 32)
  love.graphics.print('Level: ' .. gameManager.level, 15, 15)
  love.graphics.print(gameManager.title, wW-(string.len(gameManager.title)*24)-15, 15)
  love.graphics.print('Score: ' .. gameManager.score, 15, wH-35)

  for i = 1, player.life do
    love.graphics.draw(gameManager.playerLife, wW-40*i, wH-35)
  end



  if gameManager.state == 'CHANGE' then
    love.graphics.setColor(0.1, 0.7, 0.1, 0.75)
    love.graphics.rectangle('fill', wW/2 - 180, wH/2 - 20, 360, 60)
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameManager.specFont)
    love.graphics.print('MOVE FORWARD', wW/2 - 170, wH/2 - 20)
  elseif gameManager.state == 'DONE' then
    love.graphics.setColor(0, 0.25, 1, 0.85)
    love.graphics.rectangle('fill', wW/2 - 180, wH/2 - 20, 360, 60)
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameManager.specFont)
    love.graphics.print("   YOU'VE WON", wW/2 - 170, wH/2 - 20)
  elseif gameManager.state == 'GAMEOVER' then
    love.graphics.setColor(1, 0.1, 0.1, 0.85)
    love.graphics.rectangle('fill', wW/2 - 180, wH/2 - 20, 360, 60)
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameManager.specFont)
    love.graphics.print("   GAME OVER", wW/2 - 170, wH/2 - 20)
  end

end

function drawObjects()
  drawBullets()
  drawEnemies()
  drawPlayer()
  drawExplosions()
end

function drawEnemies()
  for key, enemy in pairs(enemies) do
    love.graphics.draw(enemy.sprite, enemy.x, enemy.y, math.pi, 2, 2, enemy.sprite:getPixelWidth() / 2, enemy.sprite:getPixelHeight() / 2)
    -- love.graphics.print(enemy.column, 50, 200 + (50 * key))
    -- love.graphics.print(enemy.x, 150, 200 + (50 * key))
  end
end

function drawPlayer()
  love.graphics.draw(player.sprite, player.x, player.y, nil, 2, 2, player.sprite:getPixelWidth() / 2, player.sprite:getPixelHeight() / 2)
end

function drawBullets()
  for key, bullet in pairs(bulletsEnemy) do
    love.graphics.draw(bullet.sprite, bullet.x, bullet.y, nil, 1, 1, bullet.sprite:getPixelWidth() / 2, bullet.sprite:getPixelHeight() / 2)
  end
  for key, bullet in pairs(bulletsPlayer) do
    love.graphics.draw(bullet.sprite, bullet.x, bullet.y, nil, 1, 1, bullet.sprite:getPixelWidth() / 2, bullet.sprite:getPixelHeight() / 2)
  end
end

function drawExplosions()
  for key, explosion in pairs(explosions) do
    love.graphics.draw(explosion.sprite, explosion.x, explosion.y, explosion.turn, explosion.zoom, explosion.zoom, explosion.sprite:getPixelWidth() / 2, explosion.sprite:getPixelHeight() / 2)
  end
end

function setCorrectCameraLook()

  CAMERA:lookAt(player.x, player.y - wH / 2 + player.sprite:getPixelHeight() + 50)

  if (CAMERA.x < wW/2) then
    CAMERA.x = wW/2
  end

  if (CAMERA.y < wH/2) then
    CAMERA.y = wH/2
  end

  if (CAMERA.x > (mW - wW/2) ) then
    CAMERA.x = (mW - wW/2)
  end

  if (CAMERA.y > (mH - wH/2) ) then
    CAMERA.y = (mH - wH/2)
  end

end

function updateEnemies(dt)
  local toRemove = {}

  for key, colHit in pairs(enemiesShot) do
    for idx, enemy in pairs(enemies) do
      if enemy.column == colHit then
        toRemove[#toRemove+1] = idx
        gameManager.score = gameManager.score + 5 * gameManager.level
      end
    end
  end

  for key, idx in pairs(toRemove) do
    enemies[idx].collider:destroy()
    table.remove(enemies, idx)
  end

  enemiesShot = {}

  if #enemies==0 and gameManager.state == 'PLAY' then
    changeLevel()
  elseif #enemies > 0 then

    for key, enemy in pairs(enemies) do
      enemy.shootNow = enemy.shootNow + dt
      if (enemy.shootNow >= enemy.shootTimer) then
        enemy.shootNow = enemy.shootNow - enemy.shootTimer
        local bullet = {}
        bullet.x = 0
        bullet.y = 0
        bullet.sprite = love.graphics.newImage('assets/gfx/bullet_enemy.png')
        bullet.collider = world:newRectangleCollider(enemy.x - bullet.sprite:getPixelWidth()/2, enemy.y - bullet.sprite:getPixelHeight()/2, bullet.sprite:getPixelWidth(), bullet.sprite:getPixelHeight())
        bullet.collider:setFixedRotation(true)
        bullet.collider:setCollisionClass('BulletEnemy')
        bullet.x = bullet.collider:getX()
        bullet.y = bullet.collider:getY()
        bulletsEnemy[#bulletsEnemy+1] = bullet

        soundManager.enemyShoot:stop()
        soundManager.enemyShoot:play()
      end
    end

  end

end

function updateExplosions(dt)
  local toRemove = {}

  for key, explosion in pairs(explosions) do
    explosion.timer = explosion.timer - dt
    if explosion.timer <= 0 then
      toRemove[#toRemove+1] = key
    else
      explosion.zoom = explosion.zoom - dt*math.random(10)
      explosion.turn = explosion.turn * math.random(3)
   end
  end

  for idx, key in pairs(toRemove) do
    table.remove(explosions, key)
  end
end

function updateBullets(dt)
  updateEnemyBullets(dt)
  updatePlayerBullets(dt)
end

function updateEnemyBullets(dt)
  local toRemove = {}
  gameManager.playerHit = false

  for key, bullet in pairs(bulletsEnemy) do

    bullet.y = bullet.y + dt * gameManager.bulletSpeed

    if (bullet.y > player.y+player.height) then
      toRemove[#toRemove+1] = key

    elseif bullet.collider:enter('Player') and not gameManager.playerHit then

      soundManager.explode:stop()
      soundManager.explode:play()
      gameManager.playerHit = true
      player.life = player.life - 1

      if player.life == 0 then
        soundManager.gameover:play()
        gameManager.state = 'GAMEOVER'
      end

      toRemove[#toRemove+1] = key

      local explosion = {}
      explosion.x = bullet.x
      explosion.y = bullet.y
      explosion.sprite = gameManager.explosion
      explosion.timer = 0.5
      explosion.zoom = 5
      explosion.turn = math.pi/4
      explosions[#explosions+1] = explosion

    else

      local vy = 1 * gameManager.bulletSpeed
      bullet.collider:setLinearVelocity(0, vy)
      bullet.x = bullet.collider:getX()
      bullet.y = bullet.collider:getY()

    end
  end

  for idx, key in pairs(toRemove) do
    bulletsEnemy[key].collider:destroy()
    table.remove(bulletsEnemy, key)
  end
end

function updatePlayerBullets(dt)
  local toRemove = {}

  for key, bullet in pairs(bulletsPlayer) do

    bullet.y = bullet.y + dt * gameManager.bulletSpeed

    if (bullet.y < player.y-wH) then

      toRemove[#toRemove+1] = key

    elseif bullet.collider:enter('Enemy') then

      toRemove[#toRemove+1] = key

      local explosion = {}
      explosion.x = bullet.x
      explosion.y = bullet.y
      explosion.sprite = gameManager.explosion
      explosion.timer = 0.5
      explosion.zoom = 5
      explosion.turn = math.pi/4
      explosions[#explosions+1] = explosion

      soundManager.enemyHit:stop()
      soundManager.enemyHit:play()

      local collision_data = bullet.collider:getEnterCollisionData('Enemy')
      enemiesShot[#enemiesShot+1] = collision_data.collider:getObject().column

    else

      local vy = -1 * gameManager.bulletSpeed
      bullet.collider:setLinearVelocity(0, vy)
      bullet.x = bullet.collider:getX()
      bullet.y = bullet.collider:getY()

    end
  end

  for idx, key in pairs(toRemove) do
    bulletsPlayer[key].collider:destroy()
    table.remove(bulletsPlayer, key)
  end
end

function LoadLevel()
  local colsTaken = {}
  local position = math.random(cols)-1
  local enemy = {}
  local spawnEnemies = gameManager.level + math.random(gameManager.level)
  local ty = 0
  enemies = {}
  
  enemy.sprite = enemySprites[math.random(#enemySprites)]
  enemy.width = player.sprite:getPixelWidth()
  enemy.height = player.sprite:getPixelHeight()
  enemy.column = position
  enemy.y = player.y - wH + 150
  enemy.shootTimer = gameManager.baseEnemyTimer - (gameManager.level / 5) + math.random(10)/10
  enemy.shootNow = 0
  enemy.x, ty = MAP:convertTileToPixel(position, 0) + enemy.sprite:getPixelWidth()/4
  enemy.collider = world:newBSGRectangleCollider(enemy.x - enemy.width/2, enemy.y - enemy.height/2, enemy.width, enemy.height, enemy.width/5)
  enemy.x = enemy.collider:getX()
  enemy.y = enemy.collider:getY()
  enemy.destroyed = false
  enemy.collider:setType('static')
  enemy.collider:setCollisionClass('Enemy')
  enemy.collider:setObject(enemy)

  enemies[#enemies+1] = enemy
  colsTaken[#colsTaken+1] = position
  colsTaken[#colsTaken+1] = position-1
  colsTaken[#colsTaken+1] = position-2
  colsTaken[#colsTaken+1] = position+1
  colsTaken[#colsTaken+1] = position+2

  for i = 2, spawnEnemies do
    enemy = {}
    enemy.y = player.y - wH + 150
    enemy.shootNow = 0
    enemy.shootTimer = gameManager.baseEnemyTimer - (gameManager.level / 5) + math.random(10)/10
    enemy.sprite = enemySprites[math.random(#enemySprites)]
    enemy.width = player.sprite:getPixelWidth()
    enemy.height = player.sprite:getPixelHeight()

    position = math.random(cols)-1
    local positionTaken = false
    for key, pos in pairs(colsTaken) do
      if pos == position then
        positionTaken = true
      end
    end

    while positionTaken do
      position = math.random(cols)-1
      positionTaken = false
      for key, pos in pairs(colsTaken) do
        if pos == position then
          positionTaken = true
        end
      end
    end

    enemy.column = position
    enemy.x, ty = MAP:convertTileToPixel(position, 0) + enemy.sprite:getPixelWidth()/4
    enemy.collider = world:newBSGRectangleCollider(enemy.x - enemy.width/2, enemy.y - enemy.height/2, enemy.width, enemy.height, enemy.width/5)
    enemy.x = enemy.collider:getX()
    enemy.y = enemy.collider:getY()
    enemy.destroyed = false
    enemy.collider:setType('static')
    enemy.collider:setCollisionClass('Enemy')
    enemy.collider:setObject(enemy)

    enemies[#enemies+1] = enemy
    colsTaken[#colsTaken+1] = position
    colsTaken[#colsTaken+1] = position-1
    colsTaken[#colsTaken+1] = position-2
    colsTaken[#colsTaken+1] = position+1
    colsTaken[#colsTaken+1] = position+2

  end

end

function changeLevel()
  gameManager.score = gameManager.score + 25 * gameManager.level
  gameManager.state = 'CHANGE'
  switchLength = 0
  if gameManager.level < 4 then
    soundManager.level_up:stop()
    soundManager.level_up:play()
    gameManager.level = gameManager.level + 1
  elseif gameManager.level == 4 then
    gameManager.level = gameManager.level + 1
    soundManager.final_round:play()
  else
    gameManager.score = gameManager.score * player.life
    gameManager.state = 'DONE'
    soundManager.gamewon:play()
  end

  for key, enemy in pairs(enemies) do
    enemy.collider:destroy()
  end

  for key, bullet in pairs(bulletsEnemy) do
    bullet.collider:destroy()
  end

  for key, bullet in pairs(bulletsPlayer) do
    bullet.collider:destroy()
  end

  enemies = {}
  enemiesShot = {}
  bulletsPlayer = {}
  bulletsEnemy = {}
  explosions = {}
end