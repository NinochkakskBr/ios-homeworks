//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Ниночка on 02.05.2022.
//

import UIKit




class ProfileViewController: UIViewController {
    
    let text = "Маша и Медведь"
    
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 86, width: 100, height: 100))
        imageView.image = UIImage(named: "images")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(imageView)
        
        
        print(#function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
        let button = UIButton(frame: CGRect(x: 16, y: 200, width: 285, height: 50))
        button.setTitle("Show profile", for: .normal)
        //button.profileButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4.0
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(button)
        
        let imageView = ProfileHeaderView(frame: CGRect(x: 16, y: 86, width: 100, height: 100))
        imageView.profileImage()
        view.addSubview(imageView)
        
    
        let text = UIButton(frame: CGRect(x: 55, y: 70, width: 300, height: 50))
        text.setTitle("Маша и Медведь", for: .normal)
        text.setTitleColor(UIColor.black, for: .normal)
        text.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(text)
        
        let status = UIButton(frame: CGRect(x: 55, y: 130, width: 300, height: 50))
        status.setTitle("Waiting for something...", for: .normal)
        status.setTitleColor(UIColor.gray, for: .normal)
        status.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        view.addSubview(status)
        
        print(#function)
    }
    
    @objc func buttonPressed() {
        print("Waiting for something...")
    }
        
    
        
}

    
