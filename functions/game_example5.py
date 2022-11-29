import pgzrun
from random import randint        # randint -> random integer function

HEIGHT = 800
WIDTH = 1800

p = Actor('ironman',center=(WIDTH//2,HEIGHT//2))
c = Actor('cookie', (randint(0, WIDTH), randint(0, HEIGHT)))
title = "IRON-MAN GAME"
score = 0
music.play('bg')
music.set_volume(0.2)

def draw():
    screen.fill('lavender')
    screen.draw.text(title,  center=(WIDTH//2,30), fontsize=60 , color='pink' , align='center' , shadow=(.2,1) , scolor="red")
    screen.draw.text(f'score:{score}',(10,10), fontsize=40, color= 'purple')
    p.draw()
    c.draw()

def p_move():                     # here our actor is in our control and it do not go outside the screen
    if keyboard.right and p.right < WIDTH:
        p.x += 10
        p.angke = -10
    elif keyboard.left and p.left > 0:
        p.x -= 10
        p.angle = 10
    else:
        p.angle = 0
    if keyboard.up and p.top > 0:
        p.y -= 10
    if keyboard.down and p.bottom < HEIGHT:
        p.y += 10
    

def update():
    global score # tells python , that we want to change the value of the global variable score
    p_move()    #function call
    if p.colliderect(c):
        score += 1
        c.pos = (randint(0,WIDTH),randint(0,HEIGHT))
        sounds.s1.play()
    print(p.x, p.y, p.angle)

pgzrun.go()