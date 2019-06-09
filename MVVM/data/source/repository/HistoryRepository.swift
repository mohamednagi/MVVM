//
//  HistoryRepository.swift
//  MVVM
//
//  Created by Mohamed Nagi on 6/3/19.
//  Copyright © 2019 Mohamed Nagi. All rights reserved.
//

import UIKit

class HistoryRepository: NSObject {
    
    var local = LocalHistoryDataSource()
    var remote = ServiceLayer()
    
    
    func getHistory(completionHandler: @escaping (_ array:[HistoryModel]) -> ()){
        
        remote.getHistory { (data, response, error) in
            if error != nil && data != nil {
                do {
                    guard let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:AnyObject] else {return}
                    guard let history = json["history"] as? [HistoryModel] else {return}
                    completionHandler(history)
                }catch {
                    print(error.localizedDescription)
                }
            }else {
                DispatchQueue.main.async {
                    completionHandler(self.local.getAllHistories())
                }
            }
        }
    }
}
