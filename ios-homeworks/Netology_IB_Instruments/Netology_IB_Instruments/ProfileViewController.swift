//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Ниночка on 09.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenWidth = UIScreen.main.bounds.width
        if let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            profileView.frame = CGRect(x: 20, y: 70, width: screenWidth - 40, height: 400)
            view.addSubview(profileView)
        }

    }
    
}
