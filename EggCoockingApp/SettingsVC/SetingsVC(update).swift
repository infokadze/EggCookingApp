//
//  SetingsVC(update).swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 08.12.2021.
//

import UIKit

class SettingsVC : UIViewController {
    
    
    let settingsTitleLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Settings"
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 25)
        return label
    }()
    
    let backButton: UIButton = {
        let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        return backButton
    }()
    
    let notificationsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "NOTIFICATIONS"
        label.font = UIFont(name: "SF Compact Display Regular", size: 17)
        return label
    }()
    
    let notificationButton: UIButton = {
        let cellView = UIButton()
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.setTitle("Notification", for: .normal)
        cellView.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        cellView.titleEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        cellView.layer.cornerRadius = 15
        cellView.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return cellView
    }()
    
    let switchLabelForNotification: UISwitch = {
        let onOff = UISwitch()
        onOff.layer.zPosition = 20
        onOff.offTintColor(color: .systemGray)
        onOff.isOn = true
        onOff.translatesAutoresizingMaskIntoConstraints = false
        onOff.addTarget(self, action: #selector(handleNotificationSwitch), for: .touchUpInside)
        return onOff
    }()
    
    @objc func handleNotificationSwitch() {
        
    }
    
    let soundCellButton: UIButton = {
        let cellView = UIButton()
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.setTitle("Sound", for: .normal)
        cellView.layer.cornerRadius = 15
        cellView.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        cellView.titleEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        cellView.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return cellView
    }()
    
    let switchLabelSound: UISwitch = {
        let onOff = UISwitch()
        onOff.offTintColor(color: .systemGray)
        onOff.isOn = true
        onOff.translatesAutoresizingMaskIntoConstraints = false
        onOff.addTarget(self, action: #selector(handleSoundSwitch), for: .touchUpInside)
        return onOff
    }()
    
    @objc func handleSoundSwitch() {
        
    }
    
    
    let privacyTitleLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PRIVACY & TERMS"
        label.font = UIFont(name: "SF Compact Display Regular", size: 17)
        return label
    }()
    
    let privacyAndTermsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        view.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return view
    }()
    
    let privacyCellButton: UIButton = {
        let cellView = UIButton()
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.setTitle("Privacy Policy", for: .normal)
        cellView.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        cellView.titleEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
//        cellView.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return cellView
    }()
    
    let spacerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.rgbColor(red: 121, green: 121, blue: 121, alpha: 0.6)
       return view
    }()
    
    let termsCellButton: UIButton = {
        let cellView = UIButton()
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.setTitle("Terms of Use", for: .normal)
        cellView.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        cellView.titleEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
//        cellView.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return cellView
    }()
    
    let rateCellButton: UIButton = {
        let cellView = UIButton()
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.titleLabel?.text = "Rate Us ⭐️"
        cellView.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return cellView
    }()
    
    let shareCellButton: UIButton = {
        let cellView = UIButton()
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.titleLabel?.text = "Rate Us ⭐️"
        cellView.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return cellView
    }()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
    }
}
