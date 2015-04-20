//
//  GameView.swift
//  PairsDemo
//
//  Created by Garrit Schaap on 20.04.15.
//  Copyright (c) 2015 Garrit UG (haftungsbeschränkt). All rights reserved.
//

import UIKit

class GameView: UIView {
    
    private let _cardFronts = [ "CardFront01", "CardFront02", "CardFront03", "CardFront04", "CardFront05", "CardFront06" ]
    private var _cards = [Int]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        createGamefield()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func createGamefield() {
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
        
        let distance = (bounds.size.width - 100 * 3) / 4
        for i in 0..<4 {
            for j in 0..<3 {
                let x = distance + (100 + distance) * CGFloat(j)
                let y = 64 + distance + (100 + distance) * CGFloat(i)
                let button = UIButton(frame: CGRectMake(x, y, 100, 100))
                button.setImage(UIImage(named: "CardBack"), forState: UIControlState.Normal)
                button.tag = i * 3 + j
                button.addTarget(self, action: "buttonHandler:", forControlEvents: UIControlEvents.TouchUpInside)
                addSubview(button)
            }
        }
    }
    
    func buttonHandler(button: UIButton) {
        println("Button \(button.tag) tapped")
        button.setImage(UIImage(named: _cardFronts[_cards[button.tag]]), forState: UIControlState.Normal)
    }

}
