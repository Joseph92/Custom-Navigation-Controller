//
//  CustomNav.swift
//  CustomNavBar
//
//  Created by Josseph Colonia on 6/8/20.
//  Copyright © 2020 Fandango Latam. All rights reserved.
//

import UIKit

class CustomNav: UIView {
    
    //MARK: - UI Components
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "logo"))
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.text = "Lima, Perú"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .right
        return label
    }()
    
    func render() {
        setupLogoImage()
        setupCityLabel()
        backgroundColor = .black
    }
}

private extension CustomNav {
    func setupLogoImage() {
        addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        logoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        logoImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    func setupCityLabel() {
        addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.leadingAnchor.constraint(equalTo: logoImage.trailingAnchor, constant: 20).isActive = true
        cityLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
