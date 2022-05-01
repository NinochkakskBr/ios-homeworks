//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Ниночка on 02.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {

    func profileButton() {
        
        backgroundColor = .blue
        layer.cornerRadius = 4.0
        
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.shadowOpacity = 0.7
        layer.shadowColor = UIColor.black.cgColor
    }
    
    func profileImage() {
        
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 50
        layer.masksToBounds = true

}
    
}
