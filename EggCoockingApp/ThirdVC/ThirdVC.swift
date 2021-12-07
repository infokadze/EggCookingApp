//
//  ThirdVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 07.12.2021.
//

import UIKit

class ThirdVC: UIViewController {
    
    //add notification center
    
    let fromSecondVCLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "!!!!!"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textRect(forBounds: CGRect(x: 0, y: 0, width: 159, height: 24), limitedToNumberOfLines: 1)
        label.textAlignment = .center
        return label
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "backButton"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(goToVC2Screen), for: .primaryActionTriggered)
        return button
    }()
    
    @objc func goToVC2Screen() {
        let vc = SecondVC()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    
    let timerView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "timerBody")
        return imageView
    }()
    
    let clockIconLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Boiled time"
        label.font = UIFont(name: "SF Compact Display Regular", size: 15)
        label.textAlignment = .center
        return label
    }()
        
    let temperatureIconLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Water temperature"
        label.font = UIFont(name: "SF Compact Display Regular", size: 15)
        label.textAlignment = .center
        return label
    }()
    
    
    let clockIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "clockIcon")
        return imageView
    }()
    
    let temperatureIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "temperatureIcon")
        return imageView
    }()
    
    
    let temperatureBoldTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "100°"
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 18)
        label.textAlignment = .center
        return label
    }()
    
    let additionalTimeBoldTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "!!!!"
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 18)
        label.textAlignment = .center
        return label
    }()
    
    let boiledWaterTip: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Boiled tip"
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 18)
        label.textAlignment = .center
        return label
    }()
    
    let tipsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "After cooking, let the eggs rest in an ice-bath to “shock”."
        label.font = UIFont(name: "SF Compact Display Regular", size: 15)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    
    let startButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20
        button.setTitle("Start", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont.init(name: "SF Compact Rounded Bold", size: 20)
        button.titleLabel?.textColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.backgroundColor = UIColor.rgbColor(red: 219, green: 150, blue: 112, alpha: 1).cgColor
        return button
    }()
    
    var timeSeconds: Int?
    var boiledType: Int?
    
    func updateLabel() {
        switch boiledType {
        case 1:
            fromSecondVCLabel.text = "Soft"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        updateLabel()
//        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}
