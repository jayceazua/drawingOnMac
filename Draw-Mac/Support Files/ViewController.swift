//
//  ViewController.swift
//  Draw-Mac
//
//  Created by mitchell hudson on 8/28/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

  @IBOutlet var skView: SKView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    if let view = self.skView {
      if let scene = DrawingScene(fileNamed: "DrawingScene") {
        print(scene)
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        // Present the scene
        view.presentScene(scene)
        
        view.ignoresSiblingOrder = true
        
        view.showsFPS = true
        view.showsNodeCount = true
      }
    }
  }
}

