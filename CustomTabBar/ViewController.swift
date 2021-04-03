//
//  ViewController.swift
//  CustomTabBar
//
//  Created by David Im on 1/4/21.
//

import UIKit

class ViewController: UIViewController {

    private var tabBarBackgroundView:UIView!
    private var tabBarButtonStackView:UIStackView!
    private var homeButton:UIButton!
    private var newsFeedButton:UIButton!
    private var accountButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setupViews()
        setupButton()
    }
    
    private func setupViews() {
        tabBarBackgroundView = UIView()
        view.addSubview(tabBarBackgroundView)
        tabBarBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        tabBarBackgroundView.layer.cornerRadius = 40
        tabBarBackgroundView.backgroundColor = .white
        
        tabBarBackgroundView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        tabBarBackgroundView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        tabBarBackgroundView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        tabBarBackgroundView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true
        
        tabBarBackgroundView.layer.shadowColor = UIColor.black.cgColor
        tabBarBackgroundView.layer.shadowOpacity = 1
        tabBarBackgroundView.layer.shadowOffset = .zero
        tabBarBackgroundView.layer.shadowRadius = 2.5
       // tabBarBackgroundView.layer.shadowPath = UIBezierPath(rect: tabBarBackgroundView.bounds).cgPath
        //tabBarBackgroundView.layer.shouldRasterize = true // cache the rendered shadow to avoid redraw
        //tabBarBackgroundView.layer.rasterizationScale = UIScreen.main.scale
    }
    
    private func setupButton() {
        tabBarButtonStackView = UIStackView()
        homeButton = UIButton()
        newsFeedButton = UIButton()
        accountButton = UIButton()
        
        tabBarBackgroundView.addSubview(tabBarButtonStackView)
        
        // Customize buttons
        homeButton.setImage(UIImage(systemName: "house"), for: .normal)
        homeButton.tintColor = .black
        newsFeedButton.setImage(UIImage(systemName: "line.horizontal.3"), for: .normal)
        newsFeedButton.tintColor = .black
        accountButton.setImage(UIImage(systemName: "person"), for: .normal)
        accountButton.tintColor = .black
        
        // Add buttons into stackview
        tabBarButtonStackView.addArrangedSubview(homeButton)
        tabBarButtonStackView.addArrangedSubview(newsFeedButton)
        tabBarButtonStackView.addArrangedSubview(accountButton)
        
        tabBarButtonStackView.axis = .horizontal
        tabBarButtonStackView.distribution = .fillEqually
        tabBarButtonStackView.spacing = 0
        
        tabBarButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        tabBarButtonStackView.centerYAnchor.constraint(equalTo: tabBarBackgroundView.centerYAnchor).isActive = true
        tabBarButtonStackView.leadingAnchor.constraint(equalTo: tabBarBackgroundView.leadingAnchor, constant: 0).isActive = true
        tabBarButtonStackView.trailingAnchor.constraint(equalTo: tabBarBackgroundView.trailingAnchor, constant: -0).isActive = true
        
        
    }
    



}

