def setup():
    size(800,600)
    background(0)
    frameRate(10)
    i = 0

def draw():
    display(random(100))

def display(i):
    if i > 98:
        fill(0)
        stroke(0)
        rect(0,0,800,600)
    else:
        noStroke()
        fill(random(255),random(255),random(255),124)
        ellipse(random(800),random(600),50,50)