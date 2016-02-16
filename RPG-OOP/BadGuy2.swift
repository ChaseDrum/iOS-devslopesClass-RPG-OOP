//
//  BadGuy2.swift
//  RPG-OOP
//
//  Created by Chase Drum on 2/16/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import Foundation

class BadGuy2:Enemy {
   
    override var type: String {
        return "Devil Wizard"
        //Devil Wizard is overriding the default "Grunt" and is the name for this tougher bad guy
    }

    
    override var loot: [String] {
        return ["Staff or Ra", "Tax Audit", "Decent Bowler Hat", "Slightly Used Sleeping Bag"]
        //Since in appearance its a more powerful enemy we want to add better loot
    }
}
