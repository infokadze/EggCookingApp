//
//  HelpersVC2.swift
//  EggCoockingApp
//
//  Created by Harry Crocks on 04.12.2021.
//

import UIKit

extension Int {
    
    func timeString(time: TimeInterval) -> String {
            let minute = Int(time) / 60 % 60
            let second = Int(time) % 60

            // return formated string
            return String(format: "%02i:%02i", minute, second)
        }
    //    timeString(time: TimeInterval(i))
}


extension UIColor {
    
    static func makeGreyColor() -> UIColor {
        let color = UIColor.rgbColor(red: 203, green: 203, blue: 203, alpha: 1)
        return color
    }
    
   static func makeOrangeColor() -> UIColor {
       let color = UIColor.rgbColor(red: 219, green: 148, blue: 112, alpha: 1)
        return color
    }
}

extension SecondVC {
     func defaultBoiledMethod() {
        
        softBoiledImageButton.setImage(UIImage.init(named: "softActive"), for: .normal)
        mediumBoiledImageButton.setImage(UIImage(named: "mediumDefault"), for: .normal)
        hardBoiledImageButton.setImage(UIImage(named: "hardDefault"), for: .normal)
        
        eggSizeSButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
        eggSizeSButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)
        
        eggSizeLButton.layer.borderColor = UIColor.makeGreyColor().cgColor
        eggSizeLButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        
        eggSizeMButton.layer.borderColor = UIColor.makeGreyColor().cgColor
        eggSizeMButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        
        fridgeTempButton.layer.borderColor = UIColor.makeOrangeColor().cgColor
        fridgeTempButton.setTitleColor(UIColor.makeOrangeColor(), for: .normal)

        roomTempButton.layer.borderColor = UIColor.makeGreyColor().cgColor
        roomTempButton.setTitleColor(UIColor.makeGreyColor(), for: .normal)
        
         
         updateTime()
    }

    
    func getTimeData(buttonString: (String)) -> Int {

        var time = 0
    
        let boilingTimes: Dictionary<String, Int> = {
            var dict = [String: Int]()
            dict = ["fridgeTemperature" : 2, "roomTmperature": 3, "eggSizeS": 1, "eggSizeM": 2, "eggSizeL": 3, "softBoiled": 5, "mediumBoiled": 6, "hardBoiled": 7]
            return dict
        }()

//        guard case let boilingTimes.keys.contains(buttonString) else { return }
                
        for  (_, value) in boilingTimes {
            switch value {
            case boilingTimes["fridgeTemperature"]:
                return 3
            case boilingTimes["roomTmperature"]:
                return 2
            case boilingTimes["eggSizeS"]:
                return 1
            case boilingTimes["eggSizeM"]:
                return 2
            case boilingTimes["eggSizeL"]:
                return 3
            case boilingTimes["softBoiled"]:
                return 5
            case boilingTimes["mediumBoiled"]:
                return 6
            case boilingTimes["harBoiledBoiled"]:
                return 7
            default:
                break

            }
            time = value
        }
        return time
    }
    
    
}


//MARK: - SecondVC constraints

extension SecondVC {
    
    func setConstraints() {
        
        view.addSubview(settingsVCButton)
        NSLayoutConstraint.activate([
            settingsVCButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 54),
            settingsVCButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 38),
            settingsVCButton.heightAnchor.constraint(equalToConstant: 30),
            settingsVCButton.widthAnchor.constraint(equalToConstant: 30),
        ])
        
        view.addSubview(setBoiledDetailsLabel)
        NSLayoutConstraint.activate([
            setBoiledDetailsLabel.topAnchor.constraint(equalTo: settingsVCButton.bottomAnchor, constant: 27.5),
            setBoiledDetailsLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 23),
        ])
        
        view.addSubview(prepareEggsAsYouLikeLabel)
        NSLayoutConstraint.activate([
            prepareEggsAsYouLikeLabel.topAnchor.constraint(equalTo: setBoiledDetailsLabel.bottomAnchor, constant: 5),
            prepareEggsAsYouLikeLabel.leadingAnchor.constraint(equalTo: setBoiledDetailsLabel.leadingAnchor),
            
        ])
        
        view.addSubview(eggImageView)
        
        eggImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        eggImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        eggImageView.heightAnchor.constraint(equalToConstant: 195).isActive = true
        eggImageView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 264).isActive = true
        
        
        view.addSubview(cookingModesView)
        NSLayoutConstraint.activate([
            cookingModesView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 176),
            cookingModesView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            cookingModesView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            cookingModesView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
    
        ])
        
        cookingModesView.addSubview(eggTemperatureLabel)
        eggTemperatureLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 156).isActive = true
        eggTemperatureLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggTemperatureLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        eggTemperatureLabel.topAnchor.constraint(equalTo: cookingModesView.topAnchor, constant: 56).isActive = true
        
        
        cookingModesView.addSubview(eggSizeLabel)
        eggSizeLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 76).isActive = true
        eggSizeLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggSizeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        eggSizeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 371).isActive = true
        
        cookingModesView.addSubview(eggBoiledTypeLabel)
        eggBoiledTypeLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 142).isActive = true
        eggBoiledTypeLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggBoiledTypeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        eggBoiledTypeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 510).isActive = true
        
//
        cookingModesView.addSubview(fridgeTempButton)
        fridgeTempButton.topAnchor.constraint(equalTo: eggTemperatureLabel.bottomAnchor, constant: 14).isActive = true
        fridgeTempButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 23).isActive = true
        fridgeTempButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
//        fridgeTempButton.trailingAnchor.constraint(equalTo: roomTempButton.leadingAnchor, constant: 8).isActive = true
        fridgeTempButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        cookingModesView.addSubview(roomTempButton)
        roomTempButton.topAnchor.constraint(equalTo: eggTemperatureLabel.bottomAnchor, constant: 14).isActive = true
        roomTempButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        roomTempButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        roomTempButton.leadingAnchor.constraint(equalTo: fridgeTempButton.trailingAnchor, constant: 8).isActive = true
        roomTempButton.trailingAnchor.constraint(equalTo: cookingModesView.trailingAnchor, constant: -23).isActive = true
        
        
        cookingModesView.addSubview(eggSizeLabel)
        eggSizeLabel.widthAnchor.constraint(equalToConstant: 156).isActive = true
        eggSizeLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggSizeLabel.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 23).isActive = true
        eggSizeLabel.topAnchor.constraint(equalTo: eggTemperatureLabel.bottomAnchor, constant: 115).isActive = true
        
        
        cookingModesView.addSubview(eggSizeSButton)
        eggSizeSButton.widthAnchor.constraint(equalToConstant: 107).isActive = true
        eggSizeSButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        eggSizeSButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 23).isActive = true
        eggSizeSButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 409).isActive = true
        
        cookingModesView.addSubview(eggSizeMButton)
        eggSizeMButton.widthAnchor.constraint(equalToConstant: 107).isActive = true
        eggSizeMButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        eggSizeMButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 154).isActive = true
        eggSizeMButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 409).isActive = true
        
        cookingModesView.addSubview(eggSizeLButton)
        eggSizeLButton.widthAnchor.constraint(equalToConstant: 107).isActive = true
        eggSizeLButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        eggSizeLButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 284).isActive = true
        eggSizeLButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 409).isActive = true
        
        
        
        cookingModesView.addSubview(eggBoiledTypeLabel)
//        eggBoiledTypeLabel.widthAnchor.constraint(equalToConstant: 142).isActive = true
        eggBoiledTypeLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggBoiledTypeLabel.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 23).isActive = true
        eggBoiledTypeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 510).isActive = true
        
        cookingModesView.addSubview(softBoiledImageButton)
        softBoiledImageButton.widthAnchor.constraint(equalToConstant: 107).isActive = true
        softBoiledImageButton.heightAnchor.constraint(equalToConstant: 174).isActive = true
        softBoiledImageButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 24).isActive = true
        softBoiledImageButton.topAnchor.constraint(equalTo: eggBoiledTypeLabel.bottomAnchor, constant: 20).isActive = true
        
        cookingModesView.addSubview(mediumBoiledImageButton)
        mediumBoiledImageButton.widthAnchor.constraint(equalToConstant: 107).isActive = true
        mediumBoiledImageButton.heightAnchor.constraint(equalToConstant: 174).isActive = true
        mediumBoiledImageButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 153).isActive = true
        mediumBoiledImageButton.topAnchor.constraint(equalTo: eggBoiledTypeLabel.bottomAnchor, constant: 20).isActive = true

        cookingModesView.addSubview(hardBoiledImageButton)
        hardBoiledImageButton.widthAnchor.constraint(equalToConstant: 107).isActive = true
        hardBoiledImageButton.heightAnchor.constraint(equalToConstant: 174).isActive = true
        hardBoiledImageButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 282).isActive = true
        hardBoiledImageButton.topAnchor.constraint(equalTo: eggBoiledTypeLabel.bottomAnchor, constant: 20).isActive = true
        
        
        cookingModesView.addSubview(eggTimeLabel)
        eggTimeLabel.widthAnchor.constraint(equalToConstant: 175).isActive = true
        eggTimeLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        eggTimeLabel.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 23).isActive = true
        eggTimeLabel.topAnchor.constraint(equalTo: eggBoiledTypeLabel.topAnchor, constant: 220).isActive = true
        
        cookingModesView.addSubview(minTimeLabel)
        minTimeLabel.widthAnchor.constraint(equalToConstant: 175).isActive = true
        minTimeLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        minTimeLabel.leadingAnchor.constraint(equalTo: eggTimeLabel.leadingAnchor, constant: 0).isActive = true
        minTimeLabel.topAnchor.constraint(equalTo: eggTimeLabel.bottomAnchor, constant: 0).isActive = true
        
        cookingModesView.addSubview(nextVCButton)
        nextVCButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        nextVCButton.heightAnchor.constraint(equalToConstant: 58).isActive = true
        nextVCButton.leadingAnchor.constraint(equalTo: cookingModesView.leadingAnchor, constant: 321).isActive = true
        nextVCButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 761).isActive = true

    }
}

