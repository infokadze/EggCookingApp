//
//  SecondVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 02.12.2021.
//

import UIKit

class SecondVC: UIViewController {
    
    //MARK: - SettingsWheel + 2 labels view
    let settingsVCButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "settingsWheel"), for: .normal)
        button.addTarget(self, action: #selector(goToSettingsVC), for: .primaryActionTriggered)
        return button
    }()
    
    @objc private func goToSettingsVC() {
        
    }
 
    
    let setBoiledDetailsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Set boiled details"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textRect(forBounds: CGRect(x: 0, y: 0, width: 159, height: 24), limitedToNumberOfLines: 1)
        label.textAlignment = .center
        return label
    }()
    
    let prepareEggsAsYouLikeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Prepare eggs you like"
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.textAlignment = .center
        return label
    }()
    
    let eggImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "eggHalf")
        view.contentMode = .scaleAspectFit
        view.layer.zPosition = 1
        return view
    }()
    
    
    //MARK: - CoockingModeView
    let coockingModesView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    //MARK: - CoockingModeView Labels
    
    let eggTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Egg temperature"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    let eggSizeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Egg size"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    let eggBoiledTypeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Egg boiled type"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    let eggTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Estimated egg time"
        label.textAlignment = .center
        return label
    }()
    
    
    
    //MARK: - CoockingModeView Buttons
//
//    let fridgeTempButton: UIButton = {
//        let button = UIButton(frame: .zero)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        button.addTarget
//        return button
//    }()
//
//    let roomTempButton: UIButton = {
//        let button = UIButton(frame: .zero)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        button.addTarget
//        return button
//    }()
//
//    let eggSizeS: UIButton = {
//        let button = UIButton(frame: .zero)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        button.addTarget
//        return button
//    }()
//
//    let eggSizeM: UIButton = {
//        let button = UIButton(frame: .zero)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        button.addTarget
//        return button
//    }()
//
//    let EggSizeL: UIButton = {
//        let button = UIButton(frame: .zero)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        button.addTarget
//        return button
//    }()
//

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setConstraints()
//        eggImageShadows()
    }
    
    
    
}



