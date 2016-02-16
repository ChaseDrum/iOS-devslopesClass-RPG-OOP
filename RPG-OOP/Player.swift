//
//  Player.swift
//  RPG-OOP
//
//  Created by Chase Drum on 2/16/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import Foundation

class Player:Character {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    convenience init(name:String, hp:Int, attackPwr: Int) {
        self.init (startingHp: hp, attackPwr: attackPwr)
        // self.init above instead of referring to type like int or string, but this init is pulling from the Character class.
        _name = name
    }
    
}