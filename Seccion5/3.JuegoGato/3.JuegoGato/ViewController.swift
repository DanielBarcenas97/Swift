//
//  ViewController.swift
//  3.JuegoGato
//
//  Created by PROTECO on 12/10/17.
//  Copyright © 2017 Proteco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var winnerLabel: UILabel!
    
    @IBOutlet var playAgainButton: UIButton!
    
    @IBAction func playAgain(_ sender: Any) {
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0 ]  //0 Vacio //1 es Circulo // 2 es Cruz
        activePlayer = 1
        activeGame = true
        for i in 1..<10{
            if let button = view.viewWithTag(i) as? UIButton{
                button.setImage(nil, for: [])
            }
            winnerLabel.center = CGPoint(x:winnerLabel.center.x - 500, y: playAgainButton.center.y)
            playAgainButton.center = CGPoint(x:playAgainButton.center.x - 500, y:playAgainButton.center.y)
            
            
        }
        
        
        
    }
    
    //1 Es: 0  y 2 es: X
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0 ]  //0 Vacio //1 es Circulo // 2 es Cruz
    var activePlayer = 1;
    var activeGame = true
    let winningCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

    @IBAction func buttonPressed(_ sender: Any) {
        let activePosition = (sender as AnyObject).tag - 1
        
        if gameState[activePosition] == 0 && activeGame {
            gameState[activePosition] = activePlayer
            if activePlayer == 1{
                
                (sender as AnyObject).setImage(UIImage(named: "nought.png"), for: [])
                
                activePlayer = 2
            }else{
                
                (sender as AnyObject).setImage(UIImage(named: "cross.png"), for: [])
                
                activePlayer = 1
                
            }
            
            for combination in winningCombinations {
                
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    //Ya tenemos un ganador
                    activeGame = false
                    winnerLabel.isHidden = false
                    if gameState[combination[0]] == 1{
                        winnerLabel.text = "¡Circulo Gana!"
                        
                    }else {
                        winnerLabel.text = "¡Cruces Ganan!"
                    }
                    UIView.animate(withDuration: 1, animations: {
                        self.winnerLabel.center = CGPoint(x:self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                        self.playAgainButton.center = CGPoint(x:self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                        
                    })
                }
            }
            
            
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x:winnerLabel.center.x - 500, y: playAgainButton.center.y)
        playAgainButton.center = CGPoint(x:playAgainButton.center.x - 500, y:playAgainButton.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

