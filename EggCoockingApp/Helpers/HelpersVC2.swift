//
//  HelpersVC2.swift
//  EggCoockingApp
//
//  Created by Harry Crocks on 04.12.2021.
//

import UIKit

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
        
        minTimeLabel.text = "7:00 minutes"
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

//extension SecondVC {
    
//    func eggImageShadows() -> Void {
//        
//        let view = UIImageView()
//        view.frame = CGRect(x: 0, y: 0, width: 150, height: 195)
//        view.backgroundColor = .white
//
//        let shadows = UIImageView()
//        shadows.frame = view.frame
//        shadows.clipsToBounds = false
//        view.addSubview(shadows)
//
//        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
//        let layer0 = CALayer()
//        layer0.shadowPath = shadowPath0.cgPath
//        layer0.shadowColor = UIColor(red: 0.78, green: 0.553, blue: 0.325, alpha: 0.59).cgColor
//        layer0.shadowOpacity = 1
//        layer0.shadowRadius = 9
//        layer0.shadowOffset = CGSize(width: 0, height: 5)
//        layer0.bounds = shadows.bounds
//        layer0.position = shadows.center
//        shadows.layer.addSublayer(layer0)
//
//        let shapes = UIImageView()
//        shapes.frame = view.frame
//        shapes.clipsToBounds = true
//        view.addSubview(shapes)
//
//        let image1 = UIImage(named: "eggHalf")?.cgImage
//        let layer1 = CALayer()
//        layer1.contents = image1
//        layer1.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: 0))
//        layer1.bounds = shapes.bounds
//        layer1.position = shapes.center
//        shapes.layer.addSublayer(layer1)
//        
//        let parent = self.view!
//        parent.addSubview(view)
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 195).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 316).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 44).isActive = true
//        
//
//    }
//    
//}
