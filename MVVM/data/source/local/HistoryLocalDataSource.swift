//
//  HistoryLocalDataSource.swift
//  MVVM
//
//  Created by Mohamed Nagi on 6/3/19.
//  Copyright © 2019 Mohamed Nagi. All rights reserved.
//

import UIKit

/// fetching & storing  user data
class LocalHistoryDataSource: NSObject {
    
    let historyModelArray = [HistoryModel(title: "first",
                                          image: "img1", date: "10-3-2018 10.31",
                                          location: "Agouza", status: "Done", group: "CONNEX")]
    
    func getAllHistories()-> [HistoryModel] {
        return historyModelArray
    }
    
    func setHistory(h : HistoryModel) {
        
    }
}
