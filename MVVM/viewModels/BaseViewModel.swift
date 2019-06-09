//
//  BaseViewModel.swift
//  MVVM
//
//  Created by Mohamed Nagi on 6/3/19.
//  Copyright © 2019 Mohamed Nagi. All rights reserved.
//

import UIKit

class BaseViewModel {
    var  view :BaseView
    init(v:BaseView) {
        view = v
    }
}
