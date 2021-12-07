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
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 20)
        label.textRect(forBounds: CGRect(x: 0, y: 0, width: 159, height: 24), limitedToNumberOfLines: 1)
        label.textAlignment = .center
        return label
    }()
    
    let prepareEggsAsYouLikeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Prepare eggs you like"
        label.font = UIFont(name: "SF Compact Display Regular", size: 18)
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
    let cookingModesView: UIView = {
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
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 20)
        label.textAlignment = .center
        return label
    }()
    
    let eggSizeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Egg size"
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 20)
        label.textAlignment = .center
        return label
    }()
    
    let eggBoiledTypeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Egg boiled type"
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 20)
        label.textAlignment = .center
        return label
    }()
    
    //MARK: - Fridge/Room Temp Buttons
    
    let fridgeTempButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.tag = 1
        button.setTitle("Fridge temperature", for: .normal)
        button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        button.layer.borderColor = UIColor.makeGreyColor().cgColor
        button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 15)
        button.layer.borderWidth = 1.76
        button.addTarget(self, action: #selector(roomOrFridgeButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    let roomTempButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.tag = 2
        button.setTitle("Room temperature", for: .normal)
        button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        button.layer.borderColor = UIColor.makeGreyColor().cgColor
        button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 15)
        button.layer.borderWidth = 1.76
        button.addTarget(self, action: #selector(roomOrFridgeButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    var eggTemp = 1
    
    @objc func roomOrFridgeButtonTapped(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            fridgeTempButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
            fridgeTempButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
            
//            getTimeData()

            roomTempButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            roomTempButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            eggTemp = sender.tag
        case 2:
            roomTempButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
            roomTempButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)

            fridgeTempButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            roomTempButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            eggTemp = sender.tag
        default:
            print("default")
        }
        updateTime()
    }
    
    //MARK: - Egg Size Buttons
    let eggSizeSButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.tag = 1
        button.setTitle("S", for: .normal)
        button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        button.layer.borderColor = UIColor.makeGreyColor().cgColor
        button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 20)
        button.layer.borderWidth = 1.76
        button.addTarget(self, action: #selector(eggSizeButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    let eggSizeMButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.tag = 2
        button.setTitle("M", for: .normal)
        button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        button.layer.borderColor = UIColor.makeGreyColor().cgColor
        button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 20)
        button.layer.borderWidth = 1.76
        button.addTarget(self, action: #selector(eggSizeButtonTapped), for: .primaryActionTriggered)
        return button
    }()

    
    let eggSizeLButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.tag = 3
        button.setTitle("L", for: .normal)
        button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        button.layer.borderColor = UIColor.makeGreyColor().cgColor
        button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 20)
        button.layer.borderWidth = 1.76
        button.addTarget(self, action: #selector(eggSizeButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    var eggSize = 1
    
    @objc func eggSizeButtonTapped(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            eggSizeSButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
            eggSizeSButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
            
            eggSizeLButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            eggSizeLButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            eggSizeMButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            eggSizeMButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            eggSize = sender.tag
        case 2:
            eggSizeSButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            eggSizeSButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            eggSizeLButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            eggSizeLButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            eggSizeMButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
            eggSizeMButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
            
            eggSize = sender.tag
        case 3:
            eggSizeSButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            eggSizeSButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            eggSizeLButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
            eggSizeLButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
            
            eggSizeMButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            eggSizeMButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            eggSize = sender.tag
        default:
            print("default")
    
        }
        updateTime()
    }
    
    //MARK: - Boiled Eggs Buttons
    
    let softBoiledImageButton: UIButton = {
        let button = UIButton()
        button.tag = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "softDefault"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(boiledImageButtonTapped(_:)), for: .primaryActionTriggered)
        return button
    }()
    
    let mediumBoiledImageButton: UIButton = {
        let button = UIButton()
        button.tag = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "mediumDefault"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(boiledImageButtonTapped(_:)), for: .primaryActionTriggered)
        
        return button
    }()
    
    let hardBoiledImageButton: UIButton = {
        let button = UIButton()
        button.actionHandler(controlEvents: .touchUpInside, ForAction: { () -> Void in
//        getTimeData(buttonString: "hardDefault")
        })
        
        button.tag = 3
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "hardDefault"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(boiledImageButtonTapped(_:)), for: .primaryActionTriggered)
        
        return button
    }()
    
    var boiledType = 1
    
    @objc func boiledImageButtonTapped (_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            softBoiledImageButton.setImage(UIImage.init(named: "softActive"), for: .normal)
            mediumBoiledImageButton.setImage(UIImage(named: "mediumDefault"), for: .normal)
            hardBoiledImageButton.setImage(UIImage(named: "hardDefault"), for: .normal)
            boiledType = sender.tag
        case 2:
            softBoiledImageButton.setImage(UIImage.init(named: "softDefault"), for: .normal)
            mediumBoiledImageButton.setImage(UIImage(named: "mediumActive"), for: .normal)
            hardBoiledImageButton.setImage(UIImage(named: "hardDefault"), for: .normal)
            boiledType = sender.tag
        case 3:
            softBoiledImageButton.setImage(UIImage.init(named: "softDefault"), for: .normal)
            mediumBoiledImageButton.setImage(UIImage(named: "mediumDefault"), for: .normal)
            hardBoiledImageButton.setImage(UIImage(named: "hardActive"), for: .normal)
            boiledType = sender.tag
        default:
            print("default")
        }
        updateTime()
    }
        
        //MARK: - updateTime()

    
    let eggTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Estimated egg time"
        label.font = UIFont(name: "SF Compact Display Regular", size: 18)
        label.textAlignment = .center
        return label
    }()
    
    let minTimeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        let interval: Int?
        label.textAlignment = .center
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .full

//        let formattedString = formatter.string(from: TimeInterval(interval))
        
        return label
    }()
    
    
    let nextVCButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "nextVCButton"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(goToVC3Screen), for: .touchUpInside)
        return button
    }()
    
    @objc func goToVC3Screen() {

        let vc = ThirdVC()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        vc.timeSeconds = seconds
        vc.boiledType = boiledType
        present(vc, animated: true)
    }
    
    var seconds = 0
    
    func updateTime() {
        
        switch boiledType {
        case 1:
            seconds = 360
        case 2:
            seconds = 480
        case 3:
            seconds = 600
        default:
            print("default")
        }
        
        switch eggSize {
        case 1:
            seconds -= 30
        case 2:
            seconds == seconds
        case 3:
            seconds += 30
        default:
            print("default")
        }
        
        switch eggTemp {
        case 1:
            seconds == seconds
        case 2:
            seconds += 120
        default:
            print("default")
        }
        
        minTimeLabel.text = "\(seconds) min"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setConstraints()
        self.defaultBoiledMethod()
        
    }
    
   
    
}




