//
//  ViewController.swift
//  RPG-OOP
//
//  Created by Chase Drum on 2/15/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "ButchCassidy2011", hp: 110, attackPwr: 20)
    
        generateRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
    
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        // Were essentially saying give me a random option for a total of two options.
        
        if rand == 0 {
            enemy = BadGuy1(startingHp: 50, attackPwr: 12)
        } else {
            enemy = BadGuy2(startingHp: 60, attackPwr: 15)
        }
        
        enemyImg.hidden = false
    }

    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        // Were saying that whene you tap on the chest it will display what loot is collected and it will make the chest disappear again. 
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        // This code says that we'll wait 2 seconds before a new enemy image is shown to make the app look a bit more fluid.
    }
    
    @IBAction func attackTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccesful!"
        }
    
        if let loot = enemy.dropLoot() {
            // Were doing if let because we did set an option for dropLoot where it can return nil. So if the enemy doesn't drop loot it won't crash the system.
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false

        }
        
        if !enemy.isAlive {
            // We're saying if the enemy is not alive do this...
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)!"
            enemyImg.hidden = true
            
        }
        
    }

}

