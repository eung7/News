//
//  ArticleViewModel.swift
//  News
//
//  Created by 김응철 on 2022/05/20.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

/// extension을 쓴 이유: 한 카테고리의 코드만 넣고 싶을 때
extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
