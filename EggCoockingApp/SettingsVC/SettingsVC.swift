//
//  SettingsVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 07.12.2021.
//

import UIKit

class SettingsVC: UIViewController {
    
    let cellIdentifier = "cellID"
    
    var tableView: UITableView!
    
    let notificationCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        cell.textLabel?.text = "Notification"
        return cell
    }()
    
    let soundCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        cell.textLabel?.text = "Sound"
        return cell
    }()
    
    let privacyPolicyCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        cell.textLabel?.text = "Privacy Policy"
        cell.accessoryType = .disclosureIndicator
        return cell
    }()
    
    let termsOfUseCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        cell.textLabel?.text = "Terms of Use"
        cell.accessoryType = .disclosureIndicator
        return cell
    }()
    
    let rateUsCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        cell.textLabel?.text = "Rate us ⭐️"
        cell.accessoryType = .disclosureIndicator
        return cell
    }()
    
    let shareUsCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        cell.textLabel?.text = "Share App"
        cell.textLabel?.textAlignment = .center
        return cell
    }()
    
    let switchLabelForNotification: UISwitch = {
        let onOff = UISwitch()
        onOff.addTarget(self, action: #selector(handleNotificationSwitch), for: .touchUpInside)
        return onOff
    }()
    
    @objc func handleNotificationSwitch() {
        
    }
    
    let switchLabelSound: UISwitch = {
        let onOff = UISwitch()
        onOff.addTarget(self, action: #selector(handleSoundSwitch), for: .touchUpInside)
        return onOff
    }()
    
    @objc func handleSoundSwitch() {
        
    }
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.rowHeight = 60
        tableView.frame = view.frame
//        tableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableView.backgroundColor = setSettingsScreenColor()
        tableView.tableHeaderView = UIView()
        tableView.tableFooterView = UIView()
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Settings"
        setupLayout()
       
    }
    
    
    
    
}

extension SettingsVC: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return 4
        default:
            return 0
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = setSettingsScreenColor()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                return notificationCell
            case 1:
                return soundCell
                
            default:
                fatalError()
            }
        case 1:
            switch indexPath.row {
            case 0:
                return privacyPolicyCell
            case 1:
                return termsOfUseCell
            case 2:
                return rateUsCell
            case 3:
                return shareUsCell
            default:
                fatalError()
            }
        default:
            fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let viewHeader = UIView()
        let headerView: UIView! = UIView (frame:CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: 20.0));
//        tableView.tableHeaderView = viewHeader
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
        }

func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    switch section {
    case 0:
        return "Notifications"
    case 1:
        return "Privacy Policy"
    default:
        fatalError()
    }
    
    
}




}
