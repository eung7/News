//
//  WebService.swift
//  News
//
//  Created by 김응철 on 2022/05/20.
//

import Foundation

class WebSerivce {
    func getArticles(url: URL, completion: @escaping ([Any]?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
            }
        }
        .resume()
    }
}
