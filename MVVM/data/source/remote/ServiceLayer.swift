//
//  ServiceLayer.swift
//  MVVM
//
//  Created by Mohamed Nagi on 6/3/19.
//  Copyright © 2019 Mohamed Nagi. All rights reserved.
//

import UIKit

class ServiceLayer: NSObject {

    func getHistory(completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
//        var oneMovie = [HistoryModel]()
        let topRatedMoviesUrlString = "https://api.themoviedb.org/3/movie/top_rated?api_key=dbbd139cd20c1999dffaa2eed72d5a86"
        let topRatedMoviesUrl = URL(string: topRatedMoviesUrlString)
        URLSession.shared.dataTask(with: topRatedMoviesUrl!, completionHandler: completion).resume()
        
    }
}
