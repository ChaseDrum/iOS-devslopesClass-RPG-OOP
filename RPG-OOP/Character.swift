//
//  Character.swift
//  RPG-OOP
//
//  Created by Chase Drum on 2/16/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import Foundation


class Character {
    private var _hp:Int = 100
    private var _attackPwr: Int = 10
    
    var attackPwr: Int {
        get {
            
        return _attackPwr
        }
    }
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
 
    init (startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr:Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
}