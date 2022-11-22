import pgzrun

HEIGHT = 300
WIDTH = 800

p = Actor('ironman',(200,200))
c = Actor('cookie')

def draw():
    screen.fill('lavender')
    p.draw()
    c.draw()

pgzrun.go()