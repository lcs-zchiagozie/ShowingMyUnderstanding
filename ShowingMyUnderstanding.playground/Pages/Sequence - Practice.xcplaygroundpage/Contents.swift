/*:
 [Previous](@previous) / [Next](@next)

 # Sequence - Practice
 
 When does sequence matter?

 Here is an example of an image that is created and depends on statements being run in a certain order:

 ![overlapping_shapes](overlapping-shapes.png "Overlapping Shapes Logo")

 In this shape, there are lines and ellipses used.

 [Color](http://russellgordon.ca/lcs/HSB_Color_Model_Summary_Swift.pdf) and alpha (transparency) matter.

 Try reproducing this image for practice.
 
 NOTE: Colors and image must match precisely.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note

 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// No borders
canvas.drawShapesWithBorders = false

// Thick lines
canvas.defaultLineWidth = 5

// Add your code below... remember to use comments to indicate your intent
// Black Background.
canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
// Green Circle
canvas.fillColor = Color.init(hue: 120, saturation: 95, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: 100, centreY: 250, width: 100, height: 100)
canvas.lineColor = Color.init(hue: 120, saturation: 95, brightness: 100, alpha: 100)
canvas.drawLine(fromX: 100, fromY: 200, toX: 100, toY: 150)
// Yellow Circle
canvas.fillColor = Color.init(hue: 60, saturation: 95, brightness: 100, alpha: 80)
canvas.lineColor = Color.init(hue: 60, saturation: 95, brightness: 100, alpha: 80)
canvas.drawLine(fromX: 150, fromY: 200, toX: 150, toY: 150)
canvas.drawEllipse(centreX: 150, centreY: 250, width: 100, height: 100)
//Red Circle
canvas.fillColor = Color.init(hue: 0, saturation: 95, brightness: 100, alpha: 80)
canvas.drawEllipse(centreX: 200, centreY: 250, width: 100, height: 100)
// Blue Circle
canvas.fillColor = Color.init(hue: 240, saturation: 95, brightness: 100, alpha: 80)
canvas.drawEllipse(centreX: 250, centreY: 250, width: 100, height: 100)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
