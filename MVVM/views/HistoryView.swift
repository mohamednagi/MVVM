//
//  HistoryView.swift
//  MVVM
//
//  Created by Mohamed Nagi on 6/3/19.
//  Copyright © 2019 Mohamed Nagi. All rights reserved.
//

import UIKit

class HistoryView: UIViewController ,BaseView{

    var viewModel :HistoryViewModel!
    
    @IBOutlet weak var historyText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = HistoryViewModel(v: self)
        viewModel.getHistoryData()
    }
    
    func onDataRecevied(data: AnyObject) {
        guard let returnedData = data as? [HistoryModel] else {return}
            self.historyText.text = returnedData[0].title
    }

}
