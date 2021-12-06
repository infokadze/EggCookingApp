//
//  HelpersVC2.swift
//  EggCoockingApp
//
//  Created by Harry Crocks on 04.12.2021.
//

import UIKit

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
        
        
        view.addSubview(coockingModesView)
        NSLayoutConstraint.activate([
            coockingModesView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 176),
            coockingModesView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            coockingModesView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            coockingModesView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
        
        coockingModesView.addSubview(eggTemperatureLabel)
        eggTemperatureLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 156).isActive = true
        eggTemperatureLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggTemperatureLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        eggTemperatureLabel.topAnchor.constraint(equalTo: coockingModesView.topAnchor, constant: 56).isActive = true
        
        
        coockingModesView.addSubview(eggSizeLabel)
        eggSizeLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 76).isActive = true
        eggSizeLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggSizeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        eggSizeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 371).isActive = true
        
        coockingModesView.addSubview(eggBoiledTypeLabel)
        eggBoiledTypeLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 142).isActive = true
        eggBoiledTypeLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        eggBoiledTypeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        eggBoiledTypeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 510).isActive = true
        
        //
        
        //
        //
//
//        choiseView.addSubview(eggTemperatureLabel)
//        choiseView.addSubview(eggSizeLabel)
//        choiseView.addSubview(eggBoiledTypeLabel)
//        choiseView.addSubview(eggTimeLabel)
//
        
        
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
