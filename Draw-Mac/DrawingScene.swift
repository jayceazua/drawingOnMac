import SpriteKit
import Foundation

open class DrawingScene: SKScene {
    
    open var pen: Pen!
    var background: SKSpriteNode!
    open var penSprite: SKSpriteNode!
    var lastShapeNode = 0
    var lastImage: NSImage = #imageLiteral(resourceName: "blank.png")
  
  
  
    // ******************************************************************
    // ******************************************************************
  
    func draw() {
      // Your drawing code here
        setColor(red: 255, green: 0, blue: 0)
        // moveTo(x: 0.01, y: 0.02) // <- challenge 5, 7 is broken
        drawBox(size: 15)
        drawBox(size: 35)
        drawBox(size: 55)
    }
    
    func drawBox(size: Int) {
        Draw_Mac.move(steps: size)
        rotateNinety()
        Draw_Mac.move(steps: size)
        rotateNinety()
        Draw_Mac.move(steps: size)
        rotateNinety()
        Draw_Mac.move(steps: size)
        changeDelay(delay: 0.1)
    }
  
    // ******************************************************************
    // ******************************************************************
  
  
  
    override open func didMove(to view: SKView) {
        penSprite = childNode(withName: "pen") as? SKSpriteNode
        background = childNode(withName: "background") as? SKSpriteNode
      pen = Pen.sharedInstance
      
      draw()
    }
    
    open override func update(_ currentTime: TimeInterval) {
        penSprite.position = pen.position
        penSprite.zRotation = pen.rotation
        
        if lastShapeNode < pen.shapeNodes.count || pen.processing {
            pen.newShapeNode()
            if (self.view?.texture(from: background)) != nil {
                let image = lastImage
                image.lockFocus()
                NSGraphicsContext.current?.shouldAntialias = true
                for i in lastShapeNode ..< (pen.shapeNodes.count - 1) {
                    let data = pen.shapeNodes[i]!
                    if data.numberOfPoints > 0 {
                        let path = data.path
                        data.color.set()
                        path.stroke()
                    }
                    lastShapeNode += 1
                    pen.shapeNodes[i] = nil
                }
                image.unlockFocus()
                
                lastImage = image
                background.texture = SKTexture(image: lastImage)
                
                if !pen.processing {
                    pen.shapeNodes = [ShapeNodeData?]()
                }
            }
        }
    }
    
    open class func setup() -> SKView {
        let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        sceneView.wantsLayer = true
        let scene = DrawingScene(fileNamed: "DrawingScene")!
        scene.scaleMode = .aspectFill
        sceneView.presentScene(scene)
        return sceneView
    }
}
