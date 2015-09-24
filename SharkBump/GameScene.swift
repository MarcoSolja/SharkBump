//
//  GameScene.swift
//  SharkBump
//
//  Created by msawyer on 9/14/15.
//  Copyright (c) 2015 msawyer. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var Shark1 = SKSpriteNode(imageNamed: "SharkRight.png")
    var Shark2 = SKSpriteNode(imageNamed: "SharkLeft.png")
    var Bloody1 = SKSpriteNode(imageNamed: "BloodRight.png")
    var Bloody2 = SKSpriteNode(imageNamed: "BloodLeft.png")
    var Dolphin1 = SKSpriteNode(imageNamed: "DolphinLeft.png")
    var Dolphin2 = SKSpriteNode(imageNamed: "DolphinRight.png")
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let MaxX: uint = UInt32(self.size.width)
        let MaxY: uint = UInt32(self.size.height)
        
        //backgroundColor = (UIColor.lightblueColor()
        
        Shark1.size = CGSize(width: Shark1.size.width * 2.5, height: Shark1.size.height * 2.5)
        Shark2.size = CGSize(width: Shark2.size.width * 2.5, height: Shark2.size.height * 2.5)
        Bloody1.size = CGSize(width: Bloody1.size.width * 2.5, height: Bloody1.size.height * 2.5)
        Bloody2.size = CGSize(width: Bloody2.size.width * 2.5, height: Bloody2.size.height * 2.5)
        Dolphin1.size = CGSize(width: Dolphin1.size.width * 2.5, height: Dolphin1.size.height * 2.5)
        Dolphin2.size = CGSize(width: Dolphin2.size.width * 2.5, height: Dolphin2.size.height * 2.5)
        
        Shark1.position = CGPointMake(CGFloat(arc4random_uniform(MaxX)), CGFloat(arc4random_uniform(MaxY)))
        Shark2.position = CGPointMake(CGFloat(arc4random_uniform(MaxX)), CGFloat(arc4random_uniform(MaxY)))
        Bloody1.position = CGPointMake(CGFloat(arc4random_uniform(MaxX)), CGFloat(arc4random_uniform(MaxY)))
        Bloody2.position = CGPointMake(CGFloat(arc4random_uniform(MaxX)), CGFloat(arc4random_uniform(MaxY)))
        Dolphin1.position = CGPointMake(CGFloat(arc4random_uniform(MaxX)), CGFloat(arc4random_uniform(MaxY)))
        Dolphin2.position = CGPointMake(CGFloat(arc4random_uniform(MaxX)), CGFloat(arc4random_uniform(MaxY)))
        
        
        self.addChild(Shark1)
        self.addChild(Shark2)
        self.addChild(Bloody1)
        self.addChild(Bloody2)
        self.addChild(Dolphin1)
        self.addChild(Dolphin2)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            
            
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
