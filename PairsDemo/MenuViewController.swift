//
//  ViewController.swift
//  PairsDemo
//
//  Created by Garrit Schaap on 20.04.15.
//  Copyright (c) 2015 Garrit UG (haftungsbeschränkt). All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    private var _menuView: MenuView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Menu"
        
        _menuView = MenuView(frame: view.bounds)
        _menuView.playButton.addTarget(self, action: "playButtonHandler", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(_menuView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func playButtonHandler() {
        let controller = GameViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

