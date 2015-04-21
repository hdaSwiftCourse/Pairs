//
//  GameViewController.swift
//  PairsDemo
//
//  Created by Garrit Schaap on 20.04.15.
//  Copyright (c) 2015 Garrit UG (haftungsbeschränkt). All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    private var _gameView: GameView!
    private let _cardFronts = [ "CardFront01", "CardFront02", "CardFront03", "CardFront04", "CardFront05", "CardFront06" ]
    private var _cards = [Int]()
    private var _openCards = [Int]()
    private var _pairCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Game"
        
        _gameView = GameView(frame: view.bounds)
        view.addSubview(_gameView)
        
        setupGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupGame() {
        let numberOfCards = 12
        for i in 0..<numberOfCards {
            _cards.append(-1)
        }
        
        for i in 0..<6 {
            var random: Int
            do {
                random = Int(arc4random() % UInt32(numberOfCards))
            } while _cards[random] != -1
            _cards[random] = i
            
            do {
                random = Int(arc4random() % UInt32(numberOfCards))
            } while _cards[random] != -1
            _cards[random] = i
        }
        println(_cards)
        
        for button in _gameView.buttons {
            button.addTarget(self, action: "buttonHandler:", forControlEvents: UIControlEvents.TouchUpInside)
        }
    }
    
    func buttonHandler(button: UIButton) {
        println("Button \(button.tag) tapped")
        button.setImage(UIImage(named: _cardFronts[_cards[(button.tag - 1)]]), forState: UIControlState.Normal)
        button.enabled = false
        button.adjustsImageWhenDisabled = false
        
        if _openCards.count == 2 {
            for cardTag in _openCards {
                if let openButton = _gameView.viewWithTag(cardTag) as? UIButton {
                    openButton.setImage(UIImage(named: "CardBack"), forState: UIControlState.Normal)
                    openButton.enabled = true
                }
            }
            _openCards.removeAll(keepCapacity: false)
        }
        
        _openCards.append(button.tag)
        
        //Checken ob 2 Karten gleich sind
        if _openCards.count == 2 {
            if _cards[_openCards[0] - 1] == _cards[_openCards[1] - 1] {
                println("Pair found")
                for cardTag in _openCards {
                    if let openButton = _gameView.viewWithTag(cardTag) as? UIButton {
                        openButton.enabled = false
                        openButton.adjustsImageWhenDisabled = true
                    }
                }
                _pairCount++
                _openCards.removeAll(keepCapacity: false)
            }
            if _pairCount == 6 {
                UIAlertView(title: "Finished", message: "You solved the game. Congratulations.", delegate: nil, cancelButtonTitle: "Thank you").show()
            }
        }
    }

}
