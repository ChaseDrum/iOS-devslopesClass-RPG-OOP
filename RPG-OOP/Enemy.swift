//
//  Enemy.swift
//  RPG-OOP
//
//  Created by Chase Drum on 2/16/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import Foundation

class Enemy:Character {
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
     
        if !isAlive {
            // Were saying if he is not alive then do this...
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            //Essentially we are saying we want to do a random number between 0 and however many items are in array loot. It first returns an integer so we have to cast it to a UInt 32 then after its drawn the random number we cast it back to an integer
            return loot[rand]
        }
        
        return nil
    
    
        
    }
}