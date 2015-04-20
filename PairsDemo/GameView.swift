//
//  GameView.swift
//  PairsDemo
//
//  Created by Garrit Schaap on 20.04.15.
//  Copyright (c) 2015 Garrit UG (haftungsbeschränkt). All rights reserved.
//

import UIKit

class GameView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        createGamefield()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func createGamefield() {
        let distance = (bounds.size.width - 100 * 3) / 4
        for i in 0...4 {
            for j in 0...3 {
                let x = distance + (100 + distance) * CGFloat(j)
                let y = 64 + distance + (100 + distance) * CGFloat(i)
                let button = UIButton(frame: CGRectMake(x, y, 100, 100))
                button.backgroundColor = UIColor.blackColor()
                button.setImage(UIImage(named: "CardBack"), forState: UIControlState.Normal)
                addSubview(button)
            }
        }
    }

}
