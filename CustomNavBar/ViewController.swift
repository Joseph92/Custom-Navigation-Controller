//
//  ViewController.swift
//  CustomNavBar
//
//  Created by Josseph Colonia on 6/8/20.
//  Copyright © 2020 Fandango Latam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tView = CustomNav()
        tView.render()
        
        // ToDo: validate optional values
        navigationItem.titleView = tView
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.titleView!.translatesAutoresizingMaskIntoConstraints = false
        navigationItem.titleView!.trailingAnchor.constraint(equalTo: navigationController!.navigationBar.trailingAnchor).isActive = true
        navigationItem.titleView!.leadingAnchor.constraint(equalTo: navigationController!.navigationBar.leadingAnchor).isActive = true
        navigationItem.titleView!.topAnchor.constraint(equalTo: navigationController!.navigationBar.topAnchor).isActive = true
        navigationItem.titleView!.bottomAnchor.constraint(equalTo: navigationController!.navigationBar.bottomAnchor).isActive = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    
    
}

