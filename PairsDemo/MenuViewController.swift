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
        view.addSubview(_menuView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

