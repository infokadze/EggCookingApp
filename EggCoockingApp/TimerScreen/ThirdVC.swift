//
//  ThirdVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 07.12.2021.
//

import UIKit

class TimerVC: UIViewController {
    
    //add notification center
    
    var timer = 0
    let shapeLayer = CAShapeLayer()
    
    let fromSecondVCLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 20)
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
    
//    let timerRect: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
//
//    let timerView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.image = UIImage(named: "timerBody")
////        imageView.layer.zPosition = 2
//        return imageView
//    }()
    
    
    let ellipseWholeView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let ellipseCenterView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "")
//        imageView.layer.zPosition = 2
        return imageView
    }()
    
    let centerTimerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SF Compact Rounded Bold", size: 20)
        label.textAlignment = .center
        label.text = "!!!!"
        return label
    }()
    
    
    let eggView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "timerEgg")
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
        label.text = ""
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
    
    var timeSeconds: Int = 0
    var boiledType: Int?
    
    func updateLabels() {
        switch boiledType {
        case 1:
            fromSecondVCLabel.text = "Soft boiled"
        case 2:
            fromSecondVCLabel.text = "Medium boiled"
        case 3:
            fromSecondVCLabel.text = "Hard boiled"
        default:
            print("default")
        }
        
        let cookingTime = timeSeconds.timeString(time: TimeInterval(timeSeconds))
        additionalTimeBoldTextLabel.text = cookingTime
        
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setConstraints()
        updateLabels()
//        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}


//
//
//import UIKit
//
//class TimerVC: UIViewController {
//    
//    var timer = Timer()
//    var durationTimer = 10
//    
//    let shapeLayer = CAShapeLayer()
//    
//    let lessonLabel: UILabel = {
//        let label = UILabel()
//        label.text = "GitHub user account: infokadze"
//        label.font = UIFont.boldSystemFont(ofSize: 24)
//        label.textColor = .black
//        label.numberOfLines = 0
//        label.textAlignment = .center
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    let shapeView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "icon")
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
//    
//    let timerLabel: UILabel = {
//        let label = UILabel()
//        label.text = ""
//        label.font = UIFont.boldSystemFont(ofSize: 84)
//        label.textColor = .black
//        label.numberOfLines = 0
//        label.textAlignment = .center
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    
//    let startButton: UIButton = {
//        let button = UIButton()
//        button.layer.cornerRadius = 20
//        button.setTitle("Start", for: .normal)
//        button.backgroundColor = .black
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        self.animationCircular()
//        
//        timerLabel.text = "\(durationTimer)"
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        setConstraints()
//        
//        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
//        
//    }
//    
//    @objc func startButtonTapped() {
//        
//        basicAnimation()
//        
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
//    }
//    
//    @objc func timerAction() {
//        
//        durationTimer -= 1
//        timerLabel.text = "\(durationTimer)"
//        
//        if durationTimer == 0 {
//            timer.invalidate()
//        }
//    }
//    
//    //MARK:- Animation
//    
//    func animationCircular() {
//        
//        let center = CGPoint(x: shapeView.frame.width / 2, y: shapeView.frame.height / 2)
//        
//        let endAngle = -(CGFloat.pi / 2)
//        let startAngle = 2 * CGFloat.pi + endAngle
//        
//        
//        let circullarPath = UIBezierPath(arcCenter: center, radius: 138, startAngle: startAngle, endAngle: endAngle, clockwise: false)
//        
//        shapeLayer.path = circullarPath.cgPath
//        shapeLayer.lineWidth = 21
//        shapeLayer.fillColor = UIColor.clear.cgColor
//        shapeLayer.strokeEnd = 1
//        shapeLayer.lineCap = CAShapeLayerLineCap.round
//        shapeLayer.strokeColor = UIColor.purple.cgColor
//        shapeView.layer.addSublayer(shapeLayer)
//    }
//    
//    
//    func basicAnimation() {
//        
//        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
//        
//        basicAnimation.toValue = 0
//        basicAnimation.duration = CFTimeInterval(durationTimer)
//        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
//        basicAnimation.isRemovedOnCompletion = true
//        shapeLayer.add(basicAnimation, forKey: "basicAnimation")
//    }
//
//}
//
//extension ViewController {
//    
//    func setConstraints() {
//        
//        view.addSubview(lessonLabel)
//        NSLayoutConstraint.activate([
//            lessonLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
//            lessonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            lessonLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
//        ])
//        
//        view.addSubview(shapeView)
//        NSLayoutConstraint.activate([
//            
//            shapeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            shapeView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            shapeView.heightAnchor.constraint(equalToConstant: 300),
//            shapeView.widthAnchor.constraint(equalToConstant: 300)
//        ])
//        
//        view.addSubview(timerLabel)
//        NSLayoutConstraint.activate([
//            timerLabel.centerXAnchor.constraint(equalTo: shapeView.centerXAnchor),
//            timerLabel.centerYAnchor.constraint(equalTo: shapeView.centerYAnchor)
//        ])
//        
//        view.addSubview(startButton)
//        NSLayoutConstraint.activate([                                                                        startButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -100), startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), startButton.heightAnchor.constraint(equalToConstant: 70), startButton.widthAnchor.constraint(equalToConstant: 300)
//        ])
//    }
//}
//
//
//
////
////@IBAction func notificationButtonTapped(_ sender: Any) {
////  self.scheduleNotification(inSeconds: 5, completion: { success in
////    if success {
////      print("Successfully scheduled notification")
////    } else {
////      print("Error scheduling notification")
////    }
////  })
////}
//
