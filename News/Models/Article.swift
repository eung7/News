//
//  Article.swift
//  News
//
//  Created by 김응철 on 2022/05/20.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}

