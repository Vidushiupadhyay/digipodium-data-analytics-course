import pgzrun

WIDTH = 1200
HEIGHT = 600

scr = 0

def gamescr(bgcolor, title , info="Play the game"):
    screen.fill(bgcolor)
    screen.draw.text( title ,
        center=(WIDTH/2, HEIGHT/2),
        fontsize=100, color='red' ,
        align='center')
    screen.draw.text( info,
        center=(WIDTH/2, HEIGHT/2+100),
        fontsize=50, color='red' ,
        align='center')

def draw():
    if scr == 0:
        gamescr('lavender','Amazing game', 'Press space to start')
    elif scr == 1:
        gamescr('yellow','Game is running', 'Press esc to start')
    elif scr == 2:
        gamescr('white','Game Over', 'Press enter to restart')

def update():
    global scr
    if keyboard.SPACE and scr == 0:
        scr=1
    if keyboard.ESCAPE and scr == 1 :
        scr=2
    if keyboard.RETURN and scr == 2 :                  #RETURN is used for enter key in python
        scr=0

pgzrun.go()