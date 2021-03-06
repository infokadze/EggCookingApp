//
//  HelpersVC3.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 07.12.2021.
//

import UIKit

extension TimerVC {
    
    func setConstraints() {
        
        view.addSubview(fromSecondVCLabel)
        fromSecondVCLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fromSecondVCLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        
        view.addSubview(backButton)
        backButton.widthAnchor.constraint(equalToConstant: 9).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 67).isActive = true
        
        
        view.addSubview(timerRect)
        timerRect.topAnchor.constraint(equalTo: fromSecondVCLabel.bottomAnchor, constant: 63).isActive = true
        timerRect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        timerRect.addSubview(timerView)
        timerView.leadingAnchor.constraint(equalTo: timerRect.leadingAnchor).isActive = true
        timerView.trailingAnchor.constraint(equalTo: timerRect.trailingAnchor).isActive = true
        timerView.topAnchor.constraint(equalTo: timerRect.topAnchor).isActive = true
        timerView.bottomAnchor.constraint(equalTo: timerRect.bottomAnchor).isActive = true
        
        timerView.addSubview(centerTimerLabel)
        centerTimerLabel.centerXAnchor.constraint(equalTo: timerView.centerXAnchor).isActive = true
        centerTimerLabel.bottomAnchor.constraint(equalTo: timerView.bottomAnchor, constant: -127).isActive = true
        
        timerView.addSubview(eggView)
        eggView.centerXAnchor.constraint(equalTo: timerView.centerXAnchor).isActive = true
        eggView.topAnchor.constraint(equalTo: centerTimerLabel.bottomAnchor, constant: 13).isActive = true
//        eggView.bottomAnchor.constraint(equalTo: timerRect.bottomAnchor, constant: 8).isActive = true
        
        
        view.addSubview(clockIconLabel)
        clockIconLabel.widthAnchor.constraint(equalToConstant: 76).isActive = true
        clockIconLabel.heightAnchor.constraint(equalToConstant: 18).isActive = true
        clockIconLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85).isActive = true
        clockIconLabel.topAnchor.constraint(equalTo: timerRect.bottomAnchor, constant: 34).isActive = true
        
        view.addSubview(temperatureIconLabel)
        temperatureIconLabel.widthAnchor.constraint(equalToConstant: 126).isActive = true
        temperatureIconLabel.heightAnchor.constraint(equalToConstant: 18).isActive = true
        temperatureIconLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85).isActive = true
        temperatureIconLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 559).isActive = true
        
        view.addSubview(temperatureBoldTextLabel)
        temperatureBoldTextLabel.widthAnchor.constraint(equalToConstant: 45).isActive = true
        temperatureBoldTextLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        temperatureBoldTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 341).isActive = true
        temperatureBoldTextLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 557).isActive = true
        
        view.addSubview(additionalTimeBoldTextLabel)
        additionalTimeBoldTextLabel.widthAnchor.constraint(equalToConstant: 71).isActive = true
        additionalTimeBoldTextLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        additionalTimeBoldTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 318).isActive = true
        additionalTimeBoldTextLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 492).isActive = true
        
        view.addSubview(clockIcon)
        clockIcon.widthAnchor.constraint(equalToConstant: 45).isActive = true
        clockIcon.heightAnchor.constraint(equalToConstant: 45).isActive = true
        clockIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26).isActive = true
        clockIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 480).isActive = true
        
        view.addSubview(temperatureIcon)
        temperatureIcon.widthAnchor.constraint(equalToConstant: 45).isActive = true
        temperatureIcon.heightAnchor.constraint(equalToConstant: 45).isActive = true
        temperatureIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26).isActive = true
        temperatureIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 547).isActive = true
        
        
        view.addSubview(boiledWaterTip)
        boiledWaterTip.widthAnchor.constraint(equalToConstant: 82).isActive = true
        boiledWaterTip.heightAnchor.constraint(equalToConstant: 21).isActive = true
        boiledWaterTip.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 166).isActive = true
        boiledWaterTip.topAnchor.constraint(equalTo: view.topAnchor, constant: 633).isActive = true
        
        view.addSubview(tipsLabel)
        tipsLabel.widthAnchor.constraint(equalToConstant: 270).isActive = true
        tipsLabel.heightAnchor.constraint(equalToConstant: 36).isActive = true
        tipsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 76).isActive = true
        tipsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 661).isActive = true
        
        view.addSubview(startButton)
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(greaterThanOrEqualTo: tipsLabel.bottomAnchor, constant: 20),
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            startButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            startButton.heightAnchor.constraint(equalToConstant: 58)
            
        ])
        
    }
}

