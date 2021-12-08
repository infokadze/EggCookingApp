//
//  ConstraintsVC3.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 08.12.2021.
//

import UIKit

extension SettingsVC {
    
    func setConstraints() {
        
        view.addSubview(settingsTitleLabel)
        settingsTitleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        settingsTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 71).isActive = true
        settingsTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(backButton)
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37).isActive = true
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        
        view.addSubview(notificationsLabel)
        notificationsLabel.widthAnchor.constraint(equalToConstant: 113.01).isActive = true
        notificationsLabel.heightAnchor.constraint(equalToConstant: 23).isActive = true
        notificationsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 162).isActive = true
        notificationsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21).isActive = true
        
        view.addSubview(notificationButton)
        notificationButton.topAnchor.constraint(equalTo: notificationsLabel.bottomAnchor, constant: 5).isActive = true
        notificationButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        notificationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        notificationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21).isActive = true
//        notificationButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 190).isActive = true
        
        
        notificationButton.addSubview(switchLabelForNotification)
        switchLabelForNotification.widthAnchor.constraint(equalToConstant: 51).isActive = true
        switchLabelForNotification.heightAnchor.constraint(equalToConstant: 31).isActive = true
        switchLabelForNotification.trailingAnchor.constraint(equalTo: notificationButton.trailingAnchor, constant: -18.7).isActive = true
        switchLabelForNotification.bottomAnchor.constraint(equalTo: notificationButton.bottomAnchor, constant: -11.5).isActive = true
        switchLabelForNotification.topAnchor.constraint(equalTo: notificationButton.topAnchor,constant: 12.5).isActive = true
        
        view.addSubview(soundCellButton)
        soundCellButton.widthAnchor.constraint(equalToConstant: 113.01).isActive = true
        soundCellButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        soundCellButton.topAnchor.constraint(equalTo: notificationButton.bottomAnchor, constant: 5).isActive = true
        soundCellButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21).isActive = true
        soundCellButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true

        soundCellButton.addSubview(switchLabelSound)
        switchLabelSound.widthAnchor.constraint(equalToConstant: 51).isActive = true
        switchLabelSound.heightAnchor.constraint(equalToConstant: 31).isActive = true
        switchLabelSound.trailingAnchor.constraint(equalTo: soundCellButton.trailingAnchor, constant: -18.7).isActive = true
        switchLabelSound.bottomAnchor.constraint(equalTo: soundCellButton.bottomAnchor, constant: -11.5).isActive = true
        switchLabelSound.topAnchor.constraint(equalTo: soundCellButton.topAnchor,constant: 12.5).isActive = true
        
        
        
        view.addSubview(privacyTitleLabel)
        privacyTitleLabel.heightAnchor.constraint(equalToConstant: 23).isActive = true
        privacyTitleLabel.topAnchor.constraint(equalTo: soundCellButton.bottomAnchor, constant: 9).isActive = true
        privacyTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21).isActive = true
        
        
        view.addSubview(privacyAndTermsView)
        privacyAndTermsView.topAnchor.constraint(equalTo: privacyTitleLabel.bottomAnchor, constant: 5).isActive = true
        privacyAndTermsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21).isActive = true
        privacyAndTermsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        privacyAndTermsView.heightAnchor.constraint(equalToConstant: 108).isActive = true
        
        privacyAndTermsView.addSubview(privacyCellButton)
        privacyCellButton.topAnchor.constraint(equalTo: privacyAndTermsView.topAnchor).isActive = true
        privacyCellButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        privacyCellButton.trailingAnchor.constraint(equalTo: privacyAndTermsView.trailingAnchor).isActive = true
        privacyCellButton.leadingAnchor.constraint(equalTo: privacyAndTermsView.leadingAnchor).isActive = true
//        privacyCellButton.bottomAnchor.constraint(equalTo: spacerView.topAnchor).isActive = true
        
        privacyAndTermsView.addSubview(spacerView)
        spacerView.topAnchor.constraint(equalTo: privacyCellButton.bottomAnchor).isActive = true
        spacerView.trailingAnchor.constraint(equalTo: privacyAndTermsView.trailingAnchor).isActive = true
        spacerView.leadingAnchor.constraint(equalTo: privacyAndTermsView.leadingAnchor, constant: 16).isActive = true
        spacerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        privacyAndTermsView.addSubview(termsCellButton)
        termsCellButton.topAnchor.constraint(equalTo: spacerView.bottomAnchor, constant: 0).isActive = true
        termsCellButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        termsCellButton.trailingAnchor.constraint(equalTo: privacyAndTermsView.trailingAnchor).isActive = true
        termsCellButton.leadingAnchor.constraint(equalTo: privacyAndTermsView.leadingAnchor).isActive = true
        
    }
}

extension UISwitch {
    func offTintColor(color: UIColor ) {
        let minSide = min(bounds.size.height, bounds.size.width)
        layer.cornerRadius = minSide / 2
        backgroundColor = color
        tintColor = color
    }
}
