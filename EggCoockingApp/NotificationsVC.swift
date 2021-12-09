//
//  NotificationsVC.swift
//  EggCoockingApp
//
//  Created by Prokopenko Ihor on 09.12.2021.
//

import UIKit


struct UserNotifications {
    
    static func scheduleNotification(inSeconds: TimeInterval, completion: @escaping (Bool) -> ()) {
        
        let notificationID = "myNotification"
        
        // Create Notification content
        let notificationContent = UNMutableNotificationContent()
        
        notificationContent.title = "Coocking timer is in process"
        notificationContent.subtitle = "Timer was initialized"
        notificationContent.body = "Time left: 5 min"
        
        // Create Notification trigger
        // Note that 60 seconds is the smallest repeating interval.
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: inSeconds, repeats: false)
        
        // Create a notification request with the above components
        let request = UNNotificationRequest(identifier: notificationID, content: notificationContent, trigger: trigger)
        
        // Add this notification to the UserNotificationCenter
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                print("\(String(describing: error))")
                completion(false)
            } else {
                completion(true)
            }
        })
    }
}

