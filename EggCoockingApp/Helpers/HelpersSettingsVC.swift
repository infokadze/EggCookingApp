//
//  HelpersSettingsVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 07.12.2021.
//

import UIKit

extension SettingsVC {
    
    func setupLayout() {
        
        configureTableView()
        
        view.addSubview(tableView)
        
        tableView.addSubview(notificationCell)
        
        notificationCell.addSubview(switchLabelForNotification)
        
        soundCell.addSubview(switchLabelSound)
        
        tableView.addSubview(soundCell)
        
        tableView.addSubview(privacyPolicyCell)
        
        tableView.addSubview(termsOfUseCell)
        
        tableView.addSubview(rateUsCell)
        
        tableView.addSubview(shareUsCell)
    }
    
    
     func setSettingsScreenColor() -> UIColor {
        let color = UIColor.rgbColor(red: 252, green: 237, blue: 226, alpha: 1)
         return color
    }
}


