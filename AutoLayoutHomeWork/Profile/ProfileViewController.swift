//
//  ProfileViewController.swift
//  UIBaseComponents
//
//  Created by Александр Смирнов on 16.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileHeaderView: ProfileHeaderView = {
        let view = ProfileHeaderView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
//        self.setupView()
    }
    
    override func viewWillLayoutSubviews() {
        self.setupView()
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.navigationItem.title = "Profile"
    }
    
    private func setupView() {
        
        self.view.backgroundColor = .white
        self.view.addSubview(self.profileHeaderView)
        let topConstraintProfileView = self.profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor)
        let leadingConstraintProfileView = self.profileHeaderView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor)
        let trailingConstraintProfileView = self.profileHeaderView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        let heightConstraintProfileView = self.profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        
        NSLayoutConstraint.activate([
            topConstraintProfileView, leadingConstraintProfileView, trailingConstraintProfileView, heightConstraintProfileView
        ].compactMap({ $0 }))
    }
}
