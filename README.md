# Draw-Mac

A Turtle drawing Application with Swift. This build as a Mac Desktop Application. 

## tl;dr

Add your drawing code inside the `draw()` in DrawingScene.swift. 

## Getting started

Download the repo and open in Xcode. 

Find DrawingScene.swift. 

Write your drawing command in the code block of the `draw()` function. 

## API

Coordinates are measured from the lower left corner. 

`penDown()` sets the pen down at the current location. 

`penUp()` lifts the pen up. No lines are drawn when the pen is up!

`moveTenSteps()` moves the pen ten steps at the current angle. 

`rotateNinetyDegrees()` rotates the pen 90˚ counter clockwise. 

`move(_ steps: Int)` moves the pen a number of steps at the current angle. 

`moveTo(x: Int, y: Int)` move the pen to an absolute x and y position. 

`rotate(_ degrees: Int)` rotates the pen a number of degrees counter clockwise. 

`setColor(red: Double, green: Double, blue: Double)` set the color of the next line segment drawn. 

`setThickness(_ thickness: Double)` set the thickness of the next line segment drawn. 

`changeDelay(delay: Double)` set the wait time between line segments. Sets the speed 
lines are drawn. 

## Challenges 

Test your programming skills by trying these challenges. 

### Challenge 1

**Draw a red box.** The default sample code draws a box in the default color blue. You'll 
need to use one of the methods above to change the color of the pen to red before 
calling move and rotate. 

### Challenge 2

**Draw a small box.** The default code draws a box that is 50 units on a side. Use the
`move(_ steps: Int)` method to set the number of steps moved. 

### Challenge 3 

**Write a function that draws the box.** The code that draws the box rather long better 
to store this code a function and call on it to draw the box when needed. Something like: 

`drawBox()`

### Challenge 4 

**Speed up the drawing process.** It's taking too long to draw things. Use 
`changeDelay(delay: 0.1)` speed up the drawing. Add this before the drawing code. 

Try changing the value here to vary the drawing speed. 

### Challenge 5 

**Draw the box near one of the corners.** Use the `moveTo(x: Int, y: Int)` method to move
the pen, then call your `drawBox()` function. try different values for x and y in the 
parameters of `moveTo(x: Int, y: Int)`. Note! it is possible to draw the box off the screen
if the numbers are too large or too small!

### Challenge 6 

**Make a function that draws a box of a size.** Write a new function that takes a parameter:
`size` that sets the size of the box drawn. You should be able to draw the box at any size. 
You should be able to call your method and draw a box of size 15 like this: 

`drawBox(size: 15)`

### Challenge 7 

**Draw a box near each corner.** Use the new method and make each box 12 units in size. 
Before each call to `drawBox(size: 12)` use `moveTo(x: Int, y: Int)` to move the pen 
to a location where you would like to draw. 

### Challenge 8 

**Draw concentric boxes.** Start by drawing a small box near the center of the screen. 
Then draw a bigger box around that one, and then another one around the last, and 
another around the first two etc. You may need to carefully position the pen before 
drawing each new box. 

### Challenge 9 

**Create a method that draws a triangle.** Remember the sum of angles of any polygon is 
360. With three angles you'll need to rotation 360/3 then draw a line segment and repeat. 

### Challenge 10 

**Draw the triangle with a for loop.** Rather than write move, rotate, move, rotate, move
use a for loop to call move, rotate three times. 

### Challenge 11

**Create a function that draws a polygon.** Your function should take a size and a number 
of sides. You can divide 360 by the number of sides to get the angle for each rotation. 
You'll need to move the size, and repeat move, rotate for the number of sides. 

Test your work by drawing polygons with the following number of sides

- 3
- 4
- 5
- 6
- 7 
- 8

### Challenge 12 

**Refactor your code.** You now have a function that can draw a polygon of any number of sides. 
refactor the box drawing functions to use the draw polygon function. 

Note! Refactoring is a software process that every project goes through. You should always be 
returning to code you wrote previously and improving the way it works. 

### Challenge 13 

**Draw a spiral.** You'll need to use a variable to change the length of each line segment you 
draw. make the segment longer with each step.

### Challenge 14 

**Draw a star.**

### Challenge 15 

**Draw a smiley face.**

## Challenge 16

**Write a function that draws a star.** Your function should take an inner diameter and an outer
diameter.

## Challenge 17

**Write a function that draws a star with n number of points.** 




