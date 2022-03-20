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
        
    private lazy var newButton: UIButton = {
        let button = UIButton()
        
        button.clipsToBounds = true
        button.backgroundColor = .systemBlue
        button.setTitle("New Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.addTarget(self, action: #selector(didTapTransitionButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 12
        //настройка тени под кнопкой с помощью слоя CALayer
        button.layer.masksToBounds = false
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        button.layer.shadowRadius = 4.0
        button.layer.shadowOpacity = 0.7
        //==================================================
        
        return button
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
        
        self.view.addSubview(newButton)
        
        //Setup constraint newButton
        let bottomAnchorNewButton = self.newButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100)
        let leadingNewButton = self.newButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingNewButton = self.newButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let heightNewButton = self.newButton.heightAnchor.constraint(equalToConstant: 50)
        
        //Activated constraints
//        NSLayoutConstraint.activate([
//            bottomAnchorNewButton, leadingNewButton, trailingNewButton, heightNewButton
//        ].compactMap({ $0 }))

        
        NSLayoutConstraint.activate([
            topConstraintProfileView, leadingConstraintProfileView, trailingConstraintProfileView, heightConstraintProfileView, bottomAnchorNewButton, leadingNewButton, trailingNewButton, heightNewButton
        ].compactMap({ $0 }))
    }
}
