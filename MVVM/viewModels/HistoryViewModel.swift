//
//  HistoryViewModel.swift
//  MVVM
//
//  Created by Mohamed Nagi on 6/3/19.
//  Copyright © 2019 Mohamed Nagi. All rights reserved.
//

import UIKit

class HistoryViewModel :BaseViewModel {
    
    var historyRepository = HistoryRepository()
    
    func getHistoryData(){
        historyRepository.getHistory { (returnedObject) in
            // implement Data logic  -->sort

            self.view.onDataRecevied(data: returnedObject as AnyObject)
        }
        
    }
}
