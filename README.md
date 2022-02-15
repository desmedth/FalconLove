# FALCON2022
#### Video Demo:  <URL HERE>
## The History
As someone born in the 80's, video games from the late 80's and early 90's are kind of my thing...

In the end of the 80's, I encountered an arcade machine named [Falcon](https://www.gamesdatabase.org/game/arcade/falcon).<br>
Little did I know, it was actually a clone of [Phoenix](https://en.wikipedia.org/wiki/Phoenix_(video_game)).

Phoenix (and thus also Falcon) is a vertical shooter sharing similarities with games like 'Space Invaders'.<br>
As a player, you pilot a ship located at the bottom of the screen that can only move left and right.<br>
At the top of your screen, you have enemies firing at you.<br>
The goal is simple, destroy all the enemies.

Phoenix was also one of the first games presenting boss-challenges to the players.
## The Reason
The Falcon-game is a throwback to the early days of gaming.<br>
It is also a nostalgic trip down memory lane about how 'simple' games were in those days.<br>
Those things, combined with my love of programming and reliving former glory games; made this game an ideal project to try to recreate.

The idea was to recreate a golden oldie.
The opportunity was my course in [CS50x - Introduction to Computer Science](https://cs50.harvard.edu/x/2022/project/).<br>
The course expects a final project so next to idea and opportunity, there was also a reason to try to recreate the game.
## The Project
### Which language?
One of the first hurdles was choosing which programming language to use to try re-enacting that old game.<br>
There were many possibilities such as:
* JavaScript, 
* Python (PyGame)
* C++
* ...
  
But then, I came into contact with the Love2D-framework (and off course Lua).<br>
I saw a presentation / demonstration about [falling in LÖVE with Lua](https://www.youtube.com/watch?v=3k4CMAaNCuk) and the recreation of a Mario-clone by Colton Ogden.<br>
That presentation, combined with the initial [introduction to Love2D and Lua](https://www.youtube.com/watch?v=iOA5YspoJDM) by Guy White during the CS50-course; peaked my interest.

So the decision was made, I was going to try to recreate (in some form) the old Falcon game, using a framework and programming language (I had previously never heard of).
### Collecting the assets
#### The visuals
When I knew what to make, I decided to look for the visual style I wanted for the game.<br>
I am a really big fan of the [Kenney-assets](https://www.kenney.nl/), certainly because they are CC0.<br>
So I went on a visuals hunt through those assets and quickly found: [Pixel Shmup](https://www.kenney.nl/assets/pixel-shmup)<br>
I collected those assets and created a background map using the [Tiled-toolset](https://www.mapeditor.org/).
#### The fonts
Next up were the fonts. In every game, the visuals are stronger (or weaker) by using good (or bad) fonts.<br>
So the next hunt was one through the library of [Google Fonts](https://fonts.google.com/).<br>
I quickly found the [Press Start 2P](https://fonts.google.com/specimen/Press+Start+2P) - font, a very nice pixelated font.

I also needed another font, next to the pixelated one; for other messages like 'Next level', 'Game over', ...<br>
I continued my search on the Google Fonts - platform and finally landed on the page of the font [Rampart One](https://fonts.google.com/specimen/Rampart+One).<br>
It is a nostalgic font but with a clear distinction to the pixelated one.<br>
I wanted a non-pixel-font because that shows it is a modern remake of an old game.
#### The sound
For the sound, I had a clear picture in my mind of 8bit sounds, again referencing to the old game.<br>
I knew of a tool called [BFXR](https://www.bfxr.net/), a tool allowing you to create your own 8bit sounds.<br>
But there was also the library of Kenney off course, providing us with possible sounds for our game, especially for the sound effects.<br>
Those sounds were not 8bit but were very easy to implement so I made the choice to not loose too many time on the sounds and chose the Kenney-assets.<br>
I combined 2 of Kenney's packs to get my sound effects:
* [Kenney Voice Over Pack](https://www.kenney.nl/assets/voiceover-pack)
* [Kenney Sci Fi Sounds Pack](https://www.kenney.nl/assets/sci-fi-sounds)

But I still wanted that 8bit sound kinda feeling...<br>
So I went on a search on how to create an 8bit soundtrack.<br>
Finally, I found the tool [beepbox.co](https://www.beepbox.co/) that lets you create your own modern chiptune.<br>
After some experimenting (like a lot...), I finally created my own sound track for the game.
### Planning the game
I decided to plan the development of the game in gradual steps:
1. a player
     * that we can move left and right
     * that can move forwards when the level is done
     * that can shoot
2. enemies
     * that can spawn (more and more per level)
     * that can shoot (faster and faster per level)
     * that can be destroyed
3. visuals
     * a background that is static
     * a background that moves when we go forward
     * a nice plane for the player
     * some different planes for the enemies
     * a sprite for the bullets of the player
     * a sprite for the bullets of the enemies
     * an UI
4. sounds
     * sounds when changing levels, winning and loosing
     * sounds when shooting
     * sounds when the player or the enemy is destroyed
5. game management
     * keeping score
     * keeping lives of a player
     * keeping state of the game
### The files
#### MAIN.LUA
The main-game-file in Lua.
```
love.load
```
>During the load-phase, we load all necessary game assets.<br>
>We calculate the width and height of our window and develop a grid to place things on.<br>
>We load the different sprites for the enemies into the sprite-list.<br>
>We load the GameManager-object with all necessary information.<br>
>We load the SoundManager-object with all the necessary sounds.
```
love.update
```
>We check the state of the game.<br>
>* change the level<br>
>  If we need to change the level, we enable the player to fly forward.<br>
>  If the level has reached 6 (end of the game), we finish the game.
>* playing the level<br>
>  If we can play, we check for user inputs left and right to change the position of the player.<br>
>  We also make sure the enemies are shooting and the visuals are updated.
```
love.draw
```
> We draw the necessary things like the world, the players, the objects and the UI.

**UPDATE-functions**<br>
The own programmed update functions are used to update specific parts of the game.<br>
```
updateEnemies()
```
> Checking if an enemy has been hit or not.<br>
> If he has been hit, we put him on the to-be-removed-list.
> If there are no enemies left, we initiate the 'change-level'-process
> If there are enemies left, we check for each enemy if their shoot timer has been triggered.<br>
> When the timer has been triggered, we add the enemy bullet to the bullet-list, play the shooting-sound and reset the timer.
```
updateExplosions()
```
>We check if a bullet has hit something (player or enemy).<br>
>When a bullet hits something (in the update bullets functions), we replace the bullet by an explosion at the same position.
```
updateEnemyBullets()
```
>We let the enemy-bullets fly towards the bottom of the screen.<br>
>If an enemy bullet hits a player, we subtract a life from the player.<br>
>When the player has no lives left, the game-over-process is being triggered.<br>
>If the bullet hits nothing and reaches a point beyond the player, the bullet is being removed (memory optimalisation).
```
updatePlayerBullets()
```
>We let the player-bullets fly towards the enemies.<br>
>If an enemy is hit by the bullet, we place the enemy on the to be destroyed list.<br>

**LOAD-functions**<br>
The own programmed update functions are used to load different parts of the game.<br>
```
loadlevel()
```
>We check which level we need to load.<br>
>We generate at least 1 enemy first.<br>
>After that, we generate a random amount of enemies, depending on the level.<br>
>The higher the level, the more enemies we generate.<br>
>In our grid-system, we flag those columns as occupied where we have placed an enemy.
```
changelevel()
```
>This function is called to change the level.<br>
>We use this function to clear some lists like the enemies and the bullets.<br>
>But we also use this function to play the sound effects on the level change and to calculate scores.
#### libraries
```
HUMP
```
>We use the hump-library for our camera viewport on that specific part of the background we want to show.<br>
>More info about the hump-library can be found here:<br>
>[Helper Utilities for a Multitude of Problems](https://hump.readthedocs.io/en/latest/)
```
STI
```
>We use the STI-library to transform our Tiled-assets to usable assets in Love2D and Lua.<br>
>More info about the STI-library can be found here:<br>
>[Simple Tiled Implementation](https://github.com/karai17/Simple-Tiled-Implementation)
```
WINDFIELD
```
>We use the windfield-library to create the hitboxes around the enemies, player and the bullets.<br>
>More info about the windfield-library can be found here:<br>
>[Windfield Physics Module for Love2D](https://github.com/a327ex/windfield)
#### assets / fonts
The fonts used in the project.
#### assets / gfx
The visuals used in the project.
#### assets / maps
The background-maps of Tiled used in the project.
#### assets / sfx
The sound-effects and background-sound used in the project
## The Future
It is clear that the game is not a full representation of the golden oldie Falcon.<br>
These things are not implemented (at the moment):
* boss fights
* changing levels (visually, other background, other music, ...)
* flying enemies

Next to that, there some smaller bugs that require a lot more time to finetune:
* sometimes you hit an enemy and he is not destroyed
* sometimes an enemy bullet disappears before reaching the player base

So for the future, finetuning and implementing those things are something to consider<br>
And off course, rebuilding the code to a more object oriented way of programming...