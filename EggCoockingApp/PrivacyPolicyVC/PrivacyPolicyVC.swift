//
//  PrivacyPolicyVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 08.12.2021.
//

import UIKit

class PrivacyPolicyVC : UIViewController {
    
    let privacyPolicyLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Privacy Policy"
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

Privacy Policy

LeadsDoIt takes your privacy seriously. Privacy policy on this page explains how LeadsDoIt treats any personal information that LeadsDoIt collects and receives when you are using the LeadsDoIt website (“Website”) or products. Please read the content below to learn more about our privacy policy and commitment.

Who We are

LeadsDoIt, Ltd. (“We” or “Our” or “Us” or LeadsDoIt) collects and uses your Personal Data in accordance with this privacy policy and in compliance with the applicable data protection laws. This policy provides you with the necessary information regarding your rights and our obligations, and explains how, why and when we process your personal data.

Our Privacy Commitment

LeadsDoIt does not collect nor process any Personal Data that is not provided by our users specifically, voluntarily and consciously. We guarantee that our staff complies with the strictest standards of safety and confidentiality and that processing of said Personal Data is carried out with total respect of international legislations.
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
        
        view.addSubview(privacyPolicyLabel)
        NSLayoutConstraint.activate([
            privacyPolicyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            privacyPolicyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 28),
            privacyPolicyLabel.topAnchor.constraint(equalTo: backToSettingsButton.bottomAnchor,constant: 35)
        ])
        
        view.addSubview(textView)
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            textView.topAnchor.constraint(equalTo: privacyPolicyLabel.bottomAnchor,constant: 32),
            textView.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: 91)
        ])
    }
}
