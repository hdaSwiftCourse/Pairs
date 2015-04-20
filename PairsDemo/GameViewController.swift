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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Game"
        
        _gameView = GameView(frame: view.bounds)
        view.addSubview(_gameView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
