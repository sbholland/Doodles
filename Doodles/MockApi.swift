//
//  SheetsApi.swift
//  Doodles
//
//  Created by Holland, Samuel B. on 12/4/19.
//  Copyright © 2019 Holland, Samuel B. All rights reserved.
//

import Foundation

//func postToWeb() {
//
//    let parameters = ["name": ItemStore.sharedInstance.allItems[indexPath.row].name]
//
//    create url constanct with mock url
//    let url = URL(string: "www.someBlog/newPost.php")!
//
//    creates instance of URLSession.shared to coordinate data tasks
//    let session = URLSession.shared
//
//    creates request object using url object (holds url string)
//    var request = URLRequest(url: url)
//    request.httpMethod = "POST" //set http method as POST
//
      //tries to convert parameters into JSON serialization and set as request body
//    do {
//        request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
//      if JSON conversion fails, print error
//    } catch let error {
//        print(error.localizedDescription)
//    }

//    //call add value on request which holds the url, this will post an item to whatever website the user might want (blog, store, etc)
//    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//    request.addValue("application/json", forHTTPHeaderField: "Accept")
//
//    create data task using request from before as body and prepares to nil to return, or data
//    let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
//
//        guard error == nil else {
//            return
//        }
//
//        guard let data = data else {
//            return
//        }
//
//      if task returns data, creates json object from data
//        do {
//
//            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
//                print(json)
//                // handle json...
//            }
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    })
//    task.resume()
//    }




















