//
//  Enemy2.swift
//  RPG-OOP
//
//  Created by Chase Drum on 2/16/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import Foundation

class BadGuy1: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident", "Nasty Toothbrush"]
    }
    
    override var type: String {
        return "Kimara"
        //Kimara is overriding the default "Grunt" and is the name for this tougher bad guy
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
            //Calling the attempt attack func from class Character without having to rewrite any code but allows for the immune max constant to work and the override func.
        } else {
            return false
        }
    }
    
}