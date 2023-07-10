//
//  ViewController.swift
//  PrimeiroProjetoMVVM
//
//  Created by Guilherme Almeida on 07/07/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
