//
//  ViewController.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 02.12.2021.
//

import UIKit

final class FirstVC: UIViewController {
            
    //MARK: - imageView and labels (x3)
    let eggyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Reenie Beanie", size: 72)
        label.text = "Eggie"
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1)
        return label
    }()
    
    let lookEggsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Reenie Beanie", size: 53.36)
        label.text = "look eggs"
        label.adjustsFontSizeToFitWidth = true
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()
    
    let twoEggsView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "twoEggs")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let asYouLikeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Reenie Beanie", size: 53)
        label.text = "as you like"
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.adjustsFontSizeToFitWidth = true
        
        return label
    }()
    
    let letsStartButton: UIButton = {
        let button = UIButton()
//        button.configuration = .none
        button.layer.cornerRadius = 20
        button.setTitle("Let's cooking", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont.init(name: "SF Compact Rounded Bold", size: 20)
        button.titleLabel?.textColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return button
    }()
 
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setConstraints()
        
        letsStartButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    
    //MARK: - buttonTapped
    @objc func startButtonTapped() {
        
        let vc = SecondVC()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
//        show(vc, sender: startButtonTapped)
    }
}
    
    






