//
//  ServerEvent.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 30..
//  Copyright © 2018. Zozo. All rights reserved.
//

import Foundation
import SwiftyJSON

class ServerEvent {
    var description: String
    var location: String
    var name: String
    var time: Date
    
    init(json: JSON) {
        description = json["description"].stringValue
        location = json["location"].stringValue
        name = json["name"].stringValue
        
        let isoDateString = json["time"].stringValue
        let trimmedIsoString = isoDateString.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression)
        let formatter2 = ISO8601DateFormatter()
        let date = formatter2.date(from: trimmedIsoString)
        time = date!
    }
}
