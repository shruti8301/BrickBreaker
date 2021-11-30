# :round_pushpin: Brick Breaker
This project intends to implement a simple brick breaker game using microprocessor 8086. We will be having layers of coloured bricks and balls with which to break the layers. The player will move the paddle from left to right to keep the ball from falling. Life will be used when the player fails to hit the ball. We will build a scoring system that reflects how efficient the user is to clear the bricks.

## Methodology Used 
### :arrow_right: The Brick Breaker game is started off by the display where the title screen of the game is shown. A loading bar is added using the delay subroutine. When the keystroke is registered, the loading screen transitions to the main game screen where the colourful boxes (or ‘bricks’) are created. The colours and positions for the boxes were defined in the initial part of the code. Two commonly used segments of code are the ‘Service 13’ and ‘Sub service 0’,  used to print string and update cursor position, respectively.
While creating the game screen, segments such as the number of lives, timer and score are added in the footer section. This is followed by the game logic, which mainly consists of the paddle movement. Each time the ball hits the brick, the brick is removed and the score is incremented. Additionally, when the paddle fails to protect the ball, the number of lives is decremented. When the number of lives is equal to zero, the game over screen is shown.



## :round_pushpin: Project Implementation
### :round_pushpin: Block Diagram
![News Section](/images/blockdiagram.png?raw=true "Block Diagram")
### :round_pushpin: Loading Screen
![News Section](/images/loading.png?raw=true "loading screen")
### :round_pushpin: Gameplay
![News Section](/images/gameplay.png?raw=true "Gameplay")
### :round_pushpin: Gaining a life
![News Section](/images/gamelife.png?raw=true "Gaining a life")


## :pencil2:TECH STACK
### :round_pushpin:Software/Simulation tools Used
:heavy_check_mark: Dosbox
:heavy_check_mark: AssmSoft
:heavy_check_mark: Nasm

### :round_pushpin:Language(s) used
:heavy_check_mark: 8086 Assembly Language


## :round_pushpin: Project Team Members
### :arrow_right: Vishwa Shah 19BCE0753
### :arrow_right: Srivathsan Nayak 19BCE2015
### :arrow_right: Bhavya Harchandani 19BCE2016
### :arrow_right: Shruti Gupta 19BCE2061
### :arrow_right: Abhinav Dholi 19BCE2362





