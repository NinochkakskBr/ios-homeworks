//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Ниночка on 08.05.2022.
//
import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    
    let imageNameList: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    var section: [String] {["Фото", "Информация"]}
    var posts: [Post] = Post.makeMockModel()
    
    private lazy var profileHeaderView: UIView = {
        let profile = ProfileHeaderView()
        profile.translatesAutoresizingMaskIntoConstraints = false
        profile.backgroundColor = .gray
        return profile
    }()


private lazy var postTableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifier)
    tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: PhotosTableViewCell.identifier)
    return tableView
}()

override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    configure()
    self.navigationController?.isNavigationBarHidden = false
    self.navigationItem.title = "Интересное"
}

private func configure() {
    view.addSubview(postTableView)
    NSLayoutConstraint.activate([
        postTableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
        postTableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
        postTableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
        postTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
    ])
}
}

//MARK: - UITableViewDelegate

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return section == 0 ? profileHeaderView : nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 200 : 0
    }
}

//MARK: - UITableViewDataSource

extension ProfileViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return section.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PhotosTableViewCell.identifier, for: indexPath) as! PhotosTableViewCell
            cell.photos = imageNameList
            cell.delegate = self
            cell.update(section[0])
            cell.selectionStyle = .none
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.update(posts[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
}

extension ProfileViewController: PhotosTableViewCellDelegate {
    func buttonTap() {
        let photosView = PhotosViewController()
        photosView.photos = imageNameList
        navigationController?.pushViewController(photosView, animated: true)
    }
}
