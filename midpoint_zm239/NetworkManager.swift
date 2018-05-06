//
//  NetworkManager.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 30..
//  Copyright © 2018. Zozo. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class NetworkManager {
    
    static var sessionToken = "c475f350f2e03583b762393bb6292079ad3da2a4"
    
    //implemented and used
    static func getEvents(completion: @escaping ([ServerEvent]) -> Void) {
        let endpoint = "http://kc875-appdev-backend-final-project.us-east-1.elasticbeanstalk.com/accounts/events/all"
        Alamofire.request(endpoint, method: .get)
            .validate().responseJSON { response in
                switch response.result {
                case let .success(data):
                    let classJSONDictionary = JSON(data)["data"].dictionaryValue
                    if let classJSONArray = classJSONDictionary["events"]?.arrayValue {
                        var classArray = [ServerEvent]()
                        for classJSON in classJSONArray {
                            classArray.append(ServerEvent(json: classJSON))
                        }
                        completion(classArray)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
        }
    }
    
    //not used but it works
    static func createUser(passEmail: String, passPassword: String, passFname: String, passLname: String) {
        
        let parameters = [
            "email": passEmail,
            "password": passPassword,
            "fname": passFname,
            "lname": passLname
        ]
 
        let url = "http://kc875-appdev-backend-final-project.us-east-1.elasticbeanstalk.com/accounts/users/create"
        Alamofire.request(url, method:.post, parameters:parameters,encoding: URLEncoding.default).responseString { response in
            switch response.result {
            case .success:
                print(response)
            case .failure(let error):
                //failure(0,"Error")
                print(error)
            }
        }
    }
    
    //implemented and used
    static func createEvent(passName: String, passTime: String, passLocation: String, passDescription: String) {
        
        let parameters = [
            "name": passName,
            "time": passTime,
            "location": passLocation,
            "description": passDescription,
            "session_token": sessionToken
        ]
        
        let url = "http://kc875-appdev-backend-final-project.us-east-1.elasticbeanstalk.com/accounts/events"
        Alamofire.request(url, method:.post, parameters: parameters, encoding: URLEncoding.default).responseString { response in
            switch response.result {
            case .success:
                print(response)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    //not used but it works
    static func logIn(passEmail: String, passPassword: String) {
        
        let url = "http://kc875-appdev-backend-final-project.us-east-1.elasticbeanstalk.com/accounts/users/login"

        let parameters = [
            "email": passEmail,
            "password": passPassword
        ]
        
        Alamofire.request(url, method:.post, parameters: parameters, encoding: URLEncoding.default).responseJSON { response in
            switch response.result {
            case let .success(data):
                print(response)
                    let classJSONDictionary = JSON(data).dictionaryValue
                
                    if let token = classJSONDictionary["session_token"]?.stringValue {
                    //Once implemented, 'sessionToken' will get a new value here
                    print(token)
                    }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    //not used
    static func getUserDetails() {
        
        let url = "http://kc875-appdev-backend-final-project.us-east-1.elasticbeanstalk.com/accounts/users"
        let parameters = [
            "email": "kc875@cornell.edu"
        ]
        
        Alamofire.request(url, method:.get, parameters:parameters,encoding: JSONEncoding.default)
            .validate().responseJSON { response in
                
                switch response.result {
                case let .success(data):
                    print(data)
                case .failure(let error):
                    print(error.localizedDescription)
                }
        }
    }

}
