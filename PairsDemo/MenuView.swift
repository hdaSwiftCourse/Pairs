//
//  MenuView.swift
//  PairsDemo
//
//  Created by Garrit Schaap on 20.04.15.
//  Copyright (c) 2015 Garrit UG (haftungsbeschränkt). All rights reserved.
//

import UIKit

class MenuView: UIView {

    let playButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        playButton.setTitle("PLAY", forState: UIControlState.Normal)
        playButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        playButton.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Highlighted)
        playButton.titleLabel?.font = UIFont(name: "AvenirNext-UltraLight", size: 60)
        playButton.sizeToFit()
        addSubview(playButton)
        
        playButton.center = self.center
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
