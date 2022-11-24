import pgzrun

HEIGHT = 300
WIDTH = 800

p = Actor('ironman',(200,200))
c = Actor('cookie')

def draw():
    screen.fill('lavender')
    p.draw()
    c.draw()
    print('Drawing')

def update():
    print('Updating')
    p.x += 1
    p.angle = -10
    if p.x > WIDTH:
        p.x = 0
    print(p.x,p.y)

pgzrun.go()