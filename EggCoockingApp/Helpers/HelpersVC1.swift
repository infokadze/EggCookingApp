//
//  Helpers.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 02.12.2021.
//

import UIKit

extension UIColor {
    static func rgbColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
}

//MARK: - FirstVC constraints

extension FirstVC {
    
    func setConstraints() {
        
        view.addSubview(eggyLabel)
        NSLayoutConstraint.activate([
            eggyLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
//            eggyLabel.leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: 149),
            eggyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            eggyLabel.bottomAnchor.constraint(lessThanOrEqualTo: lookEggsLabel.topAnchor, constant: 80),
//            eggyLabel.widthAnchor.constraint(equalToConstant: 99),
//            eggyLabel.heightAnchor.constraint(equalToConstant: 72),
        ])
        
        view.addSubview(lookEggsLabel)
        NSLayoutConstraint.activate([
            lookEggsLabel.topAnchor.constraint(lessThanOrEqualTo: eggyLabel.bottomAnchor, constant: 80),
            lookEggsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
//            lookEggsLabel.heightAnchor.constraint(equalToConstant: 53),
//            lookEggsLabel.widthAnchor.constraint(equalToConstant: 184),
        ])
        
        view.addSubview(twoEggsView)
        NSLayoutConstraint.activate([
            twoEggsView.topAnchor.constraint(equalTo: lookEggsLabel.bottomAnchor),
            twoEggsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            twoEggsView.heightAnchor.constraint(equalToConstant: 193),
//            twoEggsView.widthAnchor.constraint(equalToConstant: 286)
        ])
        
        view.addSubview(asYouLikeLabel)
        NSLayoutConstraint.activate([
            asYouLikeLabel.topAnchor.constraint(equalTo: twoEggsView.bottomAnchor, constant: 22),
            asYouLikeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27),
//            asYouLikeLabel.heightAnchor.constraint(equalToConstant: 53),

        ])
        
        view.addSubview(letsStartButton)
        NSLayoutConstraint.activate([
            letsStartButton.topAnchor.constraint(greaterThanOrEqualTo: asYouLikeLabel.bottomAnchor, constant: 20),
            letsStartButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            letsStartButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            letsStartButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            letsStartButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }
}

