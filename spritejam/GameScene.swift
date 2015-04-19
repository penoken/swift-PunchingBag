//
//  GameScene.swift
//  spritejam
//
//  Created by 北野謙治 on 2015/04/17.
//  Copyright (c) 2015年 penoken. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let sprite = SKSpriteNode(color: NSColor.redColor(), size: CGSizeMake(50, 50))
    let sprite2 = SKSpriteNode(color: NSColor.orangeColor(), size:CGSizeMake(100,100))
    let sprite3 = SKSpriteNode(color: NSColor.whiteColor(),size: CGSizeMake(80,80))
    var Sw1 = 0
    var tempLocation = CGPointMake(0,0)
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */

        let location = CGPointMake(100,100)
        let location2 = CGPointMake(0,0)

        sprite2.position = location
//        sprite2.setScale(0.5)
        self.addChild(sprite2)


        sprite.position = location
        //        sprite.setScale(0.5)
        sprite3.position = location
//        sprite3.setScale(0.5)
        self.addChild(sprite3)
        self.addChild(sprite)
        

    
    }
    
    override func mouseDown(theEvent: NSEvent) {
        /* Called when a mouse click occurs */
        
        let location = theEvent.locationInNode(self)
        var action = SKAction()
        
        if Sw1 == 0 {
             action = SKAction.moveTo(CGPointMake(location.x,100), duration: 0.1)
            tempLocation = location
            Sw1 = 1
        } else {
             action = SKAction.moveTo(CGPointMake(tempLocation.x,location.y),duration: 0.1)
            tempLocation = location
            Sw1 = 0
        }
        
        sprite.runAction(action)
        sprite3.runAction(action)
        
        let action2 = SKAction.moveTo(location,duration:1.0)
        sprite2.runAction(action2)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
