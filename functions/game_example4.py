import pgzrun

HEIGHT = 600
WIDTH = 1200

p = Actor('ironman',center=(WIDTH//2,HEIGHT//2))

title = "IRON-MAN GAME"

def draw():
    screen.fill('lavender')
    screen.draw.text(title,  center=(WIDTH//2,30), fontsize=60 , color='pink' , align='center' , shadow=(.2,1) , scolor="red")
    p.draw()

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
    p_move()    #function call
    print(p.x, p.y, p.angle)

pgzrun.go()