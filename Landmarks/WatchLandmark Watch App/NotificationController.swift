//
//  NotificationController.swift
//  WatchLandmark Watch App
//
//  Created by 곽다은 on 12/17/24.
//

import WatchKit
import SwiftUI
import UserNotifications

class NotificationController: WKUserNotificationHostingController<NotificationView> {
    // These properties store values about an incoming notification.
    var landmark: Landmark?
    var title: String?
    var message: String?
    
    // use it to extract the landmark index from the notification.
    let landmarkIndexKey = "landmarkIndex"
    
    override var body: NotificationView {
        // This method instantiates the notification view that you created earlier.
        NotificationView(
            title: title,
            message: message,
            landmark: landmark
        )
    }
    
    // This method updates the controller’s properties. After calling this method, the system invalidates the controller’s body property, which updates your notification view. The system then displays the notification on Apple Watch.
    // SwiftUI에서는 뷰의 상태가 바뀌거나 프로퍼티 값이 변경되면 body 프로퍼티가 다시 평가된다. 즉, 시스템이 뷰를 다시 그려야 함을 감지하고 새로운 데이터를 기반으로 뷰를 갱신한다. -> 뷰를 새로 그린다는 의미
    override func didReceive(_ notification: UNNotification) {
        let modelData = ModelData()
        
        let notificationData = notification.request.content.userInfo as? [String: Any]
        
        let aps = notificationData?["aps"] as? [String: Any]
        let alert = aps?["alert"] as? [String: Any]
        
        title = alert?["title"] as? String
        message = alert?["body"] as? String
        
        if let index = notificationData?[landmarkIndexKey] as? Int {
            landmark = modelData.landmarks[index]
        }
    }
}
