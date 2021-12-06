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
    
    let minTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "8.30 min"
        
        label.textAlignment = .center
        return label
    }()
    
    
    
    
    
    //MARK: - Fridge/Room Temp Buttons

    var fridgeButtonOff: Bool = true
    
    let fridgeTempButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.setTitle("Fridge temperature", for: .normal)
        button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
//        button.titleLabel?.sizeToFit()
        button.layer.borderColor = UIColor.makeGreyColor().cgColor
        button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 15)
        button.layer.borderWidth = 1.76
        button.addTarget(self, action: #selector(fridgeButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
        @objc func fridgeButtonTapped() {
            
            fridgeButtonOff.toggle()
            
            if fridgeButtonOff {
                fridgeTempButton.layer.borderColor = UIColor.makeGreyColor().cgColor
                fridgeTempButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
                
                print(fridgeButtonOff.description)
            } else {
                fridgeTempButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
                fridgeTempButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
                
                print(fridgeButtonOff.description)
            }
        }
        
    var roomButtonOff: Bool = true
    let roomTempButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 7
        button.setTitle("Room temperature", for: .normal)
        button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        button.layer.borderColor = UIColor.makeGreyColor().cgColor
        button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 15)
        button.layer.borderWidth = 1.76
        button.addTarget(self, action: #selector(roomButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    @objc func roomButtonTapped() {

        roomButtonOff.toggle()
        
        if roomButtonOff {
            roomTempButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            roomTempButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            print(roomButtonOff.description)
        } else {
            
            roomTempButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
            roomTempButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
            print(roomButtonOff.description)
        }
    }

    //MARK: - Egg Size Buttons
    var eggSizeSButtonOff: Bool = true
    let eggSizeSButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 7
            button.setTitle("S", for: .normal)
            button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            button.layer.borderColor = UIColor.makeGreyColor().cgColor
            button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 15)
            button.layer.borderWidth = 1.76
            button.addTarget(self, action: #selector(eggSizeSTapped), for: .primaryActionTriggered)
        return button
    }()
    
        @objc func eggSizeSTapped() {
            
            eggSizeSButtonOff.toggle()
            if eggSizeSButtonOff {
                eggSizeSButton.layer.borderColor = UIColor.makeGreyColor().cgColor
                eggSizeSButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
                
                print(eggSizeSButtonOff.description)
            } else {
                eggSizeSButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
                eggSizeSButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
                
                print(eggSizeSButtonOff.description)
            }
        }
    
    var eggSizeMButtonOff: Bool = true
    let eggSizeMButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 7
            button.setTitle("M", for: .normal)
            button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            button.layer.borderColor = UIColor.makeGreyColor().cgColor
            button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 15)
            button.layer.borderWidth = 1.76
            button.addTarget(self, action: #selector(eggSizeMTapped), for: .primaryActionTriggered)
        return button
    }()
    
        @objc func eggSizeMTapped() {
            
            eggSizeMButtonOff.toggle()
            if eggSizeMButtonOff {
                eggSizeMButton.layer.borderColor = UIColor.makeGreyColor().cgColor
                eggSizeMButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
                
                print(eggSizeMButtonOff.description)
            } else {
                eggSizeMButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
                eggSizeMButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
                
                print(eggSizeMButtonOff.description)
            }
        }
    var eggSizeLButtonOff: Bool = true
    let eggSizeLButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.cornerRadius = 7
    button.setTitle("L", for: .normal)
    button.setTitleColor(UIColor.makeGreyColor(), for: .normal)
    button.layer.borderColor = UIColor.makeGreyColor().cgColor
    button.titleLabel?.font = UIFont.init(name: "SF Compact Display Regular", size: 15)
    button.layer.borderWidth = 1.76
    button.addTarget(self, action: #selector(eggSizeLTapped), for: .primaryActionTriggered)
    return button
}()

    @objc func eggSizeLTapped() {
        
        eggSizeLButtonOff.toggle()
        if eggSizeLButtonOff {
            eggSizeLButton.layer.borderColor = UIColor.makeGreyColor().cgColor
            eggSizeLButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
            
            print(eggSizeLButtonOff.description)
        } else {
            eggSizeLButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
            eggSizeLButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
            
            print(eggSizeLButtonOff.description)
        }
    }
    
    //MARK: - Boiled Eggs Buttons
    var softBoiledImageButtonOff: Bool = true
    let softBoiledImageButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "softDefault"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(softBoiledImageButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    @objc func softBoiledImageButtonTapped () {
        softBoiledImageButtonOff.toggle()
        
        if softBoiledImageButtonOff {
            softBoiledImageButton.setImage(UIImage.init(named: "softDefault"), for: .normal)
            print(softBoiledImageButtonOff.description)
        } else {
            softBoiledImageButton.setImage(UIImage.init(named: "softActive"), for: .normal)
        }
    }
    
    var mediumBoiledImageButtonOff: Bool = true
    let mediumBoiledImageButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "mediumDefault"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(mediumBoiledImageButtonTapped), for: .primaryActionTriggered)
        
        return button
    }()
    
    @objc func mediumBoiledImageButtonTapped () {
        mediumBoiledImageButtonOff.toggle()
        
        if mediumBoiledImageButtonOff {
            mediumBoiledImageButton.setImage(UIImage.init(named: "mediumDefault"), for: .normal)
            print(mediumBoiledImageButtonOff.description)
        } else {
            mediumBoiledImageButton.setImage(UIImage.init(named: "mediumActive"), for: .normal)
        }
    }
    
    var hardBoiledImageButtonOff: Bool = true
    let hardBoiledImageButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "hardDefault"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(hardBoiledImageButtonTapped), for: .primaryActionTriggered)
        
        return button
    }()
    
    @objc func hardBoiledImageButtonTapped () {
        hardBoiledImageButtonOff.toggle()
        
        if hardBoiledImageButtonOff {
            hardBoiledImageButton.setImage(UIImage.init(named: "hardDefault"), for: .normal)
            print(hardBoiledImageButton.description)
        } else {
            hardBoiledImageButton.setImage(UIImage.init(named: "hardActive"), for: .normal)
        }
    }
    
    
    
    let nextVCButton: UIButton = {
       let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage.init(named: "nextVCButton"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        self.setConstraints()
    }
    
    
    
}




