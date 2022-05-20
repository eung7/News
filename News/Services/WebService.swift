//
//  WebService.swift
//  News
//
//  Created by 김응철 on 2022/05/20.
//

import Foundation

class WebSerivce {
    static func getArticles(url: URL, completion: @escaping ([Article]?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }
        .resume()
    }
}
