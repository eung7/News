//
//  NewsListTableViewController.swift
//  News
//
//  Created by 김응철 on 2022/05/20.
//

import UIKit

class NewsListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2022-04-20&sortBy=publishedAt&apiKey=6f5c1f24201d4a6681ef1da3e41810e9")!
        
        WebSerivce().getArticles(url: url) { _ in
        }
    }
}

