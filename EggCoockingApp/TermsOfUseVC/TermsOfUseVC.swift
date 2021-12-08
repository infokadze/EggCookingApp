//
//  TermsOfUseVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 08.12.2021.
//

import UIKit

class TermsOfUseVC : UIViewController {
    
    let termsOfUseLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Terms of Use"
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 25)
        return label
    }()
    
    let backToSettingsButton: UIButton = {
        let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        backButton.addTarget(self, action: #selector(backToSettingsVC), for: .touchUpInside)
        return backButton
    }()
    
    @objc func backToSettingsVC() {
        let vc = SettingsVC()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true, completion: nil)
    }
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.font = UIFont(name: "SF Compact Display Regular", size: 14)
        textView.backgroundColor = UIColor.rgbColor(red: 252, green: 237, blue: 226, alpha: 1)
        textView.textAlignment = .justified
        textView.text = """

Terms of Use

This agreement governs and is applicable for all Trial, Full and Bundle Licenses for LeadsDoIt software developed and distributed by LeadsDoIt Limited.

Software that is installed and used on computers and other devices utilizing Apple or Windows Operating Systems.

PLEASE READ THIS EULA CAREFULLY BEFORE DOWNLOADING, INSTALLING OR USING LEADSDOIT SOFTWARE. BY DOWNLOADING, INSTALLING AND USING THE SOFTWARE, YOU ARE AGREEING TO BE BOUND BY THE TERMS OF THIS EULA. IF YOU DO NOT AGREE TO THE TERMS OF THIS EULA, DO NOT DOWNLOAD, INSTALL AND/OR USE THE SOFTWARE AND, IF PRESENTED WITH THE OPTION TO “AGREE” OR “DISAGREE” TO THE TERMS, CLICK “DISAGREE”.

This EULA (“User License Agreement”, “License Agreement”, “Terms of Use”, “Agreement”, or “Service Agreement”) is a agreement between you (“You”, “Your”) (either an individual or a single entity) and LeadsDoIt, Ltd. (“LeadsDoIt” or “Us”, “We”) for the LeadsDoIt Software.
"""
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
  
    }
    
    func setupLayout() {
        
        view.addSubview(backToSettingsButton)
        NSLayoutConstraint.activate([
            backToSettingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            backToSettingsButton.topAnchor.constraint(lessThanOrEqualTo: view.topAnchor, constant: 84)
        ])
        
        view.addSubview(termsOfUseLabel)
        NSLayoutConstraint.activate([
            termsOfUseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            termsOfUseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 28),
            termsOfUseLabel.topAnchor.constraint(equalTo: backToSettingsButton.bottomAnchor,constant: 35)
        ])
        
        view.addSubview(textView)
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            textView.topAnchor.constraint(equalTo: termsOfUseLabel.bottomAnchor,constant: 32),
            textView.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: 91)
        ])
    }
}
